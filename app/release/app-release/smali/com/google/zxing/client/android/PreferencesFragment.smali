.class public final Lcom/google/zxing/client/android/PreferencesFragment;
.super Landroid/preference/PreferenceFragment;
.source "PreferencesFragment.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private checkBoxPrefs:[Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private disableLastCheckedPref()V
    .locals 9

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/zxing/client/android/PreferencesFragment;->checkBoxPrefs:[Landroid/preference/CheckBoxPreference;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 71
    iget-object v1, p0, Lcom/google/zxing/client/android/PreferencesFragment;->checkBoxPrefs:[Landroid/preference/CheckBoxPreference;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 72
    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 73
    invoke-interface {v0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 76
    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 77
    :goto_1
    iget-object v4, p0, Lcom/google/zxing/client/android/PreferencesFragment;->checkBoxPrefs:[Landroid/preference/CheckBoxPreference;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_5

    aget-object v7, v4, v6

    if-eqz v1, :cond_4

    .line 78
    invoke-interface {v0, v7}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v8, 0x1

    :goto_4
    invoke-virtual {v7, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method private static varargs findDecodePrefs(Landroid/preference/PreferenceScreen;[Ljava/lang/String;)[Landroid/preference/CheckBoxPreference;
    .locals 3

    .line 57
    array-length v0, p1

    new-array v0, v0, [Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    .line 58
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 59
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 41
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 42
    sget p1, Lcom/google/zxing/client/android/R$xml;->zxing_preferences:I

    invoke-virtual {p0, p1}, Lcom/google/zxing/client/android/PreferencesFragment;->addPreferencesFromResource(I)V

    .line 44
    invoke-virtual {p0}, Lcom/google/zxing/client/android/PreferencesFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    .line 45
    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    const-string v1, "zxing_preferences_decode_1D_product"

    const-string v2, "zxing_preferences_decode_1D_industrial"

    const-string v3, "zxing_preferences_decode_QR"

    const-string v4, "zxing_preferences_decode_Data_Matrix"

    const-string v5, "zxing_preferences_decode_Aztec"

    const-string v6, "zxing_preferences_decode_PDF417"

    .line 46
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/zxing/client/android/PreferencesFragment;->findDecodePrefs(Landroid/preference/PreferenceScreen;[Ljava/lang/String;)[Landroid/preference/CheckBoxPreference;

    move-result-object p1

    iput-object p1, p0, Lcom/google/zxing/client/android/PreferencesFragment;->checkBoxPrefs:[Landroid/preference/CheckBoxPreference;

    .line 53
    invoke-direct {p0}, Lcom/google/zxing/client/android/PreferencesFragment;->disableLastCheckedPref()V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/google/zxing/client/android/PreferencesFragment;->disableLastCheckedPref()V

    return-void
.end method
