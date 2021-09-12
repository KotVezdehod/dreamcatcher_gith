.class Lru/coolclever/dreamcatcher/catcher$1;
.super Landroid/content/BroadcastReceiver;
.source "catcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/coolclever/dreamcatcher/catcher;->start(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/coolclever/dreamcatcher/catcher;


# direct methods
.method constructor <init>(Lru/coolclever/dreamcatcher/catcher;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lru/coolclever/dreamcatcher/catcher$1;->this$0:Lru/coolclever/dreamcatcher/catcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 115
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 121
    :goto_0
    iget-object v1, p0, Lru/coolclever/dreamcatcher/catcher$1;->this$0:Lru/coolclever/dreamcatcher/catcher;

    iget-object v1, v1, Lru/coolclever/dreamcatcher/catcher;->bk_filters:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 124
    :try_start_0
    iget-object v1, p0, Lru/coolclever/dreamcatcher/catcher$1;->this$0:Lru/coolclever/dreamcatcher/catcher;

    iget-object v1, v1, Lru/coolclever/dreamcatcher/catcher;->bk_filters:Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "filter"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 125
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 126
    iget-object v2, p0, Lru/coolclever/dreamcatcher/catcher$1;->this$0:Lru/coolclever/dreamcatcher/catcher;

    iget-object v2, v2, Lru/coolclever/dreamcatcher/catcher;->bk_filters:Lorg/json/JSONArray;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "extra"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, ""

    if-eq v2, v3, :cond_3

    .line 128
    :try_start_1
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 130
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v5

    if-eqz v5, :cond_0

    .line 132
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    :cond_0
    if-eqz v4, :cond_1

    if-ne v4, v3, :cond_2

    .line 136
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u0414\u043e\u043f. \u0434\u0430\u043d\u043d\u044b\u0435 \u0441 \u043a\u043b\u044e\u0447\u043e\u043c: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' \u043d\u0435 \u0441\u043e\u0434\u0435\u0440\u0436\u0430\u0442 \u0434\u0430\u043d\u043d\u044b\u0445!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 139
    :cond_2
    new-instance v3, Lru/coolclever/dreamcatcher/catcher$cl_bk_result;

    iget-object v5, p0, Lru/coolclever/dreamcatcher/catcher$1;->this$0:Lru/coolclever/dreamcatcher/catcher;

    invoke-direct {v3, v5}, Lru/coolclever/dreamcatcher/catcher$cl_bk_result;-><init>(Lru/coolclever/dreamcatcher/catcher;)V

    .line 140
    iput-object v1, v3, Lru/coolclever/dreamcatcher/catcher$cl_bk_result;->action:Ljava/lang/String;

    .line 141
    iput-object v2, v3, Lru/coolclever/dreamcatcher/catcher$cl_bk_result;->key:Ljava/lang/String;

    .line 142
    iput-object v4, v3, Lru/coolclever/dreamcatcher/catcher$cl_bk_result;->Data:Ljava/lang/String;

    .line 144
    iget-object v1, p0, Lru/coolclever/dreamcatcher/catcher$1;->this$0:Lru/coolclever/dreamcatcher/catcher;

    invoke-static {v1}, Lru/coolclever/dreamcatcher/catcher;->access$000(Lru/coolclever/dreamcatcher/catcher;)J

    move-result-wide v1

    iget-object v4, p0, Lru/coolclever/dreamcatcher/catcher$1;->this$0:Lru/coolclever/dreamcatcher/catcher;

    iget-object v4, v4, Lru/coolclever/dreamcatcher/catcher;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v4, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lru/coolclever/dreamcatcher/catcher;->OnBroadcastCatched(JLjava/lang/String;)V

    goto :goto_1

    .line 146
    :cond_3
    iget-object v1, p0, Lru/coolclever/dreamcatcher/catcher$1;->this$0:Lru/coolclever/dreamcatcher/catcher;

    invoke-static {v1}, Lru/coolclever/dreamcatcher/catcher;->access$000(Lru/coolclever/dreamcatcher/catcher;)J

    move-result-wide v1

    const-string v3, "ok_en"

    invoke-static {v1, v2, v3}, Lru/coolclever/dreamcatcher/catcher;->OnBroadcastCatched(JLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_5
    :goto_1
    return-void
.end method
