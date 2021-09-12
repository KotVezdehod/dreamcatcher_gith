.class public Lru/coolclever/dreamcatcher/catcher$MyHTTPD;
.super Lfi/iki/elonen/NanoHTTPD;
.source "catcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/coolclever/dreamcatcher/catcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyHTTPD"
.end annotation


# instance fields
.field final synthetic this$0:Lru/coolclever/dreamcatcher/catcher;


# direct methods
.method public constructor <init>(Lru/coolclever/dreamcatcher/catcher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 226
    iput-object p1, p0, Lru/coolclever/dreamcatcher/catcher$MyHTTPD;->this$0:Lru/coolclever/dreamcatcher/catcher;

    .line 227
    iget p1, p1, Lru/coolclever/dreamcatcher/catcher;->HTT_PORT:I

    invoke-direct {p0, p1}, Lfi/iki/elonen/NanoHTTPD;-><init>(I)V

    return-void
.end method


# virtual methods
.method public serve(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 10

    .line 233
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 234
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getMethod()Lfi/iki/elonen/NanoHTTPD$Method;

    move-result-object v1

    .line 236
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    .line 237
    new-instance v4, Lru/coolclever/dreamcatcher/catcher$coolclever_http_request_result;

    iget-object v5, p0, Lru/coolclever/dreamcatcher/catcher$MyHTTPD;->this$0:Lru/coolclever/dreamcatcher/catcher;

    invoke-direct {v4, v5}, Lru/coolclever/dreamcatcher/catcher$coolclever_http_request_result;-><init>(Lru/coolclever/dreamcatcher/catcher;)V

    .line 240
    sget-object v5, Lfi/iki/elonen/NanoHTTPD$Method;->PUT:Lfi/iki/elonen/NanoHTTPD$Method;

    invoke-virtual {v5, v1}, Lfi/iki/elonen/NanoHTTPD$Method;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "text/plain"

    if-nez v5, :cond_0

    sget-object v5, Lfi/iki/elonen/NanoHTTPD$Method;->POST:Lfi/iki/elonen/NanoHTTPD$Method;

    invoke-virtual {v5, v1}, Lfi/iki/elonen/NanoHTTPD$Method;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 242
    :cond_0
    :try_start_0
    invoke-interface {p1, v0}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->parseBody(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lfi/iki/elonen/NanoHTTPD$ResponseException; {:try_start_0 .. :try_end_0} :catch_1

    .line 250
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 251
    iget-object v1, p0, Lru/coolclever/dreamcatcher/catcher$MyHTTPD;->this$0:Lru/coolclever/dreamcatcher/catcher;

    iget-object v1, v1, Lru/coolclever/dreamcatcher/catcher;->http_requests:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v7, ""

    invoke-interface {v1, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    new-instance v1, Lru/coolclever/dreamcatcher/catcher$http_request_transport_structure;

    iget-object v5, p0, Lru/coolclever/dreamcatcher/catcher$MyHTTPD;->this$0:Lru/coolclever/dreamcatcher/catcher;

    invoke-direct {v1, v5}, Lru/coolclever/dreamcatcher/catcher$http_request_transport_structure;-><init>(Lru/coolclever/dreamcatcher/catcher;)V

    .line 253
    iput-wide v2, v1, Lru/coolclever/dreamcatcher/catcher$http_request_transport_structure;->req_id:J

    .line 254
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lru/coolclever/dreamcatcher/catcher$http_request_transport_structure;->data:Ljava/lang/String;

    .line 255
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getUri()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lru/coolclever/dreamcatcher/catcher$http_request_transport_structure;->uri:Ljava/lang/String;

    .line 256
    iget-object p1, p0, Lru/coolclever/dreamcatcher/catcher$MyHTTPD;->this$0:Lru/coolclever/dreamcatcher/catcher;

    invoke-static {p1}, Lru/coolclever/dreamcatcher/catcher;->access$000(Lru/coolclever/dreamcatcher/catcher;)J

    move-result-wide v8

    iget-object p1, p0, Lru/coolclever/dreamcatcher/catcher$MyHTTPD;->this$0:Lru/coolclever/dreamcatcher/catcher;

    iget-object p1, p1, Lru/coolclever/dreamcatcher/catcher;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, v9, p1}, Lru/coolclever/dreamcatcher/catcher;->OnHttpServerServ(JLjava/lang/String;)V

    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x78

    if-ge v0, v1, :cond_3

    .line 261
    iget-object v1, p0, Lru/coolclever/dreamcatcher/catcher$MyHTTPD;->this$0:Lru/coolclever/dreamcatcher/catcher;

    iget-object v1, v1, Lru/coolclever/dreamcatcher/catcher;->http_requests:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eq v1, v7, :cond_2

    .line 263
    iput-boolean p1, v4, Lru/coolclever/dreamcatcher/catcher$coolclever_http_request_result;->err:Z

    .line 264
    iput-object v7, v4, Lru/coolclever/dreamcatcher/catcher$coolclever_http_request_result;->err_msg:Ljava/lang/String;

    .line 265
    iput-object v1, v4, Lru/coolclever/dreamcatcher/catcher$coolclever_http_request_result;->data:Ljava/lang/String;

    .line 267
    iget-object p1, p0, Lru/coolclever/dreamcatcher/catcher$MyHTTPD;->this$0:Lru/coolclever/dreamcatcher/catcher;

    iget-object p1, p1, Lru/coolclever/dreamcatcher/catcher;->http_requests:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    iget-object p1, p0, Lru/coolclever/dreamcatcher/catcher$MyHTTPD;->this$0:Lru/coolclever/dreamcatcher/catcher;

    iget-object p1, p1, Lru/coolclever/dreamcatcher/catcher;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p1, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lru/coolclever/dreamcatcher/catcher$MyHTTPD;->newFixedLengthResponse(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    :cond_2
    const-wide/16 v8, 0x1f4

    .line 273
    :try_start_1
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    :cond_3
    const/4 p1, 0x1

    .line 279
    iput-boolean p1, v4, Lru/coolclever/dreamcatcher/catcher$coolclever_http_request_result;->err:Z

    const-string p1, "SERVER INTERNAL ERROR: \u043f\u0440\u0435\u0432\u044b\u0448\u0435\u043d\u043e \u043e\u0436\u0438\u0434\u0430\u0435\u043c\u043e\u0435 \u0432\u0440\u0435\u043c\u044f \u043e\u0431\u0440\u0430\u0431\u043e\u0442\u043a\u0438 \u0437\u0430\u043f\u0440\u043e\u0441\u0430 \u043d\u0430 \u0441\u0442\u043e\u0440\u043e\u043d\u0435 1\u0441."

    .line 280
    iput-object p1, v4, Lru/coolclever/dreamcatcher/catcher$coolclever_http_request_result;->err_msg:Ljava/lang/String;

    .line 281
    iput-object v7, v4, Lru/coolclever/dreamcatcher/catcher$coolclever_http_request_result;->data:Ljava/lang/String;

    .line 283
    iget-object p1, p0, Lru/coolclever/dreamcatcher/catcher$MyHTTPD;->this$0:Lru/coolclever/dreamcatcher/catcher;

    iget-object p1, p1, Lru/coolclever/dreamcatcher/catcher;->http_requests:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    sget-object p1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    iget-object v0, p0, Lru/coolclever/dreamcatcher/catcher$MyHTTPD;->this$0:Lru/coolclever/dreamcatcher/catcher;

    iget-object v0, v0, Lru/coolclever/dreamcatcher/catcher;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v6, v0}, Lru/coolclever/dreamcatcher/catcher$MyHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    :cond_4
    const/4 p1, 0x0

    return-object p1

    :catch_1
    move-exception p1

    .line 246
    invoke-virtual {p1}, Lfi/iki/elonen/NanoHTTPD$ResponseException;->getStatus()Lfi/iki/elonen/NanoHTTPD$Response$Status;

    move-result-object v0

    invoke-virtual {p1}, Lfi/iki/elonen/NanoHTTPD$ResponseException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v6, p1}, Lru/coolclever/dreamcatcher/catcher$MyHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    :catch_2
    move-exception p1

    .line 244
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SERVER INTERNAL ERROR: IOException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v6, p1}, Lru/coolclever/dreamcatcher/catcher$MyHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1
.end method
