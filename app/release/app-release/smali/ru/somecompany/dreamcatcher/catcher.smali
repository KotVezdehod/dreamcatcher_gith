.class public Lru/somecompany/dreamcatcher/catcher;
.super Ljava/lang/Object;
.source "catcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/somecompany/dreamcatcher/catcher$netLocListener;,
        Lru/somecompany/dreamcatcher/catcher$gpsLocListener;,
        Lru/somecompany/dreamcatcher/catcher$ProvidersStatus;,
        Lru/somecompany/dreamcatcher/catcher$LocationData;,
        Lru/somecompany/dreamcatcher/catcher$http_request_transport_structure;,
        Lru/somecompany/dreamcatcher/catcher$somecompany_http_request_result;,
        Lru/somecompany/dreamcatcher/catcher$MyHTTPD;,
        Lru/somecompany/dreamcatcher/catcher$ReturnResult;,
        Lru/somecompany/dreamcatcher/catcher$cl_bk_result;
    }
.end annotation


# instance fields
.field HTT_PORT:I

.field private PostLocationTo1C:Z

.field private bk_filter:Ljava/lang/String;

.field bk_filters:Lorg/json/JSONArray;

.field gpsAccuracy:D

.field gpsAltitude:D

.field gpsLatitude:D

.field gpsLongitude:D

.field gpsSpeed:D

.field private gps_loc_listener:Lru/somecompany/dreamcatcher/catcher$gpsLocListener;

.field gson:Lcom/google/gson/Gson;

.field http_requests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field http_server:Lru/somecompany/dreamcatcher/catcher$MyHTTPD;

.field private loc_manager:Landroid/location/LocationManager;

.field mHandler:Ljava/util/logging/Handler;

.field private m_Activity:Landroid/app/Activity;

.field private m_Receiver:Landroid/content/BroadcastReceiver;

.field private m_V8Object:J

.field netAccuracy:D

.field netAltitude:D

.field netLatitude:D

.field netLongitude:D

.field netSpeed:D

.field private net_loc_listener:Lru/somecompany/dreamcatcher/catcher$netLocListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;J)V
    .locals 2

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x223d

    .line 74
    iput v0, p0, Lru/somecompany/dreamcatcher/catcher;->HTT_PORT:I

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lru/somecompany/dreamcatcher/catcher;->gps_loc_listener:Lru/somecompany/dreamcatcher/catcher$gpsLocListener;

    .line 76
    iput-object v0, p0, Lru/somecompany/dreamcatcher/catcher;->net_loc_listener:Lru/somecompany/dreamcatcher/catcher$netLocListener;

    .line 77
    iput-object v0, p0, Lru/somecompany/dreamcatcher/catcher;->loc_manager:Landroid/location/LocationManager;

    const/4 v1, 0x0

    .line 78
    iput-boolean v1, p0, Lru/somecompany/dreamcatcher/catcher;->PostLocationTo1C:Z

    .line 79
    iput-object v0, p0, Lru/somecompany/dreamcatcher/catcher;->mHandler:Ljava/util/logging/Handler;

    const-wide/16 v0, 0x0

    .line 81
    iput-wide v0, p0, Lru/somecompany/dreamcatcher/catcher;->gpsLatitude:D

    .line 82
    iput-wide v0, p0, Lru/somecompany/dreamcatcher/catcher;->gpsLongitude:D

    .line 83
    iput-wide v0, p0, Lru/somecompany/dreamcatcher/catcher;->gpsAltitude:D

    .line 84
    iput-wide v0, p0, Lru/somecompany/dreamcatcher/catcher;->gpsAccuracy:D

    .line 85
    iput-wide v0, p0, Lru/somecompany/dreamcatcher/catcher;->gpsSpeed:D

    .line 86
    iput-wide v0, p0, Lru/somecompany/dreamcatcher/catcher;->netLatitude:D

    .line 87
    iput-wide v0, p0, Lru/somecompany/dreamcatcher/catcher;->netLongitude:D

    .line 88
    iput-wide v0, p0, Lru/somecompany/dreamcatcher/catcher;->netAltitude:D

    .line 89
    iput-wide v0, p0, Lru/somecompany/dreamcatcher/catcher;->netAccuracy:D

    .line 90
    iput-wide v0, p0, Lru/somecompany/dreamcatcher/catcher;->netSpeed:D

    .line 92
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lru/somecompany/dreamcatcher/catcher;->gson:Lcom/google/gson/Gson;

    .line 117
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/somecompany/dreamcatcher/catcher;->http_requests:Ljava/util/Map;

    .line 98
    iput-object p1, p0, Lru/somecompany/dreamcatcher/catcher;->m_Activity:Landroid/app/Activity;

    .line 99
    iput-wide p2, p0, Lru/somecompany/dreamcatcher/catcher;->m_V8Object:J

    return-void
