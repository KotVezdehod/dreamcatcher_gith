.class Lru/somecompany/dreamcatcher/catcher$cl_bk_result;
.super Ljava/lang/Object;
.source "catcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/somecompany/dreamcatcher/catcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "cl_bk_result"
.end annotation


# instance fields
.field Data:Ljava/lang/String;

.field action:Ljava/lang/String;

.field key:Ljava/lang/String;

.field final synthetic this$0:Lru/somecompany/dreamcatcher/catcher;


# direct methods
.method constructor <init>(Lru/somecompany/dreamcatcher/catcher;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lru/somecompany/dreamcatcher/catcher$cl_bk_result;->this$0:Lru/somecompany/dreamcatcher/catcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ""

    .line 112
    iput-object p1, p0, Lru/somecompany/dreamcatcher/catcher$cl_bk_result;->action:Ljava/lang/String;

    .line 113
    iput-object p1, p0, Lru/somecompany/dreamcatcher/catcher$cl_bk_result;->key:Ljava/lang/String;

    .line 114
    iput-object p1, p0, Lru/somecompany/dreamcatcher/catcher$cl_bk_result;->Data:Ljava/lang/String;

    return-void
.end method
