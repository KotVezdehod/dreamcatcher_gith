.class Lru/coolclever/dreamcatcher/catcher$coolclever_http_request_result;
.super Ljava/lang/Object;
.source "catcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/coolclever/dreamcatcher/catcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "coolclever_http_request_result"
.end annotation


# instance fields
.field data:Ljava/lang/String;

.field err:Z

.field err_msg:Ljava/lang/String;

.field final synthetic this$0:Lru/coolclever/dreamcatcher/catcher;


# direct methods
.method constructor <init>(Lru/coolclever/dreamcatcher/catcher;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lru/coolclever/dreamcatcher/catcher$coolclever_http_request_result;->this$0:Lru/coolclever/dreamcatcher/catcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 301
    iput-boolean p1, p0, Lru/coolclever/dreamcatcher/catcher$coolclever_http_request_result;->err:Z

    const-string p1, ""

    .line 302
    iput-object p1, p0, Lru/coolclever/dreamcatcher/catcher$coolclever_http_request_result;->err_msg:Ljava/lang/String;

    .line 303
    iput-object p1, p0, Lru/coolclever/dreamcatcher/catcher$coolclever_http_request_result;->data:Ljava/lang/String;

    return-void
.end method
