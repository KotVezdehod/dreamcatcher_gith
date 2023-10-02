.class public final Lcom/google/zxing/client/android/PreferencesActivity;
.super Landroid/app/Activity;
.source "PreferencesActivity.java"


# static fields
.field public static final KEY_AUTO_FOCUS:Ljava/lang/String; = "zxing_preferences_auto_focus"

.field public static final KEY_AUTO_OPEN_WEB:Ljava/lang/String; = "zxing_preferences_auto_open_web"

.field public static final KEY_BULK_MODE:Ljava/lang/String; = "zxing_preferences_bulk_mode"

.field public static final KEY_COPY_TO_CLIPBOARD:Ljava/lang/String; = "zxing_preferences_copy_to_clipboard"

.field public static final KEY_CUSTOM_PRODUCT_SEARCH:Ljava/lang/String; = "zxing_preferences_custom_product_search"

.field public static final KEY_DECODE_1D_INDUSTRIAL:Ljava/lang/String; = "zxing_preferences_decode_1D_industrial"

.field public static final KEY_DECODE_1D_PRODUCT:Ljava/lang/String; = "zxing_preferences_decode_1D_product"

.field public static final KEY_DECODE_AZTEC:Ljava/lang/String; = "zxing_preferences_decode_Aztec"

.field public static final KEY_DECODE_DATA_MATRIX:Ljava/lang/String; = "zxing_preferences_decode_Data_Matrix"

.field public static final KEY_DECODE_PDF417:Ljava/lang/String; = "zxing_preferences_decode_PDF417"

.field public static final KEY_DECODE_QR:Ljava/lang/String; = "zxing_preferences_decode_QR"

.field public static final KEY_DISABLE_AUTO_ORIENTATION:Ljava/lang/String; = "zxing_preferences_orientation"

.field public static final KEY_DISABLE_BARCODE_SCENE_MODE:Ljava/lang/String; = "zxing_preferences_disable_barcode_scene_mode"

.field public static final KEY_DISABLE_CONTINUOUS_FOCUS:Ljava/lang/String; = "zxing_preferences_disable_continuous_focus"

.field public static final KEY_DISABLE_EXPOSURE:Ljava/lang/String; = "zxing_preferences_disable_exposure"

.field public static final KEY_DISABLE_METERING:Ljava/lang/String; = "zxing_preferences_disable_metering"

.field public static final KEY_FRONT_LIGHT_MODE:Ljava/lang/String; = "zxing_preferences_front_light_mode"

.field public static final KEY_INVERT_SCAN:Ljava/lang/String; = "zxing_preferences_invert_scan"

.field public static final KEY_PLAY_BEEP:Ljava/lang/String; = "zxing_preferences_play_beep"

.field public static final KEY_REMEMBER_DUPLICATES:Ljava/lang/String; = "zxing_preferences_remember_duplicates"

.field public static final KEY_SEARCH_COUNTRY:Ljava/lang/String; = "zxing_preferences_search_country"

.field public static final KEY_SUPPLEMENTAL:Ljava/lang/String; = "zxing_preferences_supplemental"

.field public static final KEY_VIBRATE:Ljava/lang/String; = "zxing_preferences_vibrate"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/google/zxing/client/android/PreferencesActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    new-instance v0, Lcom/google/zxing/client/android/PreferencesFragment;

    invoke-direct {v0}, Lcom/google/zxing/client/android/PreferencesFragment;-><init>()V

    const v1, 0x1020002

    invoke-virtual {p1, v1, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method
