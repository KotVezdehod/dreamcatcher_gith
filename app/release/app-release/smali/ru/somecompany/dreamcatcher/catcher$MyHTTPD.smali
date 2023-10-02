.class public Lru/somecompany/dreamcatcher/catcher$MyHTTPD;
.super Lfi/iki/elonen/NanoHTTPD;
.source "catcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/somecompany/dreamcatcher/catcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyHTTPD"
.end annotation


# instance fields
.field final synthetic this$0:Lru/somecompany/dreamcatcher/catcher;


# direct methods
.method public constructor <init>(Lru/somecompany/dreamcatcher/catcher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 289
    iput-object p1, p0, Lru/somecompany/dreamcatcher/catcher$MyHTTPD;->this$0:Lru/somecompany/dreamcatcher/catcher;

    .line 290
    iget p1, p1, Lru/somecompany/dreamcatcher/catcher;->HTT_PORT:I

    invoke-direct {p0, p1}, Lfi/iki/elonen/NanoHTTPD;-><init>(I)V

    return-void
.end method


# virtual methods
.method public serve(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 16

    move-object/from16 v1, p0

    .line 296
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 297
    invoke-interface/range {p1 .. p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getMethod()Lfi/iki/elonen/NanoHTTPD$Method;

    move-result-object v2

    .line 299
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    .line 300
    new-instance v5, Lru/somecompany/dreamcatcher/catcher$somecompany_http_request_result;

    iget-object v6, v1, Lru/somecompany/dreamcatcher/catcher$MyHTTPD;->this$0:Lru/somecompany/dreamcatcher/catcher;

    invoke-direct {v5, v6}, Lru/somecompany/dreamcatcher/catcher$somecompany_http_request_result;-><init>(Lru/somecompany/dreamcatcher/catcher;)V

    .line 302
    sget-object v6, Lfi/iki/elonen/NanoHTTPD$Method;->PUT:Lfi/iki/elonen/NanoHTTPD$Method;

    invoke-virtual {v6, v2}, Lfi/iki/elonen/NanoHTTPD$Method;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "text/plain"

    if-nez v6, :cond_1

    sget-object v6, Lfi/iki/elonen/NanoHTTPD$Method;->POST:Lfi/iki/elonen/NanoHTTPD$Method;

    invoke-virtual {v6, v2}, Lfi/iki/elonen/NanoHTTPD$Method;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    sget-object v6, Lfi/iki/elonen/NanoHTTPD$Method;->GET:Lfi/iki/elonen/NanoHTTPD$Method;

    invoke-virtual {v6, v2}, Lfi/iki/elonen/NanoHTTPD$Method;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v6, p1

    goto :goto_1

    :cond_1
    :goto_0
    move-object/from16 v6, p1

    .line 304
    :try_start_0
    invoke-interface {v6, v0}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->parseBody(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lfi/iki/elonen/NanoHTTPD$ResponseException; {:try_start_0 .. :try_end_0} :catch_2

    .line 313
    :goto_1
    sget-object v8, Lfi/iki/elonen/NanoHTTPD$Method;->GET:Lfi/iki/elonen/NanoHTTPD$Method;

    invoke-virtual {v8, v2}, Lfi/iki/elonen/NanoHTTPD$Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v10, "SERVER INTERNAL ERROR: \u043f\u0440\u0435\u0432\u044b\u0448\u0435\u043d\u043e \u043e\u0436\u0438\u0434\u0430\u0435\u043c\u043e\u0435 \u0432\u0440\u0435\u043c\u044f \u043e\u0431\u0440\u0430\u0431\u043e\u0442\u043a\u0438 \u0437\u0430\u043f\u0440\u043e\u0441\u0430 \u043d\u0430 \u0441\u0442\u043e\u0440\u043e\u043d\u0435 1\u0441."

    const/16 v11, 0x78

    const/4 v12, 0x1

    const/4 v13, 0x0

    const-string v14, ""

    if-eqz v2, :cond_4

    .line 314
    invoke-interface/range {p1 .. p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getParameters()Ljava/util/Map;

    move-result-object v0

    .line 316
    iget-object v2, v1, Lru/somecompany/dreamcatcher/catcher$MyHTTPD;->this$0:Lru/somecompany/dreamcatcher/catcher;

    iget-object v2, v2, Lru/somecompany/dreamcatcher/catcher;->http_requests:Ljava/util/Map;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-interface {v2, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    new-instance v2, Lru/somecompany/dreamcatcher/catcher$http_request_transport_structure;

    iget-object v15, v1, Lru/somecompany/dreamcatcher/catcher$MyHTTPD;->this$0:Lru/somecompany/dreamcatcher/catcher;

    invoke-direct {v2, v15}, Lru/somecompany/dreamcatcher/catcher$http_request_transport_structure;-><init>(Lru/somecompany/dreamcatcher/catcher;)V

    .line 318
    iput-wide v3, v2, Lru/somecompany/dreamcatcher/catcher$http_request_transport_structure;->req_id:J

    .line 319
    invoke-interface/range {p1 .. p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getUri()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lru/somecompany/dreamcatcher/catcher$http_request_transport_structure;->uri:Ljava/lang/String;

    .line 320
    iget-object v6, v1, Lru/somecompany/dreamcatcher/catcher$MyHTTPD;->this$0:Lru/somecompany/dreamcatcher/catcher;

    iget-object v6, v6, Lru/somecompany/dreamcatcher/catcher;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v6, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lru/somecompany/dreamcatcher/catcher$http_request_transport_structure;->data:Ljava/lang/String;

    .line 321
    iget-object v0, v1, Lru/somecompany/dreamcatcher/catcher$MyHTTPD;->this$0:Lru/somecompany/dreamcatcher/catcher;

    invoke-static {v0}, Lru/somecompany/dreamcatcher/catcher;->access$000(Lru/somecompany/dreamcatcher/catcher;)J

    move-result-wide v8

    iget-object v0, v1, Lru/somecompany/dreamcatcher/catcher$MyHTTPD;->this$0:Lru/somecompany/dreamcatcher/catcher;

    iget-object v0, v0, Lru/somecompany/dreamcatcher/catcher;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v9, v0}, Lru/somecompany/dreamcatcher/catcher;->OnHttpServerServ(JLjava/lang/String;)V

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v11, :cond_3

    .line 325
    iget-object v2, v1, Lru/somecompany/dreamcatcher/catcher$MyHTTPD;->this$0:Lru/somecompany/dreamcatcher/catcher;

    iget-object v2, v2, Lru/somecompany/dreamcatcher/catcher;->http_requests:Ljava/util/Map;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eq v2, v14, :cond_2

    .line 327
    iput-boolean v13, v5, Lru/somecompany/dreamcatcher/catcher$somecompany_http_request_result;->err:Z

    .line 328
    iput-object v14, v5, Lru/somecompany/dreamcatcher/catcher$somecompany_http_request_result;->err_msg:Ljava/lang/String;

    .line 329
    iput-object v2, v5, Lru/somecompany/dreamcatcher/catcher$somecompany_http_request_result;->data:Ljava/lang/String;

    .line 331
    iget-object v0, v1, Lru/somecompany/dreamcatcher/catcher$MyHTTPD;->this$0:Lru/somecompany/dreamcatcher/catcher;

    iget-object v0, v0, Lru/somecompany/dreamcatcher/catcher;->http_requests:Ljava/util/Map;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    iget-object v0, v1, Lru/somecompany/dreamcatcher/catcher$MyHTTPD;->this$0:Lru/somecompany/dreamcatcher/catcher;

    iget-object v0, v0, Lru/somecompany/dreamcatcher/catcher;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, v5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lru/somecompany/dreamcatcher/catcher$MyHTTPD;->newFixedLengthResponse(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v0

    return-object v0

    :cond_2
    const-wide/16 v8, 0x1f4

    .line 337
    :try_start_1
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 343
    :catch_0
    :cond_3
    iput-boolean v12, v5, Lru/somecompany/dreamcatcher/catcher$somecompany_http_request_result;->err:Z

    .line 344
    iput-object v10, v5, Lru/somecompany/dreamcatcher/catcher$somecompany_http_request_result;->err_msg:Ljava/lang/String;

    .line 345
    iput-object v14, v5, Lru/somecompany/dreamcatcher/catcher$somecompany_http_request_result;->data:Ljava/lang/String;

    .line 347
    iget-object v0, v1, Lru/somecompany/dreamcatcher/catcher$MyHTTPD;->this$0:Lru/somecompany/dreamcatcher/catcher;

    iget-object v0, v0, Lru/somecompany/dreamcatcher/catcher;->http_requests:Ljava/util/Map;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    iget-object v2, v1, Lru/somecompany/dreamcatcher/catcher$MyHTTPD;->this$0:Lru/somecompany/dreamcatcher/catcher;

    iget-object v2, v2, Lru/somecompany/dreamcatcher/catcher;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v2, v5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v7, v2}, Lru/somecompany/dreamcatcher/catcher$MyHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v0

    return-object v0

    .line 352
    :cond_4
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 353
    iget-object v2, v1, Lru/somecompany/dreamcatcher/catcher$MyHTTPD;->this$0:Lru/somecompany/dreamcatcher/catcher;

    iget-object v2, v2, Lru/somecompany/dreamcatcher/catcher;->http_requests:Ljava/util/Map;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v2, v8, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    new-instance v2, Lru/somecompany/dreamcatcher/catcher$http_request_transport_structure;

    iget-object v8, v1, Lru/somecompany/dreamcatcher/catcher$MyHTTPD;->this$0:Lru/somecompany/dreamcatcher/catcher;

    invoke-direct {v2, v8}, Lru/somecompany/dreamcatcher/catcher$http_request_transport_structure;-><init>(Lru/somecompany/dreamcatcher/catcher;)V

    .line 355
    iput-wide v3, v2, Lru/somecompany/dreamcatcher/catcher$http_request_transport_structure;->req_id:J

    .line 356
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lru/somecompany/dreamcatcher/catcher$http_request_transport_structure;->data:Ljava/lang/String;

    .line 357
    invoke-interface/range {p1 .. p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getUri()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lru/somecompany/dreamcatcher/catcher$http_request_transport_structure;->uri:Ljava/lang/String;

    .line 358
    iget-object v0, v1, Lru/somecompany/dreamcatcher/catcher$MyHTTPD;->this$0:Lru/somecompany/dreamcatcher/catcher;

    invoke-static {v0}, Lru/somecompany/dreamcatcher/catcher;->access$000(Lru/somecompany/dreamcatcher/catcher;)J

    move-result-wide v8

    iget-object v0, v1, Lru/somecompany/dreamcatcher/catcher$MyHTTPD;->this$0:Lru/somecompany/dreamcatcher/catcher;

    iget-object v0, v0, Lru/somecompany/dreamcatcher/catcher;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v9, v0}, Lru/somecompany/dreamcatcher/catcher;->OnHttpServerServ(JLjava/lang/String;)V

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v11, :cond_6

    .line 363
    iget-object v2, v1, Lru/somecompany/dreamcatcher/catcher$MyHTTPD;->this$0:Lru/somecompany/dreamcatcher/catcher;

    iget-object v2, v2, Lru/somecompany/dreamcatcher/catcher;->http_requests:Ljava/util/Map;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eq v2, v14, :cond_5

    .line 365
    iput-boolean v13, v5, Lru/somecompany/dreamcatcher/catcher$somecompany_http_request_result;->err:Z

    .line 366
    iput-object v14, v5, Lru/somecompany/dreamcatcher/catcher$somecompany_http_request_result;->err_msg:Ljava/lang/String;

    .line 367
    iput-object v2, v5, Lru/somecompany/dreamcatcher/catcher$somecompany_http_request_result;->data:Ljava/lang/String;

    .line 369
    iget-object v0, v1, Lru/somecompany/dreamcatcher/catcher$MyHTTPD;->this$0:Lru/somecompany/dreamcatcher/catcher;

    iget-object v0, v0, Lru/somecompany/dreamcatcher/catcher;->http_requests:Ljava/util/Map;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    iget-object v0, v1, Lru/somecompany/dreamcatcher/catcher$MyHTTPD;->this$0:Lru/somecompany/dreamcatcher/catcher;

    iget-object v0, v0, Lru/somecompany/dreamcatcher/catcher;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, v5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lru/somecompany/dreamcatcher/catcher$MyHTTPD;->newFixedLengthResponse(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v0

    return-object v0

    :cond_5
    const-wide/16 v8, 0x1f4

    .line 375
    :try_start_2
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 381
    :catch_1
    :cond_6
    iput-boolean v12, v5, Lru/somecompany/dreamcatcher/catcher$somecompany_http_request_result;->err:Z

    .line 382
    iput-object v10, v5, Lru/somecompany/dreamcatcher/catcher$somecompany_http_request_result;->err_msg:Ljava/lang/String;

    .line 383
    iput-object v14, v5, Lru/somecompany/dreamcatcher/catcher$somecompany_http_request_result;->data:Ljava/lang/String;

    .line 385
    iget-object v0, v1, Lru/somecompany/dreamcatcher/catcher$MyHTTPD;->this$0:Lru/somecompany/dreamcatcher/catcher;

    iget-object v0, v0, Lru/somecompany/dreamcatcher/catcher;->http_requests:Ljava/util/Map;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    iget-object v2, v1, Lru/somecompany/dreamcatcher/catcher$MyHTTPD;->this$0:Lru/somecompany/dreamcatcher/catcher;

    iget-object v2, v2, Lru/somecompany/dreamcatcher/catcher;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v2, v5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v7, v2}, Lru/somecompany/dreamcatcher/catcher$MyHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v0

    return-object v0

    :cond_7
    const/4 v0, 0x0

    return-object v0

    :catch_2
    move-exception v0

    move-object v2, v0

    .line 308
    invoke-virtual {v2}, Lfi/iki/elonen/NanoHTTPD$ResponseException;->getStatus()Lfi/iki/elonen/NanoHTTPD$Response$Status;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SERVER INTERNAL ERROR: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lfi/iki/elonen/NanoHTTPD$ResponseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (\u041e\u0448\u0438\u0431\u043a\u0430 \u043f\u0440\u0438 \u0440\u0430\u0437\u0431\u043e\u0440\u0435 \u0442\u0435\u043b\u0430 \u0437\u0430\u043f\u0440\u043e\u0441\u0430. \u0422\u0430\u043c \u0434\u043e\u043b\u0436\u0435\u043d \u0431\u044b\u0442\u044c Plain Text.)"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v7, v2}, Lru/somecompany/dreamcatcher/catcher$MyHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v0

    return-object v0

    :catch_3
    move-exception v0

    move-object v2, v0

    .line 306
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SERVER INTERNAL ERROR: IOException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v7, v2}, Lru/somecompany/dreamcatcher/catcher$MyHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v0

    return-object v0
.end method
