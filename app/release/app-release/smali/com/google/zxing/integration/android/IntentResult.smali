.class public final Lcom/google/zxing/integration/android/IntentResult;
.super Ljava/lang/Object;
.source "IntentResult.java"


# instance fields
.field private final contents:Ljava/lang/String;

.field private final errorCorrectionLevel:Ljava/lang/String;

.field private final formatName:Ljava/lang/String;

.field private final orientation:Ljava/lang/Integer;

.field private final rawBytes:[B


# direct methods
.method constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 33
    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/integration/android/IntentResult;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/google/zxing/integration/android/IntentResult;->contents:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/google/zxing/integration/android/IntentResult;->formatName:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/google/zxing/integration/android/IntentResult;->rawBytes:[B

    .line 44
    iput-object p4, p0, Lcom/google/zxing/integration/android/IntentResult;->orientation:Ljava/lang/Integer;

    .line 45
    iput-object p5, p0, Lcom/google/zxing/integration/android/IntentResult;->errorCorrectionLevel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContents()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/google/zxing/integration/android/IntentResult;->contents:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCorrectionLevel()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/google/zxing/integration/android/IntentResult;->errorCorrectionLevel:Ljava/lang/String;

    return-object v0
.end method

.method public getFormatName()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/google/zxing/integration/android/IntentResult;->formatName:Ljava/lang/String;

    return-object v0
.end method

.method public getOrientation()Ljava/lang/Integer;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/google/zxing/integration/android/IntentResult;->orientation:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRawBytes()[B
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/google/zxing/integration/android/IntentResult;->rawBytes:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Format: "

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/zxing/integration/android/IntentResult;->formatName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "Contents: "

    .line 87
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/zxing/integration/android/IntentResult;->contents:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    iget-object v2, p0, Lcom/google/zxing/integration/android/IntentResult;->rawBytes:[B

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    array-length v2, v2

    :goto_0
    const-string v3, "Raw bytes: ("

    .line 89
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes)\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Orientation: "

    .line 90
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/zxing/integration/android/IntentResult;->orientation:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "EC level: "

    .line 91
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/zxing/integration/android/IntentResult;->errorCorrectionLevel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
