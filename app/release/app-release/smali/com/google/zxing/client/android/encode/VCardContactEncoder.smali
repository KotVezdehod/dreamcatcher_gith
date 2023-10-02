.class final Lcom/google/zxing/client/android/encode/VCardContactEncoder;
.super Lcom/google/zxing/client/android/encode/ContactEncoder;
.source "VCardContactEncoder.java"


# static fields
.field private static final TERMINATOR:C = '\n'


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/google/zxing/client/android/encode/ContactEncoder;-><init>()V

    return-void
.end method

.method static buildPhoneMetadata(Ljava/util/Collection;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 80
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 83
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 84
    :goto_0
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 85
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-gt v3, v2, :cond_1

    .line 86
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 88
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 89
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    const-string v5, "TYPE"

    .line 91
    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 93
    invoke-static {v3}, Lcom/google/zxing/client/android/encode/VCardContactEncoder;->maybeIntValue(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-nez v5, :cond_2

    .line 95
    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 97
    :cond_2
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/zxing/client/android/encode/VCardContactEncoder;->vCardPurposeLabelForAndroidType(I)Ljava/lang/String;

    move-result-object v3

    .line 98
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lcom/google/zxing/client/android/encode/VCardContactEncoder;->vCardContextLabelForAndroidType(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v3, :cond_3

    .line 100
    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz v5, :cond_4

    .line 103
    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-object v1

    :cond_6
    :goto_2
    return-object v0
.end method

.method private static maybeIntValue(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0

    .line 113
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static vCardContextLabelForAndroidType(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0x11

    if-eq p0, v0, :cond_0

    const/16 v0, 0x12

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string p0, "home"

    return-object p0

    :cond_0
    :pswitch_1
    const-string p0, "work"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static vCardPurposeLabelForAndroidType(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_3

    const/4 v0, 0x5

    if-eq p0, v0, :cond_3

    const/4 v0, 0x6

    if-eq p0, v0, :cond_2

    const/16 v0, 0xd

    if-eq p0, v0, :cond_3

    const/16 v0, 0x10

    if-eq p0, v0, :cond_1

    const/16 v0, 0x12

    if-eq p0, v0, :cond_2

    const/16 v0, 0x14

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "text"

    return-object p0

    :cond_1
    const-string p0, "textphone"

    return-object p0

    :cond_2
    const-string p0, "pager"

    return-object p0

    :cond_3
    const-string p0, "fax"

    return-object p0
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

    .line 47
    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v0, 0x64

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "BEGIN:VCARD"

    .line 48
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "VERSION:3.0"

    .line 49
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 53
    new-instance v11, Lcom/google/zxing/client/android/encode/VCardFieldFormatter;

    invoke-direct {v11}, Lcom/google/zxing/client/android/encode/VCardFieldFormatter;-><init>()V

    const-string v2, "N"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v7, 0xa

    move-object v0, v8

    move-object v1, v10

    move-object v3, p1

    move-object v6, v11

    .line 55
    invoke-static/range {v0 .. v7}, Lcom/google/zxing/client/android/encode/VCardContactEncoder;->appendUpToUnique(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/List;ILcom/google/zxing/client/android/encode/Formatter;Lcom/google/zxing/client/android/encode/Formatter;C)V

    const-string v2, "ORG"

    const/16 v5, 0xa

    move-object v3, p2

    move-object v4, v11

    .line 57
    invoke-static/range {v0 .. v5}, Lcom/google/zxing/client/android/encode/VCardContactEncoder;->append(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lcom/google/zxing/client/android/encode/Formatter;C)V

    const-string v2, "ADR"

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v3, p3

    .line 59
    invoke-static/range {v0 .. v7}, Lcom/google/zxing/client/android/encode/VCardContactEncoder;->appendUpToUnique(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/List;ILcom/google/zxing/client/android/encode/Formatter;Lcom/google/zxing/client/android/encode/Formatter;C)V

    .line 61
    invoke-static/range {p4 .. p5}, Lcom/google/zxing/client/android/encode/VCardContactEncoder;->buildPhoneMetadata(Ljava/util/Collection;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 62
    new-instance v5, Lcom/google/zxing/client/android/encode/VCardTelDisplayFormatter;

    invoke-direct {v5, v0}, Lcom/google/zxing/client/android/encode/VCardTelDisplayFormatter;-><init>(Ljava/util/List;)V

    new-instance v6, Lcom/google/zxing/client/android/encode/VCardFieldFormatter;

    invoke-direct {v6, v0}, Lcom/google/zxing/client/android/encode/VCardFieldFormatter;-><init>(Ljava/util/List;)V

    const-string v2, "TEL"

    const v4, 0x7fffffff

    move-object v0, v8

    move-object/from16 v3, p4

    invoke-static/range {v0 .. v7}, Lcom/google/zxing/client/android/encode/VCardContactEncoder;->appendUpToUnique(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/List;ILcom/google/zxing/client/android/encode/Formatter;Lcom/google/zxing/client/android/encode/Formatter;C)V

    const-string v2, "EMAIL"

    const/4 v5, 0x0

    move-object/from16 v3, p6

    move-object v6, v11

    .line 66
    invoke-static/range {v0 .. v7}, Lcom/google/zxing/client/android/encode/VCardContactEncoder;->appendUpToUnique(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/List;ILcom/google/zxing/client/android/encode/Formatter;Lcom/google/zxing/client/android/encode/Formatter;C)V

    const-string v2, "URL"

    move-object/from16 v3, p7

    .line 69
    invoke-static/range {v0 .. v7}, Lcom/google/zxing/client/android/encode/VCardContactEncoder;->appendUpToUnique(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/List;ILcom/google/zxing/client/android/encode/Formatter;Lcom/google/zxing/client/android/encode/Formatter;C)V

    const-string v0, "NOTE"

    const/16 v1, 0xa

    move-object p1, v8

    move-object p2, v10

    move-object p3, v0

    move-object/from16 p4, p8

    move-object/from16 p5, v11

    move/from16 p6, v1

    .line 72
    invoke-static/range {p1 .. p6}, Lcom/google/zxing/client/android/encode/VCardContactEncoder;->append(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lcom/google/zxing/client/android/encode/Formatter;C)V

    const-string v0, "END:VCARD"

    .line 74
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 76
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method
