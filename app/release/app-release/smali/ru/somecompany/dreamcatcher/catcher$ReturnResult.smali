.class Lru/somecompany/dreamcatcher/catcher$ReturnResult;
.super Ljava/lang/Object;
.source "catcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/somecompany/dreamcatcher/catcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReturnResult"
.end annotation


# instance fields
.field data:Ljava/lang/String;

.field description:Ljava/lang/String;

.field object:Ljava/lang/Object;

.field status:Z

.field final synthetic this$0:Lru/somecompany/dreamcatcher/catcher;


# direct methods
.method public varargs constructor <init>(Lru/somecompany/dreamcatcher/catcher;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lru/somecompany/dreamcatcher/catcher$ReturnResult;->this$0:Lru/somecompany/dreamcatcher/catcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 120
    iput-boolean p1, p0, Lru/somecompany/dreamcatcher/catcher$ReturnResult;->status:Z

    const-string p1, ""

    .line 121
    iput-object p1, p0, Lru/somecompany/dreamcatcher/catcher$ReturnResult;->description:Ljava/lang/String;

    .line 122
    iput-object p1, p0, Lru/somecompany/dreamcatcher/catcher$ReturnResult;->data:Ljava/lang/String;

    const/4 p1, 0x0

    .line 123
    iput-object p1, p0, Lru/somecompany/dreamcatcher/catcher$ReturnResult;->object:Ljava/lang/Object;

    .line 126
    iput-boolean p2, p0, Lru/somecompany/dreamcatcher/catcher$ReturnResult;->status:Z

    .line 127
    iput-object p3, p0, Lru/somecompany/dreamcatcher/catcher$ReturnResult;->description:Ljava/lang/String;

    .line 128
    iput-object p4, p0, Lru/somecompany/dreamcatcher/catcher$ReturnResult;->data:Ljava/lang/String;

    .line 129
    iput-object p5, p0, Lru/somecompany/dreamcatcher/catcher$ReturnResult;->object:Ljava/lang/Object;

    return-void
.end method
