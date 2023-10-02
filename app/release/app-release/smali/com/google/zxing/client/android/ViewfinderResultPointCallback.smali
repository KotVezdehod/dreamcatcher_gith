.class final Lcom/google/zxing/client/android/ViewfinderResultPointCallback;
.super Ljava/lang/Object;
.source "ViewfinderResultPointCallback.java"

# interfaces
.implements Lcom/google/zxing/ResultPointCallback;


# instance fields
.field private final viewfinderView:Lcom/google/zxing/client/android/ViewfinderView;


# direct methods
.method constructor <init>(Lcom/google/zxing/client/android/ViewfinderView;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/google/zxing/client/android/ViewfinderResultPointCallback;->viewfinderView:Lcom/google/zxing/client/android/ViewfinderView;

    return-void
.end method


# virtual methods
.method public foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/google/zxing/client/android/ViewfinderResultPointCallback;->viewfinderView:Lcom/google/zxing/client/android/ViewfinderView;

    invoke-virtual {v0, p1}, Lcom/google/zxing/client/android/ViewfinderView;->addPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    return-void
.end method
