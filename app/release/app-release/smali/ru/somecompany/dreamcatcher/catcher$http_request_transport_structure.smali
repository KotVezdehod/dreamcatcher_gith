.class Lru/somecompany/dreamcatcher/catcher$http_request_transport_structure;
.super Ljava/lang/Object;
.source "catcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/somecompany/dreamcatcher/catcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "http_request_transport_structure"
.end annotation


# instance fields
.field data:Ljava/lang/String;

.field req_id:J

.field final synthetic this$0:Lru/somecompany/dreamcatcher/catcher;

.field uri:Ljava/lang/String;


# direct methods
.method constructor <init>(Lru/somecompany/dreamcatcher/catcher;)V
    .locals 0

    .line 409
    iput-object p1, p0, Lru/somecompany/dreamcatcher/catcher$http_request_transport_structure;->this$0:Lru/somecompany/dreamcatcher/catcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ""

    .line 411
    iput-object p1, p0, Lru/somecompany/dreamcatcher/catcher$http_request_transport_structure;->data:Ljava/lang/String;

    .line 412
    iput-object p1, p0, Lru/somecompany/dreamcatcher/catcher$http_request_transport_structure;->uri:Ljava/lang/String;

    return-void
.end method
