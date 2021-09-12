.class public Lru/coolclever/dreamcatcher/catcher;
.super Ljava/lang/Object;
.source "catcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/coolclever/dreamcatcher/catcher$http_request_transport_structure;,
        Lru/coolclever/dreamcatcher/catcher$coolclever_http_request_result;,
        Lru/coolclever/dreamcatcher/catcher$MyHTTPD;,
        Lru/coolclever/dreamcatcher/catcher$cl_bk_result;
    }
.end annotation


# instance fields
.field HTT_PORT:I

.field private REQUEST_CODE_CAMERA_ACTIVIVTY:I

.field private REQUEST_CODE_CAMERA_PERMISSION:I

.field private REQUEST_CODE_WRITE_EXT_STORAGE_PERMISSION:I

.field private bk_filter:Ljava/lang/String;

.field bk_filters:Lorg/json/JSONArray;

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

.field http_server:Lru/coolclever/dreamcatcher/catcher$MyHTTPD;

.field private m_Activity:Landroid/app/Activity;

.field private m_Receiver:Landroid/content/BroadcastReceiver;

.field private m_V8Object:J


# direct methods
.method public constructor <init>(Landroid/app/Activity;J)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x223d

    .line 47
    iput v0, p0, Lru/coolclever/dreamcatcher/catcher;->HTT_PORT:I

    .line 48
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lru/coolclever/dreamcatcher/catcher;->gson:Lcom/google/gson/Gson;

    const/16 v0, 0xc9

    .line 52
    iput v0, p0, Lru/coolclever/dreamcatcher/catcher;->REQUEST_CODE_CAMERA_ACTIVIVTY:I

    const/16 v0, 0x64

    .line 53
    iput v0, p0, Lru/coolclever/dreamcatcher/catcher;->REQUEST_CODE_CAMERA_PERMISSION:I

    const/16 v0, 0x65

    .line 54
    iput v0, p0, Lru/coolclever/dreamcatcher/catcher;->REQUEST_CODE_WRITE_EXT_STORAGE_PERMISSION:I

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/coolclever/dreamcatcher/catcher;->http_requests:Ljava/util/Map;

    .line 57
    iput-object p1, p0, Lru/coolclever/dreamcatcher/catcher;->m_Activity:Landroid/app/Activity;

    .line 58
    iput-wide p2, p0, Lru/coolclever/dreamcatcher/catcher;->m_V8Object:J

    return-void
.end method

.method static native OnBroadcastCatched(JLjava/lang/String;)V
.end method

.method static native OnHttpServerServ(JLjava/lang/String;)V
.end method

.method static synthetic access$000(Lru/coolclever/dreamcatcher/catcher;)J
    .locals 2

    .line 33
    iget-wide v0, p0, Lru/coolclever/dreamcatcher/catcher;->m_V8Object:J

    return-wide v0
.end method


