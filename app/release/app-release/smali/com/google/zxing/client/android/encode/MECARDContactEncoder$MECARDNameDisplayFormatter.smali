.class Lcom/google/zxing/client/android/encode/MECARDContactEncoder$MECARDNameDisplayFormatter;
.super Ljava/lang/Object;
.source "MECARDContactEncoder.java"

# interfaces
.implements Lcom/google/zxing/client/android/encode/Formatter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/client/android/encode/MECARDContactEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MECARDNameDisplayFormatter"
.end annotation


# static fields
.field private static final COMMA:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ","

    .line 90
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/encode/MECARDContactEncoder$MECARDNameDisplayFormatter;->COMMA:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/zxing/client/android/encode/MECARDContactEncoder$1;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/google/zxing/client/android/encode/MECARDContactEncoder$MECARDNameDisplayFormatter;-><init>()V

    return-void
.end method


# virtual methods
.method public format(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .locals 0

    .line 93
    sget-object p2, Lcom/google/zxing/client/android/encode/MECARDContactEncoder$MECARDNameDisplayFormatter;->COMMA:Ljava/util/regex/Pattern;

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
