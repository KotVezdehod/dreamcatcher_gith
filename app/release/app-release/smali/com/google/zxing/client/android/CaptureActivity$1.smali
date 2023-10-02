.class Lcom/google/zxing/client/android/CaptureActivity$1;
.super Ljava/lang/Object;
.source "CaptureActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/zxing/client/android/CaptureActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/zxing/client/android/CaptureActivity;


# direct methods
.method constructor <init>(Lcom/google/zxing/client/android/CaptureActivity;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/google/zxing/client/android/CaptureActivity$1;->this$0:Lcom/google/zxing/client/android/CaptureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 143
    iget-object p1, p0, Lcom/google/zxing/client/android/CaptureActivity$1;->this$0:Lcom/google/zxing/client/android/CaptureActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/zxing/client/android/CaptureActivity;->setResult(I)V

    .line 144
    iget-object p1, p0, Lcom/google/zxing/client/android/CaptureActivity$1;->this$0:Lcom/google/zxing/client/android/CaptureActivity;

    invoke-virtual {p1}, Lcom/google/zxing/client/android/CaptureActivity;->finish()V

    return-void
.end method