# virtual methods
.method CloseStreams(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    .locals 0

    .line 370
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    :catch_0
    :try_start_1
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

.method public GetID()Ljava/lang/String;
    .locals 2

    .line 82
    iget-object v0, p0, Lru/coolclever/dreamcatcher/catcher;->m_Activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetOSAbis()Ljava/lang/String;
    .locals 1

    .line 88
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    return-object v0
.end method

.method public RefactorImage(Ljava/lang/String;Ljava/lang/String;III)Ljava/lang/String;
    .locals 2

    .line 321
    :try_start_0
    iget-object v0, p0, Lru/coolclever/dreamcatcher/catcher;->m_Activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 327
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 338
    :try_start_2
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-nez p2, :cond_0

    .line 350
    invoke-virtual {p0, p1, v0}, Lru/coolclever/dreamcatcher/catcher;->CloseStreams(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V

    const-string p1, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u043f\u0440\u043e\u0447\u0438\u0442\u0430\u0442\u044c \u0432\u0445\u043e\u0434\u043d\u043e\u0439 \u0444\u0430\u0439\u043b \u0432 bitmap"

    return-object p1

    :cond_0
    const/4 v1, 0x0

    .line 355
    :try_start_3
    invoke-static {p2, p3, p4, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 356
    sget-object p3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p2, p3, p5, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 357
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 363
    invoke-virtual {p0, p1, v0}, Lru/coolclever/dreamcatcher/catcher;->CloseStreams(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V

    const-string p1, "ok_en"

    return-object p1

    :catch_0
    move-exception p2

    .line 359
    invoke-virtual {p0, p1, v0}, Lru/coolclever/dreamcatcher/catcher;->CloseStreams(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V

    .line 360
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

    .line 340
    invoke-virtual {p0, p1, v0}, Lru/coolclever/dreamcatcher/catcher;->CloseStreams(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V

    .line 341
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

    .line 331
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 334
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

    .line 323
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

    .line 169
    iput p1, p0, Lru/coolclever/dreamcatcher/catcher;->HTT_PORT:I

    .line 170
    iget-object p1, p0, Lru/coolclever/dreamcatcher/catcher;->http_server:Lru/coolclever/dreamcatcher/catcher$MyHTTPD;

    if-eqz p1, :cond_0

    .line 172
    :try_start_0
    invoke-virtual {p1}, Lru/coolclever/dreamcatcher/catcher$MyHTTPD;->closeAllConnections()V

    .line 173
    iget-object p1, p0, Lru/coolclever/dreamcatcher/catcher;->http_server:Lru/coolclever/dreamcatcher/catcher$MyHTTPD;

    invoke-virtual {p1}, Lru/coolclever/dreamcatcher/catcher$MyHTTPD;->stop()V

    const/4 p1, 0x0

    .line 174
    iput-object p1, p0, Lru/coolclever/dreamcatcher/catcher;->http_server:Lru/coolclever/dreamcatcher/catcher$MyHTTPD;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 176
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 181
    :cond_0
    :goto_0
    :try_start_1
    new-instance p1, Lru/coolclever/dreamcatcher/catcher$MyHTTPD;

    invoke-direct {p1, p0}, Lru/coolclever/dreamcatcher/catcher$MyHTTPD;-><init>(Lru/coolclever/dreamcatcher/catcher;)V

    iput-object p1, p0, Lru/coolclever/dreamcatcher/catcher;->http_server:Lru/coolclever/dreamcatcher/catcher$MyHTTPD;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 187
    :try_start_2
    invoke-virtual {p1}, Lru/coolclever/dreamcatcher/catcher$MyHTTPD;->start()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-string p1, "ok_en"

    return-object p1

    :catch_1
    move-exception p1

    .line 189
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_2
    move-exception p1

    .line 183
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public StopHTTP()Ljava/lang/String;
    .locals 1

    .line 197
    iget-object v0, p0, Lru/coolclever/dreamcatcher/catcher;->http_server:Lru/coolclever/dreamcatcher/catcher$MyHTTPD;

    if-eqz v0, :cond_0

    .line 199
    :try_start_0
    invoke-virtual {v0}, Lru/coolclever/dreamcatcher/catcher$MyHTTPD;->closeAllConnections()V

    .line 200
    iget-object v0, p0, Lru/coolclever/dreamcatcher/catcher;->http_server:Lru/coolclever/dreamcatcher/catcher$MyHTTPD;

    invoke-virtual {v0}, Lru/coolclever/dreamcatcher/catcher$MyHTTPD;->stop()V

    const/4 v0, 0x0

    .line 201
    iput-object v0, p0, Lru/coolclever/dreamcatcher/catcher;->http_server:Lru/coolclever/dreamcatcher/catcher$MyHTTPD;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 203
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    :goto_0
    const-string v0, "ok_en"

    return-object v0
.end method

.method public handleAnswerFrom1c(Ljava/lang/String;)V
    .locals 3

    .line 211
    new-instance v0, Lru/coolclever/dreamcatcher/catcher$http_request_transport_structure;

    invoke-direct {v0, p0}, Lru/coolclever/dreamcatcher/catcher$http_request_transport_structure;-><init>(Lru/coolclever/dreamcatcher/catcher;)V

    .line 214
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 215
    iget-object p1, p0, Lru/coolclever/dreamcatcher/catcher;->http_requests:Ljava/util/Map;

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

    const-string v0, "ru_coolclever_dreamcatcher"

    .line 63
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public show()V
    .locals 1

    .line 67
    iget-object v0, p0, Lru/coolclever/dreamcatcher/catcher;->m_Activity:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public start(Ljava/lang/String;)V
    .locals 3

    .line 94
    iput-object p1, p0, Lru/coolclever/dreamcatcher/catcher;->bk_filter:Ljava/lang/String;

    .line 95
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 98
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    iget-object v1, p0, Lru/coolclever/dreamcatcher/catcher;->bk_filter:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lru/coolclever/dreamcatcher/catcher;->bk_filters:Lorg/json/JSONArray;

    const/4 v0, 0x0

    .line 101
    :goto_0
    iget-object v1, p0, Lru/coolclever/dreamcatcher/catcher;->bk_filters:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 102
    iget-object v1, p0, Lru/coolclever/dreamcatcher/catcher;->bk_filters:Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "filter"

    .line 103
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 104
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 111
    :cond_0
    iget-object v0, p0, Lru/coolclever/dreamcatcher/catcher;->m_Receiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_1

    .line 112
    new-instance v0, Lru/coolclever/dreamcatcher/catcher$1;

    invoke-direct {v0, p0}, Lru/coolclever/dreamcatcher/catcher$1;-><init>(Lru/coolclever/dreamcatcher/catcher;)V

    iput-object v0, p0, Lru/coolclever/dreamcatcher/catcher;->m_Receiver:Landroid/content/BroadcastReceiver;

    .line 156
    iget-object v1, p0, Lru/coolclever/dreamcatcher/catcher;->m_Activity:Landroid/app/Activity;

    invoke-virtual {v1, v0, p1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :catch_0
    :cond_1
    return-void
.end method

.method public stop()V
    .locals 2

    .line 161
    iget-object v0, p0, Lru/coolclever/dreamcatcher/catcher;->m_Receiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 162
    iget-object v1, p0, Lru/coolclever/dreamcatcher/catcher;->m_Activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 163
    iput-object v0, p0, Lru/coolclever/dreamcatcher/catcher;->m_Receiver:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method