.end method

.method static native OnBroadcastCatched(JLjava/lang/String;)V
.end method

.method static native OnHttpServerServ(JLjava/lang/String;)V
.end method

.method static native OnLocationReturned(JLjava/lang/String;)V
.end method

.method static synthetic access$000(Lru/somecompany/dreamcatcher/catcher;)J
    .locals 2

    .line 58
    iget-wide v0, p0, Lru/somecompany/dreamcatcher/catcher;->m_V8Object:J

    return-wide v0
.end method

.method static synthetic access$100(Lru/somecompany/dreamcatcher/catcher;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lru/somecompany/dreamcatcher/catcher;->PostLocationTo1C:Z

    return p0
.end method

.method static synthetic access$200(Lru/somecompany/dreamcatcher/catcher;)Lru/somecompany/dreamcatcher/catcher$gpsLocListener;
    .locals 0

    .line 58
    iget-object p0, p0, Lru/somecompany/dreamcatcher/catcher;->gps_loc_listener:Lru/somecompany/dreamcatcher/catcher$gpsLocListener;

    return-object p0
.end method

.method static synthetic access$300(Lru/somecompany/dreamcatcher/catcher;)Landroid/location/LocationManager;
    .locals 0

    .line 58
    iget-object p0, p0, Lru/somecompany/dreamcatcher/catcher;->loc_manager:Landroid/location/LocationManager;

    return-object p0
.end method

.method static synthetic access$400(Lru/somecompany/dreamcatcher/catcher;)Lru/somecompany/dreamcatcher/catcher$netLocListener;
    .locals 0

    .line 58
    iget-object p0, p0, Lru/somecompany/dreamcatcher/catcher;->net_loc_listener:Lru/somecompany/dreamcatcher/catcher$netLocListener;

    return-object p0
.end method


# virtual methods
.method public ClearGalery()Ljava/lang/String;
    .locals 1

    const-string v0, "ok_en"

    return-object v0
.end method

.method CloseStreams(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    .locals 0

    .line 473
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    :catch_0
    :try_start_1
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

.method public DecodeBarcode(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 11

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 496
    :try_start_0
    iget-object p2, p0, Lru/somecompany/dreamcatcher/catcher;->m_Activity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 500
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 498
    iget-object p2, p0, Lru/somecompany/dreamcatcher/catcher;->gson:Lcom/google/gson/Gson;

    new-instance v7, Lru/somecompany/dreamcatcher/catcher$ReturnResult;

    const/4 v3, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u043e\u0442\u043a\u0440\u044b\u0442\u044c \u043f\u043e\u0442\u043e\u043a \u0432\u0445\u043e\u0434\u043d\u043e\u0433\u043e \u0444\u0430\u0439\u043b\u0430: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v6, v0, [Ljava/lang/Object;

    const-string v5, ""

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lru/somecompany/dreamcatcher/catcher$ReturnResult;-><init>(Lru/somecompany/dreamcatcher/catcher;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2, v7}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    .line 503
    array-length p1, p2

    invoke-static {p2, v0, p1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    .line 508
    iget-object p1, p0, Lru/somecompany/dreamcatcher/catcher;->gson:Lcom/google/gson/Gson;

    new-instance p2, Lru/somecompany/dreamcatcher/catcher$ReturnResult;

    const/4 v3, 0x0

    new-array v6, v0, [Ljava/lang/Object;

    const-string v4, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u043f\u0440\u043e\u0447\u0438\u0442\u0430\u0442\u044c \u0444\u0430\u0439\u043b \u043a\u0430\u043a \u0438\u0437\u043e\u0431\u0440\u0430\u0436\u0435\u043d\u0438\u0435"

    const-string v5, ""

    move-object v1, p2

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lru/somecompany/dreamcatcher/catcher$ReturnResult;-><init>(Lru/somecompany/dreamcatcher/catcher;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 511
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int v1, p2, v9

    .line 512
    new-array v10, v1, [I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, v10

    move v4, p2

    move v7, p2

    move v8, v9

    .line 513
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 514
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 516
    new-instance p1, Lcom/google/zxing/RGBLuminanceSource;

    invoke-direct {p1, p2, v9, v10}, Lcom/google/zxing/RGBLuminanceSource;-><init>(II[I)V

    .line 517
    new-instance p2, Lcom/google/zxing/BinaryBitmap;

    new-instance v1, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v1, p1}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {p2, v1}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    .line 518
    new-instance p1, Lcom/google/zxing/MultiFormatReader;

    invoke-direct {p1}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    .line 520
    :try_start_1
    invoke-virtual {p1, p2}, Lcom/google/zxing/MultiFormatReader;->decode(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 522
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Lcom/google/zxing/NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :cond_3
    const-string p1, ""

    :goto_1
    move-object v5, p1

    .line 529
    iget-object p1, p0, Lru/somecompany/dreamcatcher/catcher;->gson:Lcom/google/gson/Gson;

    new-instance p2, Lru/somecompany/dreamcatcher/catcher$ReturnResult;

    const/4 v3, 0x1

    new-array v6, v0, [Ljava/lang/Object;

    const-string v4, ""

    move-object v1, p2

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lru/somecompany/dreamcatcher/catcher$ReturnResult;-><init>(Lru/somecompany/dreamcatcher/catcher;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception p1

    .line 526
    iget-object p2, p0, Lru/somecompany/dreamcatcher/catcher;->gson:Lcom/google/gson/Gson;

    new-instance v7, Lru/somecompany/dreamcatcher/catcher$ReturnResult;

    const/4 v3, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u0440\u0430\u0441\u043f\u043e\u0437\u043d\u0430\u0442\u044c \u0448\u0442\u0440\u0438\u0445\u043a\u043e\u0434 ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/zxing/NotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v6, v0, [Ljava/lang/Object;

    const-string v5, ""

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lru/somecompany/dreamcatcher/catcher$ReturnResult;-><init>(Lru/somecompany/dreamcatcher/catcher;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2, v7}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public GetID()Ljava/lang/String;
    .locals 2

    .line 145
    iget-object v0, p0, Lru/somecompany/dreamcatcher/catcher;->m_Activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetLocationNow(ZZ)Ljava/lang/String;
    .locals 0

    .line 556
    invoke-virtual {p0, p1, p2}, Lru/somecompany/dreamcatcher/catcher;->StartLocationListener(ZZ)Lru/somecompany/dreamcatcher/catcher$ReturnResult;

    move-result-object p1

    .line 558
    iget-object p2, p0, Lru/somecompany/dreamcatcher/catcher;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public GetOSAbis()Ljava/lang/String;
    .locals 1

    .line 151
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    return-object v0
.end method

.method public QRCodeGen(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7

    .line 733
    invoke-static {p1}, Lnet/glxn/qrgen/android/QRCode;->from(Ljava/lang/String;)Lnet/glxn/qrgen/android/QRCode;

    move-result-object p1

    sget-object v0, Lnet/glxn/qrgen/core/image/ImageType;->PNG:Lnet/glxn/qrgen/core/image/ImageType;

    invoke-virtual {p1, v0}, Lnet/glxn/qrgen/android/QRCode;->to(Lnet/glxn/qrgen/core/image/ImageType;)Lnet/glxn/qrgen/android/QRCode;

    move-result-object p1

    invoke-virtual {p1, p2, p2}, Lnet/glxn/qrgen/android/QRCode;->withSize(II)Lnet/glxn/qrgen/android/QRCode;

    move-result-object p1

    invoke-virtual {p1}, Lnet/glxn/qrgen/android/QRCode;->stream()Ljava/io/ByteArrayOutputStream;

    move-result-object p1

    .line 734
    iget-object p2, p0, Lru/somecompany/dreamcatcher/catcher;->gson:Lcom/google/gson/Gson;

    new-instance v6, Lru/somecompany/dreamcatcher/catcher$ReturnResult;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v2, 0x1

    const-string v3, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lru/somecompany/dreamcatcher/catcher$ReturnResult;-><init>(Lru/somecompany/dreamcatcher/catcher;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2, v6}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public RefactorImage(Ljava/lang/String;Ljava/lang/String;III)Ljava/lang/String;
    .locals 2

    .line 424
    :try_start_0
    iget-object v0, p0, Lru/somecompany/dreamcatcher/catcher;->m_Activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 430
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 441
    :try_start_2
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-nez p2, :cond_0

    .line 453
    invoke-virtual {p0, p1, v0}, Lru/somecompany/dreamcatcher/catcher;->CloseStreams(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V

    const-string p1, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u043f\u0440\u043e\u0447\u0438\u0442\u0430\u0442\u044c \u0432\u0445\u043e\u0434\u043d\u043e\u0439 \u0444\u0430\u0439\u043b \u0432 bitmap"

    return-object p1

    :cond_0
    const/4 v1, 0x0

    .line 458
    :try_start_3
    invoke-static {p2, p3, p4, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 459
    sget-object p3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p2, p3, p5, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 460
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 466
    invoke-virtual {p0, p1, v0}, Lru/somecompany/dreamcatcher/catcher;->CloseStreams(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V

    const-string p1, "ok_en"

    return-object p1

    :catch_0
    move-exception p2

    .line 462
    invoke-virtual {p0, p1, v0}, Lru/somecompany/dreamcatcher/catcher;->CloseStreams(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V

    .line 463
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\u0418\u0441\u043a\u043b\u044e\u0447\u0435\u043d\u0438\u0435 \u043f\u0440\u0438 \u0440\u0430\u0431\u043e\u0442\u0435 \u0441 bitmap: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception p2

    .line 443
    invoke-virtual {p0, p1, v0}, Lru/somecompany/dreamcatcher/catcher;->CloseStreams(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V

    .line 444
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\u0418\u0441\u043a\u043b\u044e\u0447\u0435\u043d\u0438\u0435 \u043f\u0440\u0438 \u0447\u0442\u0435\u043d\u0438\u0438 \u0432 bitmap \u0432\u0445\u043e\u0434\u043d\u043e\u0433\u043e \u0444\u0430\u0439\u043b\u0430: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_2
    move-exception p2

    .line 434
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 437
    :catch_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u043e\u0442\u043a\u0440\u044b\u0442\u044c \u043f\u043e\u0442\u043e\u043a \u0432\u044b\u0445\u043e\u0434\u043d\u043e\u0433\u043e \u0444\u0430\u0439\u043b\u0430: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_4
    move-exception p1

    .line 426
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u043e\u0442\u043a\u0440\u044b\u0442\u044c \u043f\u043e\u0442\u043e\u043a \u0432\u0445\u043e\u0434\u043d\u043e\u0433\u043e \u0444\u0430\u0439\u043b\u0430: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public StartHTTP(I)Ljava/lang/String;
    .locals 0

    .line 232
    iput p1, p0, Lru/somecompany/dreamcatcher/catcher;->HTT_PORT:I

    .line 233
    iget-object p1, p0, Lru/somecompany/dreamcatcher/catcher;->http_server:Lru/somecompany/dreamcatcher/catcher$MyHTTPD;

    if-eqz p1, :cond_0

    .line 235
    :try_start_0
    invoke-virtual {p1}, Lru/somecompany/dreamcatcher/catcher$MyHTTPD;->closeAllConnections()V

    .line 236
    iget-object p1, p0, Lru/somecompany/dreamcatcher/catcher;->http_server:Lru/somecompany/dreamcatcher/catcher$MyHTTPD;

    invoke-virtual {p1}, Lru/somecompany/dreamcatcher/catcher$MyHTTPD;->stop()V

    const/4 p1, 0x0

    .line 237
    iput-object p1, p0, Lru/somecompany/dreamcatcher/catcher;->http_server:Lru/somecompany/dreamcatcher/catcher$MyHTTPD;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 239
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 244
    :cond_0
    :goto_0
    :try_start_1
    new-instance p1, Lru/somecompany/dreamcatcher/catcher$MyHTTPD;

    invoke-direct {p1, p0}, Lru/somecompany/dreamcatcher/catcher$MyHTTPD;-><init>(Lru/somecompany/dreamcatcher/catcher;)V

    iput-object p1, p0, Lru/somecompany/dreamcatcher/catcher;->http_server:Lru/somecompany/dreamcatcher/catcher$MyHTTPD;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 250
    :try_start_2
    invoke-virtual {p1}, Lru/somecompany/dreamcatcher/catcher$MyHTTPD;->start()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-string p1, "ok_en"

    return-object p1

    :catch_1
    move-exception p1

    .line 252
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_2
    move-exception p1

    .line 246
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public StartLocationListener(ZZ)Lru/somecompany/dreamcatcher/catcher$ReturnResult;
    .locals 13

    .line 586
    iget-object v0, p0, Lru/somecompany/dreamcatcher/catcher;->m_Activity:Landroid/app/Activity;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/somecompany/dreamcatcher/catcher;->m_Activity:Landroid/app/Activity;

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v3}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 587
    iget-object p1, p0, Lru/somecompany/dreamcatcher/catcher;->m_Activity:Landroid/app/Activity;

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x64

    invoke-static {p1, p2, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 588
    new-instance p1, Lru/somecompany/dreamcatcher/catcher$ReturnResult;

    const/4 v5, 0x0

    new-array v8, v2, [Ljava/lang/Object;

    const-string v6, "\u041d\u0435\u0442 \u043f\u0440\u0430\u0432: \'android.permission.ACCESS_FINE_LOCATION\', android.permission.ACCESS_COARSE_LOCATION"

    const-string v7, ""

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lru/somecompany/dreamcatcher/catcher$ReturnResult;-><init>(Lru/somecompany/dreamcatcher/catcher;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    .line 591
    :cond_0
    iget-object v0, p0, Lru/somecompany/dreamcatcher/catcher;->loc_manager:Landroid/location/LocationManager;

    if-nez v0, :cond_1

    .line 593
    iget-object v0, p0, Lru/somecompany/dreamcatcher/catcher;->m_Activity:Landroid/app/Activity;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lru/somecompany/dreamcatcher/catcher;->loc_manager:Landroid/location/LocationManager;

    :cond_1
    const-string v0, "Hermes"

    if-eqz p1, :cond_3

    .line 603
    iget-object v1, p0, Lru/somecompany/dreamcatcher/catcher;->loc_manager:Landroid/location/LocationManager;

    const-string v3, "gps"

    invoke-virtual {v1, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 607
    iget-object v4, p0, Lru/somecompany/dreamcatcher/catcher;->gps_loc_listener:Lru/somecompany/dreamcatcher/catcher$gpsLocListener;

    if-nez v4, :cond_2

    .line 608
    new-instance v4, Lru/somecompany/dreamcatcher/catcher$gpsLocListener;

    invoke-direct {v4, p0}, Lru/somecompany/dreamcatcher/catcher$gpsLocListener;-><init>(Lru/somecompany/dreamcatcher/catcher;)V

    iput-object v4, p0, Lru/somecompany/dreamcatcher/catcher;->gps_loc_listener:Lru/somecompany/dreamcatcher/catcher$gpsLocListener;

    .line 610
    :cond_2
    iget-object v4, p0, Lru/somecompany/dreamcatcher/catcher;->loc_manager:Landroid/location/LocationManager;

    if-eqz v4, :cond_4

    .line 611
    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    iget-object v5, p0, Lru/somecompany/dreamcatcher/catcher;->loc_manager:Landroid/location/LocationManager;

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    iget-object v10, p0, Lru/somecompany/dreamcatcher/catcher;->gps_loc_listener:Lru/somecompany/dreamcatcher/catcher$gpsLocListener;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v11

    const-string v6, "gps"

    invoke-virtual/range {v5 .. v11}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_0
    if-eqz p2, :cond_6

    .line 620
    iget-object v3, p0, Lru/somecompany/dreamcatcher/catcher;->loc_manager:Landroid/location/LocationManager;

    const-string v4, "network"

    invoke-virtual {v3, v4}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 624
    iget-object v5, p0, Lru/somecompany/dreamcatcher/catcher;->net_loc_listener:Lru/somecompany/dreamcatcher/catcher$netLocListener;

    if-nez v5, :cond_5

    .line 625
    new-instance v5, Lru/somecompany/dreamcatcher/catcher$netLocListener;

    invoke-direct {v5, p0}, Lru/somecompany/dreamcatcher/catcher$netLocListener;-><init>(Lru/somecompany/dreamcatcher/catcher;)V

    iput-object v5, p0, Lru/somecompany/dreamcatcher/catcher;->net_loc_listener:Lru/somecompany/dreamcatcher/catcher$netLocListener;

    .line 628
    :cond_5
    iget-object v5, p0, Lru/somecompany/dreamcatcher/catcher;->loc_manager:Landroid/location/LocationManager;

    if-eqz v5, :cond_7

    .line 629
    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    iget-object v6, p0, Lru/somecompany/dreamcatcher/catcher;->loc_manager:Landroid/location/LocationManager;

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    iget-object v11, p0, Lru/somecompany/dreamcatcher/catcher;->net_loc_listener:Lru/somecompany/dreamcatcher/catcher$netLocListener;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v12

    const-string v7, "network"

    invoke-virtual/range {v6 .. v12}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    goto :goto_1

    :cond_6
    const/4 v3, 0x0

    .line 635
    :cond_7
    :goto_1
    new-instance v0, Lru/somecompany/dreamcatcher/catcher$ReturnResult;

    const/4 v4, 0x1

    if-eqz p1, :cond_8

    if-nez v1, :cond_9

    :cond_8
    if-eqz p2, :cond_a

    if-eqz v3, :cond_a

    :cond_9
    const/4 v6, 0x1

    goto :goto_2

    :cond_a
    const/4 v6, 0x0

    :goto_2
    new-array v9, v4, [Ljava/lang/Object;

    new-instance v5, Lru/somecompany/dreamcatcher/catcher$ProvidersStatus;

    if-eqz p1, :cond_b

    if-eqz v1, :cond_b

    const/4 p1, 0x1

    goto :goto_3

    :cond_b
    const/4 p1, 0x0

    :goto_3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p2, :cond_c

    if-eqz v3, :cond_c

    goto :goto_4

    :cond_c
    const/4 v4, 0x0

    :goto_4
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {v5, p0, p1, p2}, Lru/somecompany/dreamcatcher/catcher$ProvidersStatus;-><init>(Lru/somecompany/dreamcatcher/catcher;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    aput-object v5, v9, v2

    const-string v7, ""

    const-string v8, ""

    move-object v4, v0

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lru/somecompany/dreamcatcher/catcher$ReturnResult;-><init>(Lru/somecompany/dreamcatcher/catcher;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public StartLocationListening(ZZ)Ljava/lang/String;
    .locals 0

    .line 562
    invoke-virtual {p0, p1, p2}, Lru/somecompany/dreamcatcher/catcher;->StartLocationListener(ZZ)Lru/somecompany/dreamcatcher/catcher$ReturnResult;

    move-result-object p1

    const/4 p2, 0x1

    .line 563
    iput-boolean p2, p0, Lru/somecompany/dreamcatcher/catcher;->PostLocationTo1C:Z

    .line 564
    iget-object p2, p0, Lru/somecompany/dreamcatcher/catcher;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public StopHTTP()Ljava/lang/String;
    .locals 1

    .line 260
    iget-object v0, p0, Lru/somecompany/dreamcatcher/catcher;->http_server:Lru/somecompany/dreamcatcher/catcher$MyHTTPD;

    if-eqz v0, :cond_0

    .line 262
    :try_start_0
    invoke-virtual {v0}, Lru/somecompany/dreamcatcher/catcher$MyHTTPD;->closeAllConnections()V

    .line 263
    iget-object v0, p0, Lru/somecompany/dreamcatcher/catcher;->http_server:Lru/somecompany/dreamcatcher/catcher$MyHTTPD;

    invoke-virtual {v0}, Lru/somecompany/dreamcatcher/catcher$MyHTTPD;->stop()V

    const/4 v0, 0x0

    .line 264
    iput-object v0, p0, Lru/somecompany/dreamcatcher/catcher;->http_server:Lru/somecompany/dreamcatcher/catcher$MyHTTPD;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 266
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    :goto_0
    const-string v0, "ok_en"

    return-object v0
.end method

.method public StopLocationFlow()V
    .locals 2

    const/4 v0, 0x0

    .line 569
    iput-boolean v0, p0, Lru/somecompany/dreamcatcher/catcher;->PostLocationTo1C:Z

    .line 570
    iget-object v0, p0, Lru/somecompany/dreamcatcher/catcher;->loc_manager:Landroid/location/LocationManager;

    if-eqz v0, :cond_1

    .line 572
    iget-object v1, p0, Lru/somecompany/dreamcatcher/catcher;->gps_loc_listener:Lru/somecompany/dreamcatcher/catcher$gpsLocListener;

    if-eqz v1, :cond_0

    .line 574
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 576
    :cond_0
    iget-object v0, p0, Lru/somecompany/dreamcatcher/catcher;->net_loc_listener:Lru/somecompany/dreamcatcher/catcher$netLocListener;

    if-eqz v0, :cond_1

    .line 578
    iget-object v1, p0, Lru/somecompany/dreamcatcher/catcher;->loc_manager:Landroid/location/LocationManager;

    invoke-virtual {v1, v0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_1
    return-void
.end method

.method public foo()V
    .locals 2

    .line 139
    new-instance v0, Landroid/content/Intent;

    const-string v1, "bbbbb.bbbbb.bbb"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 140
    iget-object v1, p0, Lru/somecompany/dreamcatcher/catcher;->m_Activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public handleAnswerFrom1c(Ljava/lang/String;)V
    .locals 3

    .line 274
    new-instance v0, Lru/somecompany/dreamcatcher/catcher$http_request_transport_structure;

    invoke-direct {v0, p0}, Lru/somecompany/dreamcatcher/catcher$http_request_transport_structure;-><init>(Lru/somecompany/dreamcatcher/catcher;)V

    .line 277
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 278
    iget-object p1, p0, Lru/somecompany/dreamcatcher/catcher;->http_requests:Ljava/util/Map;

    const-string v1, "req_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public run()V
    .locals 1

    const-string v0, "ru_somecompany_dreamcatcher"

    .line 104
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public show()V
    .locals 1

    .line 108
    iget-object v0, p0, Lru/somecompany/dreamcatcher/catcher;->m_Activity:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public start(Ljava/lang/String;)V
    .locals 3

    .line 157
    iput-object p1, p0, Lru/somecompany/dreamcatcher/catcher;->bk_filter:Ljava/lang/String;

    .line 158
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 161
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    iget-object v1, p0, Lru/somecompany/dreamcatcher/catcher;->bk_filter:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lru/somecompany/dreamcatcher/catcher;->bk_filters:Lorg/json/JSONArray;

    const/4 v0, 0x0

    .line 164
    :goto_0
    iget-object v1, p0, Lru/somecompany/dreamcatcher/catcher;->bk_filters:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 165
    iget-object v1, p0, Lru/somecompany/dreamcatcher/catcher;->bk_filters:Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "filter"

    .line 166
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 167
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 174
    :cond_0
    iget-object v0, p0, Lru/somecompany/dreamcatcher/catcher;->m_Receiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_1

    .line 175
    new-instance v0, Lru/somecompany/dreamcatcher/catcher$1;

    invoke-direct {v0, p0}, Lru/somecompany/dreamcatcher/catcher$1;-><init>(Lru/somecompany/dreamcatcher/catcher;)V

    iput-object v0, p0, Lru/somecompany/dreamcatcher/catcher;->m_Receiver:Landroid/content/BroadcastReceiver;

    .line 219
    iget-object v1, p0, Lru/somecompany/dreamcatcher/catcher;->m_Activity:Landroid/app/Activity;

    invoke-virtual {v1, v0, p1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :catch_0
    :cond_1
    return-void
.end method

.method public stop()V
    .locals 2

    .line 224
    iget-object v0, p0, Lru/somecompany/dreamcatcher/catcher;->m_Receiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 225
    iget-object v1, p0, Lru/somecompany/dreamcatcher/catcher;->m_Activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 226
    iput-object v0, p0, Lru/somecompany/dreamcatcher/catcher;->m_Receiver:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method
