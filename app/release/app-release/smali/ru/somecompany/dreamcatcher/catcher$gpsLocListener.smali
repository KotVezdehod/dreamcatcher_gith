.class public Lru/somecompany/dreamcatcher/catcher$gpsLocListener;
.super Ljava/lang/Object;
.source "catcher.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/somecompany/dreamcatcher/catcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "gpsLocListener"
.end annotation


# instance fields
.field final synthetic this$0:Lru/somecompany/dreamcatcher/catcher;


# direct methods
.method public constructor <init>(Lru/somecompany/dreamcatcher/catcher;)V
    .locals 0

    .line 649
    iput-object p1, p0, Lru/somecompany/dreamcatcher/catcher$gpsLocListener;->this$0:Lru/somecompany/dreamcatcher/catcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 23

    move-object/from16 v0, p0

    .line 654
    iget-object v1, v0, Lru/somecompany/dreamcatcher/catcher$gpsLocListener;->this$0:Lru/somecompany/dreamcatcher/catcher;

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iput-wide v2, v1, Lru/somecompany/dreamcatcher/catcher;->gpsLatitude:D

    .line 655
    iget-object v1, v0, Lru/somecompany/dreamcatcher/catcher$gpsLocListener;->this$0:Lru/somecompany/dreamcatcher/catcher;

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    iput-wide v2, v1, Lru/somecompany/dreamcatcher/catcher;->gpsLongitude:D

    .line 656
    iget-object v1, v0, Lru/somecompany/dreamcatcher/catcher$gpsLocListener;->this$0:Lru/somecompany/dreamcatcher/catcher;

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v2

    iput-wide v2, v1, Lru/somecompany/dreamcatcher/catcher;->gpsAltitude:D

    .line 657
    iget-object v1, v0, Lru/somecompany/dreamcatcher/catcher$gpsLocListener;->this$0:Lru/somecompany/dreamcatcher/catcher;

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getSpeed()F

    move-result v2

    float-to-double v2, v2

    iput-wide v2, v1, Lru/somecompany/dreamcatcher/catcher;->gpsSpeed:D

    .line 658
    iget-object v1, v0, Lru/somecompany/dreamcatcher/catcher$gpsLocListener;->this$0:Lru/somecompany/dreamcatcher/catcher;

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    float-to-double v2, v2

    iput-wide v2, v1, Lru/somecompany/dreamcatcher/catcher;->gpsAccuracy:D

    .line 660
    iget-object v1, v0, Lru/somecompany/dreamcatcher/catcher$gpsLocListener;->this$0:Lru/somecompany/dreamcatcher/catcher;

    invoke-static {v1}, Lru/somecompany/dreamcatcher/catcher;->access$100(Lru/somecompany/dreamcatcher/catcher;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 661
    iget-object v1, v0, Lru/somecompany/dreamcatcher/catcher$gpsLocListener;->this$0:Lru/somecompany/dreamcatcher/catcher;

    invoke-static {v1}, Lru/somecompany/dreamcatcher/catcher;->access$300(Lru/somecompany/dreamcatcher/catcher;)Landroid/location/LocationManager;

    move-result-object v1

    iget-object v2, v0, Lru/somecompany/dreamcatcher/catcher$gpsLocListener;->this$0:Lru/somecompany/dreamcatcher/catcher;

    invoke-static {v2}, Lru/somecompany/dreamcatcher/catcher;->access$200(Lru/somecompany/dreamcatcher/catcher;)Lru/somecompany/dreamcatcher/catcher$gpsLocListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 665
    :cond_0
    iget-object v1, v0, Lru/somecompany/dreamcatcher/catcher$gpsLocListener;->this$0:Lru/somecompany/dreamcatcher/catcher;

    iget-object v1, v1, Lru/somecompany/dreamcatcher/catcher;->gson:Lcom/google/gson/Gson;

    new-instance v8, Lru/somecompany/dreamcatcher/catcher$ReturnResult;

    iget-object v3, v0, Lru/somecompany/dreamcatcher/catcher$gpsLocListener;->this$0:Lru/somecompany/dreamcatcher/catcher;

    const/4 v4, 0x1

    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/Object;

    new-instance v5, Lru/somecompany/dreamcatcher/catcher$LocationData;

    iget-wide v11, v3, Lru/somecompany/dreamcatcher/catcher;->gpsLongitude:D

    iget-object v6, v0, Lru/somecompany/dreamcatcher/catcher$gpsLocListener;->this$0:Lru/somecompany/dreamcatcher/catcher;

    iget-wide v13, v6, Lru/somecompany/dreamcatcher/catcher;->gpsLatitude:D

    iget-object v6, v0, Lru/somecompany/dreamcatcher/catcher$gpsLocListener;->this$0:Lru/somecompany/dreamcatcher/catcher;

    iget-wide v9, v6, Lru/somecompany/dreamcatcher/catcher;->gpsAltitude:D

    iget-object v6, v0, Lru/somecompany/dreamcatcher/catcher$gpsLocListener;->this$0:Lru/somecompany/dreamcatcher/catcher;

    move-object/from16 p1, v3

    iget-wide v2, v6, Lru/somecompany/dreamcatcher/catcher;->gpsSpeed:D

    iget-object v6, v0, Lru/somecompany/dreamcatcher/catcher$gpsLocListener;->this$0:Lru/somecompany/dreamcatcher/catcher;

    move-object/from16 v22, v1

    iget-wide v0, v6, Lru/somecompany/dreamcatcher/catcher;->gpsAccuracy:D

    const-string v21, "GPS"

    move-wide v15, v9

    move-object v9, v5

    move-object/from16 v10, p1

    move-wide/from16 v17, v2

    move-wide/from16 v19, v0

    invoke-direct/range {v9 .. v21}, Lru/somecompany/dreamcatcher/catcher$LocationData;-><init>(Lru/somecompany/dreamcatcher/catcher;DDDDDLjava/lang/String;)V

    const/4 v0, 0x0

    aput-object v5, v7, v0

    const-string v5, ""

    const-string v6, ""

    move-object v2, v8

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lru/somecompany/dreamcatcher/catcher$ReturnResult;-><init>(Lru/somecompany/dreamcatcher/catcher;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p0

    .line 668
    iget-object v2, v1, Lru/somecompany/dreamcatcher/catcher$gpsLocListener;->this$0:Lru/somecompany/dreamcatcher/catcher;

    invoke-static {v2}, Lru/somecompany/dreamcatcher/catcher;->access$000(Lru/somecompany/dreamcatcher/catcher;)J

    move-result-wide v2

    iget-object v4, v1, Lru/somecompany/dreamcatcher/catcher$gpsLocListener;->this$0:Lru/somecompany/dreamcatcher/catcher;

    iget-object v4, v4, Lru/somecompany/dreamcatcher/catcher;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v4, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lru/somecompany/dreamcatcher/catcher;->OnLocationReturned(JLjava/lang/String;)V

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
