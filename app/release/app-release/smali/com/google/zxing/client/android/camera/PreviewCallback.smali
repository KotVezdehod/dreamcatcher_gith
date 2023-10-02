.class final Lcom/google/zxing/client/android/camera/PreviewCallback;
.super Ljava/lang/Object;
.source "PreviewCallback.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "PreviewCallback"


# instance fields
.field private final configManager:Lcom/google/zxing/client/android/camera/CameraConfigurationManager;

.field private previewHandler:Landroid/os/Handler;

.field private previewMessage:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/google/zxing/client/android/camera/CameraConfigurationManager;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/google/zxing/client/android/camera/PreviewCallback;->configManager:Lcom/google/zxing/client/android/camera/CameraConfigurationManager;

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 3

    .line 44
    iget-object p2, p0, Lcom/google/zxing/client/android/camera/PreviewCallback;->configManager:Lcom/google/zxing/client/android/camera/CameraConfigurationManager;

    invoke-virtual {p2}, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->getCameraResolution()Landroid/graphics/Point;

    move-result-object p2

    .line 45
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/PreviewCallback;->previewHandler:Landroid/os/Handler;

    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    .line 47
    iget v1, p0, Lcom/google/zxing/client/android/camera/PreviewCallback;->previewMessage:I

    iget v2, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2, p2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 49
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    const/4 p1, 0x0

    .line 50
    iput-object p1, p0, Lcom/google/zxing/client/android/camera/PreviewCallback;->previewHandler:Landroid/os/Handler;

    goto :goto_0

    .line 52
    :cond_0
    sget-object p1, Lcom/google/zxing/client/android/camera/PreviewCallback;->TAG:Ljava/lang/String;

    const-string p2, "Got preview callback, but no handler or resolution available"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method setHandler(Landroid/os/Handler;I)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/google/zxing/client/android/camera/PreviewCallback;->previewHandler:Landroid/os/Handler;

    .line 39
    iput p2, p0, Lcom/google/zxing/client/android/camera/PreviewCallback;->previewMessage:I

    return-void
.end method
