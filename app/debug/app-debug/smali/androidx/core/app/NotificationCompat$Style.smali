.class public abstract Landroidx/core/app/NotificationCompat$Style;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Style"
.end annotation


# instance fields
.field mBigContentTitle:Ljava/lang/CharSequence;

.field protected mBuilder:Landroidx/core/app/NotificationCompat$Builder;

.field mSummaryText:Ljava/lang/CharSequence;

.field mSummaryTextSet:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1760
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1768
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/core/app/NotificationCompat$Style;->mSummaryTextSet:Z

    return-void
.end method

.method private calculateTopPadding()I
    .locals 7

    .line 2069
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2070
    .local v0, "resources":Landroid/content/res/Resources;
    sget v1, Landroidx/core/R$dimen;->notification_top_pad:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 2071
    .local v1, "padding":I
    sget v2, Landroidx/core/R$dimen;->notification_top_pad_large_text:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 2073
    .local v2, "largePadding":I
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->fontScale:F

    .line 2074
    .local v3, "fontScale":F
    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3fa66666    # 1.3f

    invoke-static {v3, v4, v5}, Landroidx/core/app/NotificationCompat$Style;->constrain(FFF)F

    move-result v5

    sub-float/2addr v5, v4

    const v6, 0x3e999998    # 0.29999995f

    div-float/2addr v5, v6

    .line 2078
    .local v5, "largeFactor":F
    sub-float/2addr v4, v5

    int-to-float v6, v1

    mul-float v4, v4, v6

    int-to-float v6, v2

    mul-float v6, v6, v5

    add-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    return v4
.end method

.method private static constrain(FFF)F
    .locals 1
    .param p0, "amount"    # F
    .param p1, "low"    # F
    .param p2, "high"    # F

    .line 2082
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    cmpl-float v0, p0, p2

    if-lez v0, :cond_1

    move v0, p2

    goto :goto_0

    :cond_1
    move v0, p0

    :goto_0
    return v0
.end method

