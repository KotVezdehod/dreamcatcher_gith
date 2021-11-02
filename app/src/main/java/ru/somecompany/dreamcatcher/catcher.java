package ru.somecompany.dreamcatcher;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Build;
import android.provider.Settings;
import com.google.gson.Gson;
import com.google.zxing.BinaryBitmap;
import com.google.zxing.LuminanceSource;
import com.google.zxing.MultiFormatReader;
import com.google.zxing.NotFoundException;
import com.google.zxing.RGBLuminanceSource;
import com.google.zxing.Result;
import com.google.zxing.common.HybridBinarizer;

import org.json.JSONArray;
import org.json.JSONObject;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import fi.iki.elonen.NanoHTTPD;


public class catcher implements Runnable {

    //============================ SERVICE
    // in C/C++ code the function will have name Java_ru_somcompany_dreamcatcher_catcher_OnBroadcastCatched
    static native void OnBroadcastCatched(long pObject, String str_out);

    static native void OnHttpServerServ(long pObject, String str_url);

    private long m_V8Object; // 1C application context
    private Activity m_Activity; // custom activity of 1C:Enterprise
    private BroadcastReceiver m_Receiver;
    private String bk_filter;
    JSONArray bk_filters;
    MyHTTPD http_server;
    int HTT_PORT = 8765;
    Gson gson = new Gson();
//    String mPhotoDisplayName;
//    Uri mImageUri;

    private int REQUEST_CODE_CAMERA_ACTIVIVTY = 201;
    private int REQUEST_CODE_CAMERA_PERMISSION = 100;
    private int REQUEST_CODE_WRITE_EXT_STORAGE_PERMISSION = 101;

    public catcher(Activity activity, long v8Object) {
        m_Activity = activity;
        m_V8Object = v8Object;

    }

    public void run() {
        System.loadLibrary("ru_somecompany_dreamcatcher");
    }

    public void show() {
        m_Activity.runOnUiThread(this);
    }

    class cl_bk_result {
        String action = "";
        String key = "";
        String Data = "";
    }

    Map<Long, String> http_requests = new HashMap<Long, String>();

    //============================ НАГРУЗКА

    //================ GetID
    public String GetID() {
        return Settings.Secure.getString(m_Activity.getContentResolver(),
                Settings.Secure.ANDROID_ID);
    }

    //================ GetOSAbis
    public String GetOSAbis() {
        return Build.CPU_ABI;
    }

    //================ Broadcasts
    public void start(String in_bk_filters) {
        String in_str_intent_filters = in_bk_filters;
        bk_filter = in_str_intent_filters;
        IntentFilter filter = new IntentFilter();

        try {
            bk_filters = new JSONArray(bk_filter);
            String str_current_filter = "";
            JSONObject jo;
            for (int i = 0; i < bk_filters.length(); i++) {
                jo = (JSONObject) bk_filters.getJSONObject(i);
                str_current_filter = jo.getString("filter");
                filter.addAction(str_current_filter);
            }

        } catch (Exception ex) {
            return;
        }

        if (m_Receiver == null) {
            m_Receiver = new BroadcastReceiver() {
                @Override
                public void onReceive(Context context, Intent intent) {
                    String action = intent.getAction();
                    String intent_action;
                    String extra = "";
                    String extra_key = "";
                    byte[] b0;

                    for (int i = 0; i < bk_filters.length(); i++) {
                        try {

                            intent_action = bk_filters.getJSONObject(i).getString("filter");
                            if (intent_action.equals(action)) {
                                extra_key = bk_filters.getJSONObject(i).getString("extra");
                                if (extra_key != "") {
                                    extra = intent.getStringExtra(extra_key);
                                    if (extra == null) {
                                        b0 = intent.getByteArrayExtra(extra_key);
                                        if (b0 != null) {
                                            extra = new String(b0);
                                        }
                                    }
                                    if (extra == null || extra == "") {
                                        extra = "Доп. данные с ключом: '" + extra_key + "' не содержат данных!";
                                    }

                                    cl_bk_result loc_ob = new cl_bk_result();
                                    loc_ob.action = intent_action;
                                    loc_ob.key = extra_key;
                                    loc_ob.Data = extra;

                                    OnBroadcastCatched(m_V8Object, gson.toJson(loc_ob));
                                } else {
                                    OnBroadcastCatched(m_V8Object, "ok_en");
                                }
                                break;
                            }
                        } catch (Exception ex) {
                        }
                    }
                }
            };

            m_Activity.registerReceiver(m_Receiver, filter);
        }
    }

