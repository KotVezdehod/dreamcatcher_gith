.class final Lcom/google/zxing/client/android/encode/MECARDContactEncoder;
.super Lcom/google/zxing/client/android/encode/ContactEncoder;
.source "MECARDContactEncoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/client/android/encode/MECARDContactEncoder$MECARDNameDisplayFormatter;,
        Lcom/google/zxing/client/android/encode/MECARDContactEncoder$MECARDTelDisplayFormatter;,
        Lcom/google/zxing/client/android/encode/MECARDContactEncoder$MECARDFieldFormatter;
    }
.end annotation


# static fields
.field private static final TERMINATOR:C = ';'


# direct methods
.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/google/zxing/client/android/encode/ContactEncoder;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)[Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 42
    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v0, 0x64

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "MECARD:"

    .line 43
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 47
    new-instance v10, Lcom/google/zxing/client/android/encode/MECARDContactEncoder$MECARDFieldFormatter;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Lcom/google/zxing/client/android/encode/MECARDContactEncoder$MECARDFieldFormatter;-><init>(Lcom/google/zxing/client/android/encode/MECARDContactEncoder$1;)V

    .line 49
    new-instance v5, Lcom/google/zxing/client/android/encode/MECARDContactEncoder$MECARDNameDisplayFormatter;

    invoke-direct {v5, v11}, Lcom/google/zxing/client/android/encode/MECARDContactEncoder$MECARDNameDisplayFormatter;-><init>(Lcom/google/zxing/client/android/encode/MECARDContactEncoder$1;)V

    const-string v2, "N"

    const/4 v4, 0x1

    const/16 v7, 0x3b

    move-object v0, v8

    move-object v1, v9

    move-object v3, p1

    move-object v6, v10

    invoke-static/range {v0 .. v7}, Lcom/google/zxing/client/android/encode/MECARDContactEncoder;->appendUpToUnique(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/List;ILcom/google/zxing/client/android/encode/Formatter;Lcom/google/zxing/client/android/encode/Formatter;C)V

    const-string v2, "ORG"

    const/16 v5, 0x3b

    move-object v3, p2

    move-object v4, v10

    .line 52
    invoke-static/range {v0 .. v5}, Lcom/google/zxing/client/android/encode/MECARDContactEncoder;->append(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lcom/google/zxing/client/android/encode/Formatter;C)V

    const-string v2, "ADR"

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v3, p3

    .line 54
    invoke-static/range {v0 .. v7}, Lcom/google/zxing/client/android/encode/MECARDContactEncoder;->appendUpToUnique(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/List;ILcom/google/zxing/client/android/encode/Formatter;Lcom/google/zxing/client/android/encode/Formatter;C)V

    .line 56
    new-instance v5, Lcom/google/zxing/client/android/encode/MECARDContactEncoder$MECARDTelDisplayFormatter;

    invoke-direct {v5, v11}, Lcom/google/zxing/client/android/encode/MECARDContactEncoder$MECARDTelDisplayFormatter;-><init>(Lcom/google/zxing/client/android/encode/MECARDContactEncoder$1;)V

    const-string v2, "TEL"

    const v4, 0x7fffffff

    move-object/from16 v3, p4

    invoke-static/range {v0 .. v7}, Lcom/google/zxing/client/android/encode/MECARDContactEncoder;->appendUpToUnique(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/List;ILcom/google/zxing/client/android/encode/Formatter;Lcom/google/zxing/client/android/encode/Formatter;C)V

    const-string v2, "EMAIL"

    const/4 v5, 0x0

    move-object/from16 v3, p6

    .line 59
    invoke-static/range {v0 .. v7}, Lcom/google/zxing/client/android/encode/MECARDContactEncoder;->appendUpToUnique(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/List;ILcom/google/zxing/client/android/encode/Formatter;Lcom/google/zxing/client/android/encode/Formatter;C)V

    const-string v2, "URL"

    move-object/from16 v3, p7

    .line 62
    invoke-static/range {v0 .. v7}, Lcom/google/zxing/client/android/encode/MECARDContactEncoder;->appendUpToUnique(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/List;ILcom/google/zxing/client/android/encode/Formatter;Lcom/google/zxing/client/android/encode/Formatter;C)V

    const-string v0, "NOTE"

    const/16 v1, 0x3b

    move-object p1, v8

    move-object p2, v9

    move-object p3, v0

    move-object/from16 p4, p8

    move-object/from16 p5, v10

    move/from16 p6, v1

    .line 65
    invoke-static/range {p1 .. p6}, Lcom/google/zxing/client/android/encode/MECARDContactEncoder;->append(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lcom/google/zxing/client/android/encode/Formatter;C)V

    const/16 v0, 0x3b

    .line 67
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 69
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method