.method private createColoredBitmap(III)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "iconId"    # I
    .param p2, "color"    # I
    .param p3, "size"    # I

    .line 2010
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroidx/core/app/NotificationCompat$Style;->createColoredBitmap(Landroidx/core/graphics/drawable/IconCompat;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private createColoredBitmap(Landroidx/core/graphics/drawable/IconCompat;II)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "icon"    # Landroidx/core/graphics/drawable/IconCompat;
    .param p2, "color"    # I
    .param p3, "size"    # I

    .line 2015
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroidx/core/graphics/drawable/IconCompat;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2016
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez p3, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, p3

    .line 2017
    .local v1, "width":I
    :goto_0
    if-nez p3, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, p3

    .line 2018
    .local v2, "height":I
    :goto_1
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 2019
    .local v3, "resultBitmap":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2020
    if-eqz p2, :cond_2

    .line 2021
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, p2, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 2024
    :cond_2
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2025
    .local v4, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2026
    return-object v3
.end method

.method private createIconWithBackground(IIII)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "iconId"    # I
    .param p2, "size"    # I
    .param p3, "iconSize"    # I
    .param p4, "color"    # I

    .line 2031
    sget v0, Landroidx/core/R$drawable;->notification_icon_background:I

    .line 2032
    if-nez p4, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move v1, p4

    .line 2031
    :goto_0
    invoke-direct {p0, v0, v1, p2}, Landroidx/core/app/NotificationCompat$Style;->createColoredBitmap(III)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2033
    .local v0, "coloredBitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2034
    .local v1, "canvas":Landroid/graphics/Canvas;
    iget-object v2, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v2, v2, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 2035
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 2036
    sub-int v3, p2, p3

    div-int/lit8 v3, v3, 0x2

    .line 2037
    .local v3, "inset":I
    add-int v4, p3, v3

    add-int v5, p3, v3

    invoke-virtual {v2, v3, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2038
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    const/4 v5, -0x1

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 2039
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2040
    return-object v0
.end method

.method private hideNormalContent(Landroid/widget/RemoteViews;)V
    .locals 2
    .param p1, "outerView"    # Landroid/widget/RemoteViews;

    .line 2063
    sget v0, Landroidx/core/R$id;->title:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2064
    sget v0, Landroidx/core/R$id;->text2:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2065
    sget v0, Landroidx/core/R$id;->text:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2066
    return-void
.end method


# virtual methods
.method public addCompatExtras(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 1828
    return-void
.end method

.method public apply(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)V
    .locals 0
    .param p1, "builder"    # Landroidx/core/app/NotificationBuilderWithBuilderAccessor;

    .line 1796
    return-void
.end method

.method public applyStandardTemplate(ZIZ)Landroid/widget/RemoteViews;
    .locals 19
    .param p1, "showSmallIcon"    # Z
    .param p2, "resId"    # I
    .param p3, "fitIn1U"    # Z

    .line 1844
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v1, v1, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1845
    .local v1, "res":Landroid/content/res/Resources;
    new-instance v2, Landroid/widget/RemoteViews;

    iget-object v3, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v3, v3, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move/from16 v4, p2

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1846
    .local v2, "contentView":Landroid/widget/RemoteViews;
    const/4 v3, 0x0

    .line 1847
    .local v3, "showLine3":Z
    const/4 v5, 0x0

    .line 1849
    .local v5, "showLine2":Z
    iget-object v6, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v6}, Landroidx/core/app/NotificationCompat$Builder;->getPriority()I

    move-result v6

    const/4 v7, -0x1

    const/4 v12, 0x0

    if-ge v6, v7, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    move v13, v6

    .line 1850
    .local v13, "minPriority":Z
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    const/16 v14, 0x10

    if-lt v6, v14, :cond_2

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v6, v8, :cond_2

    .line 1852
    const-string v6, "setBackgroundResource"

    if-eqz v13, :cond_1

    .line 1853
    sget v9, Landroidx/core/R$id;->notification_background:I

    sget v10, Landroidx/core/R$drawable;->notification_bg_low:I

    invoke-virtual {v2, v9, v6, v10}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 1855
    sget v9, Landroidx/core/R$id;->icon:I

    sget v10, Landroidx/core/R$drawable;->notification_template_icon_low_bg:I

    invoke-virtual {v2, v9, v6, v10}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_1

    .line 1858
    :cond_1
    sget v9, Landroidx/core/R$id;->notification_background:I

    sget v10, Landroidx/core/R$drawable;->notification_bg:I

    invoke-virtual {v2, v9, v6, v10}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 1860
    sget v9, Landroidx/core/R$id;->icon:I

    sget v10, Landroidx/core/R$drawable;->notification_template_icon_bg:I

    invoke-virtual {v2, v9, v6, v10}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 1865
    :cond_2
    :goto_1
    iget-object v6, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v6, v6, Landroidx/core/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    const/16 v15, 0x8

    if-eqz v6, :cond_5

    .line 1868
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v14, :cond_3

    .line 1869
    sget v6, Landroidx/core/R$id;->icon:I

    invoke-virtual {v2, v6, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1870
    sget v6, Landroidx/core/R$id;->icon:I

    iget-object v9, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v9, v9, Landroidx/core/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v6, v9}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_2

    .line 1872
    :cond_3
    sget v6, Landroidx/core/R$id;->icon:I

    invoke-virtual {v2, v6, v15}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1874
    :goto_2
    if-eqz p1, :cond_7

    iget-object v6, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v6, v6, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v6, v6, Landroid/app/Notification;->icon:I

    if-eqz v6, :cond_7

    .line 1875
    sget v6, Landroidx/core/R$dimen;->notification_right_icon_size:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 1877
    .local v6, "backgroundSize":I
    sget v9, Landroidx/core/R$dimen;->notification_small_icon_background_padding:I

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    sub-int v9, v6, v9

    .line 1879
    .local v9, "iconSize":I
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v10, v8, :cond_4

    .line 1880
    iget-object v7, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v7, v7, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v7, v7, Landroid/app/Notification;->icon:I

    iget-object v10, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 1884
    invoke-virtual {v10}, Landroidx/core/app/NotificationCompat$Builder;->getColor()I

    move-result v10

    .line 1880
    invoke-direct {v0, v7, v6, v9, v10}, Landroidx/core/app/NotificationCompat$Style;->createIconWithBackground(IIII)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1885
    .local v7, "smallBit":Landroid/graphics/Bitmap;
    sget v10, Landroidx/core/R$id;->right_icon:I

    invoke-virtual {v2, v10, v7}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 1886
    .end local v7    # "smallBit":Landroid/graphics/Bitmap;
    goto :goto_3

    .line 1887
    :cond_4
    sget v10, Landroidx/core/R$id;->right_icon:I

    iget-object v11, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v11, v11, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v11, v11, Landroid/app/Notification;->icon:I

    invoke-virtual {v0, v11, v7}, Landroidx/core/app/NotificationCompat$Style;->createColoredBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v2, v10, v7}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 1890
    :goto_3
    sget v7, Landroidx/core/R$id;->right_icon:I

    invoke-virtual {v2, v7, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1891
    .end local v6    # "backgroundSize":I
    .end local v9    # "iconSize":I
    goto :goto_4

    .line 1892
    :cond_5
    if-eqz p1, :cond_7

    iget-object v6, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v6, v6, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v6, v6, Landroid/app/Notification;->icon:I

    if-eqz v6, :cond_7

    .line 1893
    sget v6, Landroidx/core/R$id;->icon:I

    invoke-virtual {v2, v6, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1894
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v8, :cond_6

    .line 1895
    sget v6, Landroidx/core/R$dimen;->notification_large_icon_width:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sget v7, Landroidx/core/R$dimen;->notification_big_circle_margin:I

    .line 1897
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    sub-int/2addr v6, v7

    .line 1898
    .restart local v6    # "backgroundSize":I
    sget v7, Landroidx/core/R$dimen;->notification_small_icon_size_as_large:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 1900
    .local v7, "iconSize":I
    iget-object v9, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v9, v9, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v9, v9, Landroid/app/Notification;->icon:I

    iget-object v10, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 1904
    invoke-virtual {v10}, Landroidx/core/app/NotificationCompat$Builder;->getColor()I

    move-result v10

    .line 1900
    invoke-direct {v0, v9, v6, v7, v10}, Landroidx/core/app/NotificationCompat$Style;->createIconWithBackground(IIII)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 1905
    .local v9, "smallBit":Landroid/graphics/Bitmap;
    sget v10, Landroidx/core/R$id;->icon:I

    invoke-virtual {v2, v10, v9}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 1906
    .end local v6    # "backgroundSize":I
    .end local v7    # "iconSize":I
    .end local v9    # "smallBit":Landroid/graphics/Bitmap;
    goto :goto_4

    .line 1907
    :cond_6
    sget v6, Landroidx/core/R$id;->icon:I

    iget-object v9, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v9, v9, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v9, v9, Landroid/app/Notification;->icon:I

    invoke-virtual {v0, v9, v7}, Landroidx/core/app/NotificationCompat$Style;->createColoredBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 1911
    :cond_7
    :goto_4
    iget-object v6, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v6, v6, Landroidx/core/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    if-eqz v6, :cond_8

    .line 1912
    sget v6, Landroidx/core/R$id;->title:I

    iget-object v7, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v7, v7, Landroidx/core/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1914
    :cond_8
    iget-object v6, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v6, v6, Landroidx/core/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    if-eqz v6, :cond_9

    .line 1915
    sget v6, Landroidx/core/R$id;->text:I

    iget-object v7, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v7, v7, Landroidx/core/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1916
    const/4 v3, 0x1

    .line 1919
    :cond_9
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v6, v8, :cond_a

    iget-object v6, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v6, v6, Landroidx/core/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_a

    const/4 v6, 0x1

    goto :goto_5

    :cond_a
    const/4 v6, 0x0

    .line 1920
    .local v6, "hasRightSide":Z
    :goto_5
    iget-object v7, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v7, v7, Landroidx/core/app/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    if-eqz v7, :cond_b

    .line 1921
    sget v7, Landroidx/core/R$id;->info:I

    iget-object v8, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v8, v8, Landroidx/core/app/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    invoke-virtual {v2, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1922
    sget v7, Landroidx/core/R$id;->info:I

    invoke-virtual {v2, v7, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1923
    const/4 v3, 0x1

    .line 1924
    const/4 v6, 0x1

    move v11, v6

    goto :goto_7

    .line 1925
    :cond_b
    iget-object v7, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget v7, v7, Landroidx/core/app/NotificationCompat$Builder;->mNumber:I

    if-lez v7, :cond_d

    .line 1926
    sget v7, Landroidx/core/R$integer;->status_bar_notification_info_maxnum:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 1928
    .local v7, "tooBig":I
    iget-object v8, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget v8, v8, Landroidx/core/app/NotificationCompat$Builder;->mNumber:I

    if-le v8, v7, :cond_c

    .line 1929
    sget v8, Landroidx/core/R$id;->info:I

    sget v9, Landroidx/core/R$string;->status_bar_notification_info_overflow:I

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_6

    .line 1932
    :cond_c
    invoke-static {}, Ljava/text/NumberFormat;->getIntegerInstance()Ljava/text/NumberFormat;

    move-result-object v8

    .line 1933
    .local v8, "f":Ljava/text/NumberFormat;
    sget v9, Landroidx/core/R$id;->info:I

    iget-object v10, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget v10, v10, Landroidx/core/app/NotificationCompat$Builder;->mNumber:I

    int-to-long v10, v10

    invoke-virtual {v8, v10, v11}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1935
    .end local v8    # "f":Ljava/text/NumberFormat;
    :goto_6
    sget v8, Landroidx/core/R$id;->info:I

    invoke-virtual {v2, v8, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1936
    const/4 v3, 0x1

    .line 1937
    const/4 v6, 0x1

    .line 1938
    .end local v7    # "tooBig":I
    move v11, v6

    goto :goto_7

    .line 1939
    :cond_d
    sget v7, Landroidx/core/R$id;->info:I

    invoke-virtual {v2, v7, v15}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    move v11, v6

    .line 1943
    .end local v6    # "hasRightSide":Z
    .local v11, "hasRightSide":Z
    :goto_7
    iget-object v6, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v6, v6, Landroidx/core/app/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;

    if-eqz v6, :cond_f

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v14, :cond_f

    .line 1944
    sget v6, Landroidx/core/R$id;->text:I

    iget-object v7, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v7, v7, Landroidx/core/app/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1945
    iget-object v6, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v6, v6, Landroidx/core/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    if-eqz v6, :cond_e

    .line 1946
    sget v6, Landroidx/core/R$id;->text2:I

    iget-object v7, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v7, v7, Landroidx/core/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1947
    sget v6, Landroidx/core/R$id;->text2:I

    invoke-virtual {v2, v6, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1948
    const/4 v5, 0x1

    move/from16 v16, v5

    goto :goto_8

    .line 1950
    :cond_e
    sget v6, Landroidx/core/R$id;->text2:I

    invoke-virtual {v2, v6, v15}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1956
    :cond_f
    move/from16 v16, v5

    .end local v5    # "showLine2":Z
    .local v16, "showLine2":Z
    :goto_8
    if-eqz v16, :cond_11

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v14, :cond_11

    .line 1957
    if-eqz p3, :cond_10

    .line 1959
    sget v5, Landroidx/core/R$dimen;->notification_subtext_size:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    .line 1961
    .local v5, "subTextSize":F
    sget v6, Landroidx/core/R$id;->text:I

    invoke-virtual {v2, v6, v12, v5}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    .line 1965
    .end local v5    # "subTextSize":F
    :cond_10
    sget v6, Landroidx/core/R$id;->line1:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v2

    invoke-virtual/range {v5 .. v10}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 1968
    :cond_11
    iget-object v5, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v5}, Landroidx/core/app/NotificationCompat$Builder;->getWhenIfShowing()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-eqz v9, :cond_14

    .line 1969
    iget-object v5, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-boolean v5, v5, Landroidx/core/app/NotificationCompat$Builder;->mUseChronometer:Z

    if-eqz v5, :cond_12

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v14, :cond_12

    .line 1970
    sget v5, Landroidx/core/R$id;->chronometer:I

    invoke-virtual {v2, v5, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1971
    sget v5, Landroidx/core/R$id;->chronometer:I

    iget-object v6, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 1972
    invoke-virtual {v6}, Landroidx/core/app/NotificationCompat$Builder;->getWhenIfShowing()J

    move-result-wide v6

    .line 1973
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    sub-long v8, v8, v17

    add-long/2addr v6, v8

    .line 1971
    const-string v8, "setBase"

    invoke-virtual {v2, v5, v8, v6, v7}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    .line 1974
    sget v5, Landroidx/core/R$id;->chronometer:I

    const-string v6, "setStarted"

    const/4 v7, 0x1

    invoke-virtual {v2, v5, v6, v7}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 1975
    iget-object v5, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-boolean v5, v5, Landroidx/core/app/NotificationCompat$Builder;->mChronometerCountDown:Z

    if-eqz v5, :cond_13

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x18

    if-lt v5, v6, :cond_13

    .line 1976
    sget v5, Landroidx/core/R$id;->chronometer:I

    iget-object v6, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-boolean v6, v6, Landroidx/core/app/NotificationCompat$Builder;->mChronometerCountDown:Z

    invoke-virtual {v2, v5, v6}, Landroid/widget/RemoteViews;->setChronometerCountDown(IZ)V

    goto :goto_9

    .line 1980
    :cond_12
    sget v5, Landroidx/core/R$id;->time:I

    invoke-virtual {v2, v5, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1981
    sget v5, Landroidx/core/R$id;->time:I

    iget-object v6, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v6}, Landroidx/core/app/NotificationCompat$Builder;->getWhenIfShowing()J

    move-result-wide v6

    const-string v8, "setTime"

    invoke-virtual {v2, v5, v8, v6, v7}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    .line 1983
    :cond_13
    :goto_9
    const/4 v11, 0x1

    .line 1985
    :cond_14
    sget v5, Landroidx/core/R$id;->right_side:I

    if-eqz v11, :cond_15

    const/4 v6, 0x0

    goto :goto_a

    :cond_15
    const/16 v6, 0x8

    :goto_a
    invoke-virtual {v2, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1986
    sget v5, Landroidx/core/R$id;->line3:I

    if-eqz v3, :cond_16

    goto :goto_b

    :cond_16
    const/16 v12, 0x8

    :goto_b
    invoke-virtual {v2, v5, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1987
    return-object v2
.end method

.method public build()Landroid/app/Notification;
    .locals 2

    .line 1780
    const/4 v0, 0x0

    .line 1781
    .local v0, "notification":Landroid/app/Notification;
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    if-eqz v1, :cond_0

    .line 1782
    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 1784
    :cond_0
    return-object v0
.end method

.method public buildIntoRemoteViews(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .locals 8
    .param p1, "outerView"    # Landroid/widget/RemoteViews;
    .param p2, "innerView"    # Landroid/widget/RemoteViews;

    .line 2051
    invoke-direct {p0, p1}, Landroidx/core/app/NotificationCompat$Style;->hideNormalContent(Landroid/widget/RemoteViews;)V

    .line 2052
    sget v0, Landroidx/core/R$id;->notification_main_column:I

    invoke-virtual {p1, v0}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 2053
    sget v0, Landroidx/core/R$id;->notification_main_column:I

    invoke-virtual {p2}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 2054
    sget v0, Landroidx/core/R$id;->notification_main_column:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2055
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2057
    sget v3, Landroidx/core/R$id;->notification_main_column_container:I

    const/4 v4, 0x0

    .line 2058
    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$Style;->calculateTopPadding()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 2057
    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 2060
    :cond_0
    return-void
.end method

.method public createColoredBitmap(II)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "iconId"    # I
    .param p2, "color"    # I

    .line 1998
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/core/app/NotificationCompat$Style;->createColoredBitmap(III)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method createColoredBitmap(Landroidx/core/graphics/drawable/IconCompat;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "icon"    # Landroidx/core/graphics/drawable/IconCompat;
    .param p2, "color"    # I

    .line 2006
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/core/app/NotificationCompat$Style;->createColoredBitmap(Landroidx/core/graphics/drawable/IconCompat;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public makeBigContentView(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;
    .locals 1
    .param p1, "builder"    # Landroidx/core/app/NotificationBuilderWithBuilderAccessor;

    .line 1811
    const/4 v0, 0x0

    return-object v0
.end method

.method public makeContentView(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;
    .locals 1
    .param p1, "builder"    # Landroidx/core/app/NotificationBuilderWithBuilderAccessor;

    .line 1803
    const/4 v0, 0x0

    return-object v0
.end method

.method public makeHeadsUpContentView(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;
    .locals 1
    .param p1, "builder"    # Landroidx/core/app/NotificationBuilderWithBuilderAccessor;

    .line 1819
    const/4 v0, 0x0

    return-object v0
.end method

.method protected restoreFromCompatExtras(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 1836
    return-void
.end method

.method public setBuilder(Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroidx/core/app/NotificationCompat$Builder;

    .line 1771
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    if-eq v0, p1, :cond_0

    .line 1772
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 1773
    if-eqz p1, :cond_0

    .line 1774
    invoke-virtual {p1, p0}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    .line 1777
    :cond_0
    return-void
.end method
