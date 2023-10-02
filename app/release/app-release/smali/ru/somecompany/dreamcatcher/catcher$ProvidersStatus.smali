.class public Lru/somecompany/dreamcatcher/catcher$ProvidersStatus;
.super Ljava/lang/Object;
.source "catcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/somecompany/dreamcatcher/catcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProvidersStatus"
.end annotation


# instance fields
.field public GPS:Ljava/lang/Boolean;

.field public NETWORK:Ljava/lang/Boolean;

.field final synthetic this$0:Lru/somecompany/dreamcatcher/catcher;


# direct methods
.method public constructor <init>(Lru/somecompany/dreamcatcher/catcher;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0

    .line 642
    iput-object p1, p0, Lru/somecompany/dreamcatcher/catcher$ProvidersStatus;->this$0:Lru/somecompany/dreamcatcher/catcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 640
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lru/somecompany/dreamcatcher/catcher$ProvidersStatus;->GPS:Ljava/lang/Boolean;

    .line 641
    iput-object p1, p0, Lru/somecompany/dreamcatcher/catcher$ProvidersStatus;->NETWORK:Ljava/lang/Boolean;

    .line 643
    iput-object p2, p0, Lru/somecompany/dreamcatcher/catcher$ProvidersStatus;->GPS:Ljava/lang/Boolean;

    .line 644
    iput-object p3, p0, Lru/somecompany/dreamcatcher/catcher$ProvidersStatus;->NETWORK:Ljava/lang/Boolean;

    return-void
.end method
