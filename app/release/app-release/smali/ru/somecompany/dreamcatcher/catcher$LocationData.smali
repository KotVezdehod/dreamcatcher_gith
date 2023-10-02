.class public Lru/somecompany/dreamcatcher/catcher$LocationData;
.super Ljava/lang/Object;
.source "catcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/somecompany/dreamcatcher/catcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocationData"
.end annotation


# instance fields
.field accuracy:D

.field altitude:D

.field latitude:D

.field longitude:D

.field provider:Ljava/lang/String;

.field speed:D

.field final synthetic this$0:Lru/somecompany/dreamcatcher/catcher;


# direct methods
.method public constructor <init>(Lru/somecompany/dreamcatcher/catcher;DDDDDLjava/lang/String;)V
    .locals 2

    .line 543
    iput-object p1, p0, Lru/somecompany/dreamcatcher/catcher$LocationData;->this$0:Lru/somecompany/dreamcatcher/catcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 535
    iput-wide v0, p0, Lru/somecompany/dreamcatcher/catcher$LocationData;->longitude:D

    .line 536
    iput-wide v0, p0, Lru/somecompany/dreamcatcher/catcher$LocationData;->latitude:D

    .line 537
    iput-wide v0, p0, Lru/somecompany/dreamcatcher/catcher$LocationData;->altitude:D

    .line 538
    iput-wide v0, p0, Lru/somecompany/dreamcatcher/catcher$LocationData;->accuracy:D

    .line 539
    iput-wide v0, p0, Lru/somecompany/dreamcatcher/catcher$LocationData;->speed:D

    const-string p1, ""

    .line 540
    iput-object p1, p0, Lru/somecompany/dreamcatcher/catcher$LocationData;->provider:Ljava/lang/String;

    .line 544
    iput-wide p2, p0, Lru/somecompany/dreamcatcher/catcher$LocationData;->longitude:D

    .line 545
    iput-wide p4, p0, Lru/somecompany/dreamcatcher/catcher$LocationData;->latitude:D

    .line 546
    iput-wide p6, p0, Lru/somecompany/dreamcatcher/catcher$LocationData;->altitude:D

    .line 547
    iput-wide p8, p0, Lru/somecompany/dreamcatcher/catcher$LocationData;->speed:D

    .line 548
    iput-wide p10, p0, Lru/somecompany/dreamcatcher/catcher$LocationData;->accuracy:D

    .line 549
    iput-object p12, p0, Lru/somecompany/dreamcatcher/catcher$LocationData;->provider:Ljava/lang/String;

    return-void
.end method
