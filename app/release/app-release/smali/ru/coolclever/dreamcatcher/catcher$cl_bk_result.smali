.class Lru/coolclever/dreamcatcher/catcher$cl_bk_result;
.super Ljava/lang/Object;
.source "catcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/coolclever/dreamcatcher/catcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "cl_bk_result"
.end annotation


# instance fields
.field Data:Ljava/lang/String;

.field action:Ljava/lang/String;

.field key:Ljava/lang/String;

.field final synthetic this$0:Lru/coolclever/dreamcatcher/catcher;


# direct methods
.method constructor <init>(Lru/coolclever/dreamcatcher/catcher;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lru/coolclever/dreamcatcher/catcher$cl_bk_result;->this$0:Lru/coolclever/dreamcatcher/catcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ""

    .line 71
    iput-object p1, p0, Lru/coolclever/dreamcatcher/catcher$cl_bk_result;->action:Ljava/lang/String;

    .line 72
    iput-object p1, p0, Lru/coolclever/dreamcatcher/catcher$cl_bk_result;->key:Ljava/lang/String;

    .line 73
    iput-object p1, p0, Lru/coolclever/dreamcatcher/catcher$cl_bk_result;->Data:Ljava/lang/String;

    return-void
.end method