    public void stop() {
        if (m_Receiver != null) {
            m_Activity.unregisterReceiver(m_Receiver);
            m_Receiver = null;
        }
    }

    //================ HTTP
    public String StartHTTP(int in_port) {
        HTT_PORT = in_port;
        if (http_server != null) {
            try {
                http_server.closeAllConnections();
                http_server.stop();
                http_server = null;
            } catch (Exception e) {
                return e.getMessage();
            }
        }

        try {
            http_server = new MyHTTPD();
        } catch (IOException e) {
            return e.getMessage();
        }

        try {
            http_server.start();
        } catch (Exception e) {
            return e.getMessage();
        }
        return "ok_en";

    }

    public String StopHTTP() {

        if (http_server != null) {
            try {
                http_server.closeAllConnections();
                http_server.stop();
                http_server = null;
            } catch (Exception e) {
                return e.getMessage();
            }
        }

        return "ok_en";
    }

    public void handleAnswerFrom1c(String answer) {
        http_request_transport_structure ret = new http_request_transport_structure();

        try {
            JSONObject jo = new JSONObject(answer);
            http_requests.put(jo.getLong("req_id"), jo.getString("data"));
            return;
        } catch (Exception ex) {
        }

        return;
    }

    public class MyHTTPD extends NanoHTTPD {
        //public static final int PORT = 8765;

        public MyHTTPD() throws IOException {
            super(HTT_PORT);
        }

        @Override
        public Response serve(IHTTPSession session) {

            Map<String, String> files = new HashMap<String, String>();
            Method method = session.getMethod();
            String res_from_1c = "";
            long thr_id = Thread.currentThread().getId();
            somcompany_http_request_result cc_http_req_result = new somcompany_http_request_result();

            if (Method.PUT.equals(method) || Method.POST.equals(method)) {
                try {
                    session.parseBody(files);
                } catch (IOException ioe) {
                    return newFixedLengthResponse(Response.Status.INTERNAL_ERROR, MIME_PLAINTEXT, "SERVER INTERNAL ERROR: IOException: " + ioe.getMessage());
                } catch (ResponseException re) {
                    return newFixedLengthResponse(re.getStatus(), MIME_PLAINTEXT, "SERVER INTERNAL ERROR: " + re.getMessage() + " (Ошибка при разборе тела запроса. Там должен быть Plain Text.)");
                }
            }

            for (Map.Entry<String, String> entry : files.entrySet()) {
                http_requests.put(thr_id, "");
                http_request_transport_structure transport = new http_request_transport_structure();
                transport.req_id = thr_id;
                transport.data = entry.getValue();
                transport.uri = session.getUri();
                OnHttpServerServ(m_V8Object, gson.toJson(transport));


                for (int i = 0; i < 120; i++)            //даем 1с 60 секунд на обработку запроса. Если 1с не откликнулась, то что-то пошло не так и дальше ждать смысла нет.
                {
                    res_from_1c = http_requests.get(thr_id);
                    if (res_from_1c != "") {
                        cc_http_req_result.err = false;
                        cc_http_req_result.err_msg = "";
                        cc_http_req_result.data = res_from_1c;

                        http_requests.remove(thr_id);       //Перед отправкой ответа удаляем идентификатор запроса из списка.

                        return newFixedLengthResponse(gson.toJson(cc_http_req_result));
                    }

                    try {
                        Thread.sleep(500);
                    } catch (InterruptedException e) {
                        break;
                    }
                }

                cc_http_req_result.err = true;
                cc_http_req_result.err_msg = "SERVER INTERNAL ERROR: превышено ожидаемое время обработки запроса на стороне 1с.";
                cc_http_req_result.data = "";

                http_requests.remove(thr_id);       //Перед отправкой ответа удаляем идентификатор запроса из списка.
                return newFixedLengthResponse(Response.Status.INTERNAL_ERROR, MIME_PLAINTEXT, gson.toJson(cc_http_req_result));

                /* // get the POST body
                String postBody = session.getQueryParameterString();
                // or you can access the POST request's parameters
                String postParameter = session.getParms().get("parameter");
                return new Response(postBody); // Or postParameter.*/

            }
            ;

            return null;
        }

    }

    class somcompany_http_request_result {
        boolean err = false;
        String err_msg = "";
        String data = "";
    }

    class http_request_transport_structure {
        long req_id;
        String data = "";
        String uri = "";
    }

    //================ IMAGES
    public String RefactorImage(String in_fn, String out_fn, int X, int Y, int Q) {


        InputStream fis = null;
        FileOutputStream fos = null;
        Bitmap bitmap_inp = null;

        try {
            fis = m_Activity.getContentResolver().openInputStream(Uri.parse(in_fn));
        } catch (Exception e) {
            return "Не удалось открыть поток входного файла: " + e.getMessage();
        }

        try {
            fos = new FileOutputStream(out_fn);
        } catch (Exception e) {

            try {
                fis.close();
            } catch (Exception e0) {
            }
            return "Не удалось открыть поток выходного файла: " + e.getMessage();
        }

        try {
            bitmap_inp = BitmapFactory.decodeStream(fis);
        } catch (Exception ex) {
            CloseStreams(fis, fos);
            return "Исключение при чтении в bitmap входного файла: " + ex.getMessage();
        }


        if (fos == null) {
            CloseStreams(fis, fos);
            return "Не удалось открыть поток выходного файла";
        }
        if (bitmap_inp == null) {
            CloseStreams(fis, fos);
            return "Не удалось прочитать входной файл в bitmap";
        }

        try {
            Bitmap bitmap_outp = Bitmap.createScaledBitmap(bitmap_inp, X, Y, false);
            bitmap_outp.compress(Bitmap.CompressFormat.JPEG, Q, fos);
            fos.flush();
        } catch (Exception e) {
            CloseStreams(fis, fos);
            return "Исключение при работе с bitmap: " + e.getMessage();
        }

        CloseStreams(fis, fos);

        return "ok_en";
    }
    void CloseStreams(InputStream fis, FileOutputStream fos) {
        try {
            fis.close();
        } catch (Exception e) {
        }
        try {
            fos.close();
        } catch (Exception e) {
        }
    }
    public String ClearGalery()
    {


        return "ok_en";
    }

    //================ ZXING
    public String DecodeBarcode(String in_fn, byte[] in_bytes)
    {
        String out_bc = "";
        Bitmap bitmap=null;

        if (in_fn!=null)
        {
            InputStream fis;
            try {
                fis = m_Activity.getContentResolver().openInputStream(Uri.parse(in_fn));
            } catch (Exception e) {
                return gson.toJson(new somcompany_barcode_decoding_result(false, "Не удалось открыть поток входного файла: " + e.getMessage(), ""));
            }
            bitmap = BitmapFactory.decodeStream(fis);
        }
        else
        {
            if (in_bytes!=null)
            {
                bitmap = BitmapFactory.decodeByteArray(in_bytes, 0, in_bytes.length);
            }
        }

        if (bitmap == null)
        {
            return gson.toJson(new somcompany_barcode_decoding_result(false, "Не удалось прочитать файл как изображение", ""));
        }

        int width = bitmap.getWidth(), height = bitmap.getHeight();
        int[] pixels = new int[width * height];
        bitmap.getPixels(pixels, 0, width, 0, 0, width, height);
        bitmap.recycle();
        bitmap = null;
        LuminanceSource source = new RGBLuminanceSource(width, height, pixels);
        BinaryBitmap bin_bitmap = new BinaryBitmap(new HybridBinarizer(source));
        MultiFormatReader mfr = new MultiFormatReader();
        try {
            Result rawResult = mfr.decode(bin_bitmap);
            if (rawResult!= null)
            {
                out_bc = rawResult.getText();
            }

        } catch (NotFoundException e) {
            return gson.toJson(new somcompany_barcode_decoding_result(false, "Не удалось распознать штрихкод (" + e.getMessage() + ")", ""));
        }

        return gson.toJson(new somcompany_barcode_decoding_result(true, "", out_bc));
    }

    class somcompany_barcode_decoding_result {
        public somcompany_barcode_decoding_result(boolean b, String s, String o)
        {
            status = b;
            description = s;
            data = o;
        }

        boolean status = false;
        String description = "";
        String data = "";
    }
}