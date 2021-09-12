.class Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;
.super Ljava/lang/Object;
.source "ConstraintLayout.java"

# interfaces
.implements Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/ConstraintLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Measurer"
.end annotation


# instance fields
.field layout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field layoutHeightSpec:I

.field layoutWidthSpec:I

.field paddingBottom:I

.field paddingHeight:I

.field paddingTop:I

.field paddingWidth:I

.field final synthetic this$0:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/constraintlayout/widget/ConstraintLayout;
    .param p2, "l"    # Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 617
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->this$0:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 618
    iput-object p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 619
    return-void
.end method


# virtual methods
.method public captureLayoutInfos(IIIIII)V
    .locals 0
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I
    .param p3, "top"    # I
    .param p4, "bottom"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I

    .line 609
    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingTop:I

    .line 610
    iput p4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingBottom:I

    .line 611
    iput p5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingWidth:I

    .line 612
    iput p6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingHeight:I

    .line 613
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutWidthSpec:I

    .line 614
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutHeightSpec:I

    .line 615
    return-void
.end method

.method public final didMeasures()V
    .locals 5

    .line 857
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v0

    .line 858
    .local v0, "widgetsCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 859
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 860
    .local v2, "child":Landroid/view/View;
    instance-of v3, v2, Landroidx/constraintlayout/widget/Placeholder;

    if-eqz v3, :cond_0

    .line 861
    move-object v3, v2

    check-cast v3, Landroidx/constraintlayout/widget/Placeholder;

    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/Placeholder;->updatePostMeasure(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 858
    .end local v2    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 865
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$000(Landroidx/constraintlayout/widget/ConstraintLayout;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 866
    .local v1, "helperCount":I
    if-lez v1, :cond_2

    .line 867
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 868
    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$000(Landroidx/constraintlayout/widget/ConstraintLayout;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 869
    .local v3, "helper":Landroidx/constraintlayout/widget/ConstraintHelper;
    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/ConstraintHelper;->updatePostMeasure(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 867
    .end local v3    # "helper":Landroidx/constraintlayout/widget/ConstraintHelper;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 872
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method public final measure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;)V
    .locals 30
    .param p1, "widget"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .param p2, "measure"    # Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    .line 625
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez v1, :cond_0

    .line 626
    return-void

    .line 628
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInPlaceholder()Z

    move-result v3

    if-nez v3, :cond_1

    .line 629
    iput v5, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    .line 630
    iput v5, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    .line 631
    iput v5, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    .line 632
    return-void

    .line 643
    :cond_1
    iget-object v3, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 644
    .local v3, "horizontalBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    iget-object v4, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 646
    .local v4, "verticalBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    iget v6, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    .line 647
    .local v6, "horizontalDimension":I
    iget v7, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    .line 649
    .local v7, "verticalDimension":I
    const/4 v8, 0x0

    .line 650
    .local v8, "horizontalSpec":I
    const/4 v9, 0x0

    .line 652
    .local v9, "verticalSpec":I
    iget v10, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingTop:I

    iget v11, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingBottom:I

    add-int/2addr v10, v11

    .line 653
    .local v10, "heightPadding":I
    iget v11, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingWidth:I

    .line 655
    .local v11, "widthPadding":I
    const/4 v12, 0x0

    .line 656
    .local v12, "didHorizontalWrap":Z
    const/4 v13, 0x0

    .line 658
    .local v13, "didVerticalWrap":Z
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getCompanionWidget()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    .line 660
    .local v14, "child":Landroid/view/View;
    sget-object v15, Landroidx/constraintlayout/widget/ConstraintLayout$1;->$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintWidget$DimensionBehaviour:[I

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->ordinal()I

    move-result v16

    aget v15, v15, v16

    const/4 v5, 0x2

    move/from16 v20, v8

    .end local v8    # "horizontalSpec":I
    .local v20, "horizontalSpec":I
    const/4 v8, 0x1

    if-eq v15, v8, :cond_c

    if-eq v15, v5, :cond_b

    const/4 v5, 0x3

    if-eq v15, v5, :cond_a

    const/4 v5, 0x4

    if-eq v15, v5, :cond_2

    move/from16 v15, v20

    const/4 v8, 0x2

    goto/16 :goto_3

    .line 680
    :cond_2
    iget v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutWidthSpec:I

    const/4 v15, -0x2

    invoke-static {v5, v11, v15}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 681
    .end local v20    # "horizontalSpec":I
    .local v5, "horizontalSpec":I
    const/4 v12, 0x1

    .line 682
    iget v15, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-ne v15, v8, :cond_3

    const/4 v15, 0x1

    goto :goto_0

    :cond_3
    const/4 v15, 0x0

    .line 683
    .local v15, "shouldDoWrap":Z
    :goto_0
    iget-object v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    const/16 v16, 0x2

    const/16 v20, 0x0

    aput v20, v8, v16

    .line 684
    iget-boolean v8, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->useCurrentDimensions:Z

    if-eqz v8, :cond_8

    .line 685
    if-eqz v15, :cond_4

    iget-object v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    const/16 v19, 0x3

    aget v8, v8, v19

    if-eqz v8, :cond_4

    iget-object v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    const/16 v16, 0x0

    aget v8, v8, v16

    .line 687
    move/from16 v20, v5

    .end local v5    # "horizontalSpec":I
    .restart local v20    # "horizontalSpec":I
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v5

    if-ne v8, v5, :cond_5

    goto :goto_1

    .line 685
    .end local v20    # "horizontalSpec":I
    .restart local v5    # "horizontalSpec":I
    :cond_4
    move/from16 v20, v5

    .line 687
    .end local v5    # "horizontalSpec":I
    .restart local v20    # "horizontalSpec":I
    :goto_1
    instance-of v5, v14, Landroidx/constraintlayout/widget/Placeholder;

    if-eqz v5, :cond_6

    :cond_5
    const/4 v5, 0x1

    goto :goto_2

    :cond_6
    const/4 v5, 0x0

    .line 690
    .local v5, "useCurrent":Z
    :goto_2
    if-eqz v15, :cond_7

    if-eqz v5, :cond_9

    .line 691
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v8

    move/from16 v22, v5

    const/high16 v5, 0x40000000    # 2.0f

    .end local v5    # "useCurrent":Z
    .local v22, "useCurrent":Z
    invoke-static {v8, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 692
    .end local v20    # "horizontalSpec":I
    .restart local v8    # "horizontalSpec":I
    const/4 v12, 0x0

    move v15, v8

    const/4 v8, 0x2

    goto :goto_3

    .line 684
    .end local v8    # "horizontalSpec":I
    .end local v22    # "useCurrent":Z
    .local v5, "horizontalSpec":I
    :cond_8
    move/from16 v20, v5

    .line 699
    .end local v5    # "horizontalSpec":I
    .end local v15    # "shouldDoWrap":Z
    .restart local v20    # "horizontalSpec":I
    :cond_9
    move/from16 v15, v20

    const/4 v8, 0x2

    goto :goto_3

    .line 674
    :cond_a
    iget v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutWidthSpec:I

    .line 675
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalMargin()I

    move-result v8

    add-int/2addr v8, v11

    .line 674
    const/4 v15, -0x1

    invoke-static {v5, v8, v15}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v8

    .line 676
    .end local v20    # "horizontalSpec":I
    .restart local v8    # "horizontalSpec":I
    iget-object v5, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    move/from16 v20, v8

    const/4 v8, 0x2

    .end local v8    # "horizontalSpec":I
    .restart local v20    # "horizontalSpec":I
    aput v15, v5, v8

    .line 678
    move/from16 v15, v20

    goto :goto_3

    .line 667
    :cond_b
    const/4 v8, 0x2

    iget v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutWidthSpec:I

    const/4 v15, -0x2

    invoke-static {v5, v11, v15}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 668
    .end local v20    # "horizontalSpec":I
    .restart local v5    # "horizontalSpec":I
    const/4 v12, 0x1

    .line 669
    move/from16 v20, v5

    .end local v5    # "horizontalSpec":I
    .restart local v20    # "horizontalSpec":I
    iget-object v5, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aput v15, v5, v8

    .line 671
    move/from16 v15, v20

    goto :goto_3

    .line 662
    :cond_c
    const/4 v8, 0x2

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v6, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 663
    .end local v20    # "horizontalSpec":I
    .local v15, "horizontalSpec":I
    iget-object v5, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aput v6, v5, v8

    .line 665
    nop

    .line 699
    :goto_3
    sget-object v5, Landroidx/constraintlayout/widget/ConstraintLayout$1;->$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintWidget$DimensionBehaviour:[I

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->ordinal()I

    move-result v20

    aget v5, v5, v20

    move/from16 v20, v6

    const/4 v6, 0x1

    .end local v6    # "horizontalDimension":I
    .local v20, "horizontalDimension":I
    if-eq v5, v6, :cond_16

    if-eq v5, v8, :cond_15

    const/4 v6, 0x3

    if-eq v5, v6, :cond_14

    const/4 v6, 0x4

    if-eq v5, v6, :cond_d

    goto/16 :goto_6

    .line 720
    :cond_d
    iget v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutHeightSpec:I

    const/4 v6, -0x2

    invoke-static {v5, v10, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v9

    .line 722
    const/4 v13, 0x1

    .line 723
    iget v5, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_e

    const/4 v5, 0x1

    goto :goto_4

    :cond_e
    const/4 v5, 0x0

    .line 724
    .local v5, "shouldDoWrap":Z
    :goto_4
    iget-object v6, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    const/4 v8, 0x3

    const/16 v16, 0x0

    aput v16, v6, v8

    .line 725
    iget-boolean v6, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->useCurrentDimensions:Z

    if-eqz v6, :cond_13

    .line 726
    if-eqz v5, :cond_f

    iget-object v6, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    const/4 v8, 0x2

    aget v6, v6, v8

    if-eqz v6, :cond_f

    iget-object v6, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    const/4 v8, 0x1

    aget v6, v6, v8

    .line 728
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v8

    if-ne v6, v8, :cond_10

    :cond_f
    instance-of v6, v14, Landroidx/constraintlayout/widget/Placeholder;

    if-eqz v6, :cond_11

    :cond_10
    const/4 v6, 0x1

    goto :goto_5

    :cond_11
    const/4 v6, 0x0

    .line 730
    .local v6, "useCurrent":Z
    :goto_5
    if-eqz v5, :cond_12

    if-eqz v6, :cond_17

    .line 731
    :cond_12
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v8

    move/from16 v17, v5

    const/high16 v5, 0x40000000    # 2.0f

    .end local v5    # "shouldDoWrap":Z
    .local v17, "shouldDoWrap":Z
    invoke-static {v8, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 732
    const/4 v13, 0x0

    goto :goto_6

    .line 725
    .end local v6    # "useCurrent":Z
    .end local v17    # "shouldDoWrap":Z
    .restart local v5    # "shouldDoWrap":Z
    :cond_13
    move/from16 v17, v5

    .end local v5    # "shouldDoWrap":Z
    .restart local v17    # "shouldDoWrap":Z
    goto :goto_6

    .line 714
    .end local v17    # "shouldDoWrap":Z
    :cond_14
    iget v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutHeightSpec:I

    .line 715
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalMargin()I

    move-result v6

    add-int/2addr v6, v10

    .line 714
    const/4 v8, -0x1

    invoke-static {v5, v6, v8}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v9

    .line 716
    iget-object v5, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    const/4 v6, 0x3

    aput v8, v5, v6

    .line 718
    goto :goto_6

    .line 706
    :cond_15
    const/4 v6, 0x3

    iget v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutHeightSpec:I

    const/4 v8, -0x2

    invoke-static {v5, v10, v8}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v9

    .line 708
    const/4 v13, 0x1

    .line 709
    iget-object v5, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aput v8, v5, v6

    .line 711
    goto :goto_6

    .line 701
    :cond_16
    const/4 v6, 0x3

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v7, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 702
    iget-object v5, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aput v7, v5, v6

    .line 704
    nop

    .line 739
    :cond_17
    :goto_6
    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v5, :cond_18

    const/4 v5, 0x1

    goto :goto_7

    :cond_18
    const/4 v5, 0x0

    .line 740
    .local v5, "horizontalMatchConstraints":Z
    :goto_7
    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v6, :cond_19

    const/4 v6, 0x1

    goto :goto_8

    :cond_19
    const/4 v6, 0x0

    .line 742
    .local v6, "verticalMatchConstraints":Z
    :goto_8
    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v4, v8, :cond_1b

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v8, :cond_1a

    goto :goto_9

    :cond_1a
    const/4 v8, 0x0

    goto :goto_a

    :cond_1b
    :goto_9
    const/4 v8, 0x1

    .line 744
    .local v8, "verticalDimensionKnown":Z
    :goto_a
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v3, v0, :cond_1d

    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v0, :cond_1c

    goto :goto_b

    :cond_1c
    const/4 v0, 0x0

    goto :goto_c

    :cond_1d
    :goto_b
    const/4 v0, 0x1

    .line 746
    .local v0, "horizontalDimensionKnown":Z
    :goto_c
    const/16 v17, 0x0

    if-eqz v5, :cond_1e

    move-object/from16 v18, v3

    .end local v3    # "horizontalBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .local v18, "horizontalBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    iget v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v3, v3, v17

    if-lez v3, :cond_1f

    const/4 v3, 0x1

    goto :goto_d

    .end local v18    # "horizontalBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .restart local v3    # "horizontalBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    :cond_1e
    move-object/from16 v18, v3

    .end local v3    # "horizontalBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .restart local v18    # "horizontalBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    :cond_1f
    const/4 v3, 0x0

    .line 747
    .local v3, "horizontalUseRatio":Z
    :goto_d
    if-eqz v6, :cond_20

    move-object/from16 v22, v4

    .end local v4    # "verticalBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .local v22, "verticalBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    iget v4, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v4, v4, v17

    if-lez v4, :cond_21

    const/4 v4, 0x1

    goto :goto_e

    .end local v22    # "verticalBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .restart local v4    # "verticalBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    :cond_20
    move-object/from16 v22, v4

    .end local v4    # "verticalBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .restart local v22    # "verticalBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    :cond_21
    const/4 v4, 0x0

    .line 749
    .local v4, "verticalUseRatio":Z
    :goto_e
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    move/from16 v23, v7

    .end local v7    # "verticalDimension":I
    .local v23, "verticalDimension":I
    move-object/from16 v7, v17

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 751
    .local v7, "params":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    const/16 v17, 0x0

    .line 752
    .local v17, "width":I
    const/16 v24, 0x0

    .line 753
    .local v24, "height":I
    const/16 v25, 0x0

    .line 755
    .local v25, "baseline":I
    move/from16 v26, v10

    .end local v10    # "heightPadding":I
    .local v26, "heightPadding":I
    iget-boolean v10, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->useCurrentDimensions:Z

    if-nez v10, :cond_23

    if-eqz v5, :cond_23

    iget v10, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v10, :cond_23

    if-eqz v6, :cond_23

    iget v10, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-eqz v10, :cond_22

    goto :goto_f

    :cond_22
    move/from16 v28, v3

    move/from16 v27, v5

    move/from16 v21, v11

    move/from16 v3, v17

    move/from16 v5, v25

    const/16 v16, 0x0

    move/from16 v29, v24

    move/from16 v24, v6

    move/from16 v6, v29

    goto/16 :goto_19

    .line 759
    :cond_23
    :goto_f
    instance-of v10, v14, Landroidx/constraintlayout/widget/VirtualLayout;

    if-eqz v10, :cond_24

    instance-of v10, v1, Landroidx/constraintlayout/solver/widgets/VirtualLayout;

    if-eqz v10, :cond_24

    .line 760
    move-object v10, v1

    check-cast v10, Landroidx/constraintlayout/solver/widgets/VirtualLayout;

    .line 761
    .local v10, "layout":Landroidx/constraintlayout/solver/widgets/VirtualLayout;
    move/from16 v27, v5

    .end local v5    # "horizontalMatchConstraints":Z
    .local v27, "horizontalMatchConstraints":Z
    move-object v5, v14

    check-cast v5, Landroidx/constraintlayout/widget/VirtualLayout;

    invoke-virtual {v5, v10, v15, v9}, Landroidx/constraintlayout/widget/VirtualLayout;->onMeasure(Landroidx/constraintlayout/solver/widgets/VirtualLayout;II)V

    .line 762
    .end local v10    # "layout":Landroidx/constraintlayout/solver/widgets/VirtualLayout;
    goto :goto_10

    .line 759
    .end local v27    # "horizontalMatchConstraints":Z
    .restart local v5    # "horizontalMatchConstraints":Z
    :cond_24
    move/from16 v27, v5

    .line 763
    .end local v5    # "horizontalMatchConstraints":Z
    .restart local v27    # "horizontalMatchConstraints":Z
    invoke-virtual {v14, v15, v9}, Landroid/view/View;->measure(II)V

    .line 766
    :goto_10
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 767
    .local v5, "w":I
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 768
    .local v10, "h":I
    invoke-virtual {v14}, Landroid/view/View;->getBaseline()I

    move-result v25

    .line 770
    move/from16 v28, v5

    .line 771
    .end local v17    # "width":I
    .local v28, "width":I
    move/from16 v17, v10

    .line 778
    .end local v24    # "height":I
    .local v17, "height":I
    if-eqz v12, :cond_25

    .line 779
    move/from16 v24, v6

    .end local v6    # "verticalMatchConstraints":Z
    .local v24, "verticalMatchConstraints":Z
    iget-object v6, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    const/16 v16, 0x0

    aput v5, v6, v16

    .line 780
    iget-object v6, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    const/16 v21, 0x2

    aput v10, v6, v21

    goto :goto_11

    .line 782
    .end local v24    # "verticalMatchConstraints":Z
    .restart local v6    # "verticalMatchConstraints":Z
    :cond_25
    move/from16 v24, v6

    const/16 v16, 0x0

    const/16 v21, 0x2

    .end local v6    # "verticalMatchConstraints":Z
    .restart local v24    # "verticalMatchConstraints":Z
    iget-object v6, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aput v16, v6, v16

    .line 783
    iget-object v6, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aput v16, v6, v21

    .line 785
    :goto_11
    if-eqz v13, :cond_26

    .line 786
    iget-object v6, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    const/16 v21, 0x1

    aput v10, v6, v21

    .line 787
    iget-object v6, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    const/16 v19, 0x3

    aput v5, v6, v19

    const/16 v16, 0x0

    goto :goto_12

    .line 789
    :cond_26
    const/16 v19, 0x3

    const/16 v21, 0x1

    iget-object v6, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    const/16 v16, 0x0

    aput v16, v6, v21

    .line 790
    iget-object v6, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aput v16, v6, v19

    .line 793
    :goto_12
    iget v6, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-lez v6, :cond_27

    .line 794
    iget v6, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    move/from16 v19, v9

    move/from16 v9, v28

    .end local v28    # "width":I
    .local v9, "width":I
    .local v19, "verticalSpec":I
    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v28

    move/from16 v9, v28

    .end local v9    # "width":I
    .restart local v28    # "width":I
    goto :goto_13

    .line 793
    .end local v19    # "verticalSpec":I
    .local v9, "verticalSpec":I
    :cond_27
    move/from16 v19, v9

    move/from16 v9, v28

    .line 796
    .end local v28    # "width":I
    .local v9, "width":I
    .restart local v19    # "verticalSpec":I
    :goto_13
    iget v6, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    if-lez v6, :cond_28

    .line 797
    iget v6, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 799
    :cond_28
    iget v6, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-lez v6, :cond_29

    .line 800
    iget v6, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    move/from16 v21, v11

    move/from16 v11, v17

    .end local v17    # "height":I
    .local v11, "height":I
    .local v21, "widthPadding":I
    invoke-static {v6, v11}, Ljava/lang/Math;->max(II)I

    move-result v17

    move/from16 v11, v17

    .end local v11    # "height":I
    .restart local v17    # "height":I
    goto :goto_14

    .line 799
    .end local v21    # "widthPadding":I
    .local v11, "widthPadding":I
    :cond_29
    move/from16 v21, v11

    move/from16 v11, v17

    .line 802
    .end local v17    # "height":I
    .local v11, "height":I
    .restart local v21    # "widthPadding":I
    :goto_14
    iget v6, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    if-lez v6, :cond_2a

    .line 803
    iget v6, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    invoke-static {v6, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 806
    :cond_2a
    if-eqz v3, :cond_2b

    if-eqz v8, :cond_2b

    .line 807
    iget v6, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 808
    .local v6, "ratio":F
    move/from16 v28, v3

    .end local v3    # "horizontalUseRatio":Z
    .local v28, "horizontalUseRatio":Z
    int-to-float v3, v11

    mul-float v3, v3, v6

    const/high16 v17, 0x3f000000    # 0.5f

    add-float v3, v3, v17

    float-to-int v3, v3

    .line 809
    .end local v6    # "ratio":F
    .end local v9    # "width":I
    .local v3, "width":I
    move v9, v3

    goto :goto_15

    .line 806
    .end local v28    # "horizontalUseRatio":Z
    .local v3, "horizontalUseRatio":Z
    .restart local v9    # "width":I
    :cond_2b
    move/from16 v28, v3

    .line 809
    .end local v3    # "horizontalUseRatio":Z
    .restart local v28    # "horizontalUseRatio":Z
    if-eqz v4, :cond_2c

    if-eqz v0, :cond_2c

    .line 810
    iget v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 811
    .local v3, "ratio":F
    int-to-float v6, v9

    div-float/2addr v6, v3

    const/high16 v17, 0x3f000000    # 0.5f

    add-float v6, v6, v17

    float-to-int v6, v6

    move v11, v6

    .line 814
    .end local v3    # "ratio":F
    :cond_2c
    :goto_15
    if-ne v5, v9, :cond_2e

    if-eq v10, v11, :cond_2d

    goto :goto_16

    :cond_2d
    move v3, v9

    move v6, v11

    move/from16 v9, v19

    move/from16 v5, v25

    goto :goto_19

    .line 815
    :cond_2e
    :goto_16
    if-eq v5, v9, :cond_2f

    .line 816
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v9, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    move v15, v6

    .end local v15    # "horizontalSpec":I
    .local v6, "horizontalSpec":I
    goto :goto_17

    .line 815
    .end local v6    # "horizontalSpec":I
    .restart local v15    # "horizontalSpec":I
    :cond_2f
    const/high16 v3, 0x40000000    # 2.0f

    .line 818
    :goto_17
    if-eq v10, v11, :cond_30

    .line 819
    invoke-static {v11, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .end local v19    # "verticalSpec":I
    .local v3, "verticalSpec":I
    goto :goto_18

    .line 818
    .end local v3    # "verticalSpec":I
    .restart local v19    # "verticalSpec":I
    :cond_30
    move/from16 v3, v19

    .line 821
    .end local v19    # "verticalSpec":I
    .restart local v3    # "verticalSpec":I
    :goto_18
    invoke-virtual {v14, v15, v3}, Landroid/view/View;->measure(II)V

    .line 822
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    .line 823
    .end local v9    # "width":I
    .local v17, "width":I
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 824
    .end local v11    # "height":I
    .local v6, "height":I
    invoke-virtual {v14}, Landroid/view/View;->getBaseline()I

    move-result v25

    move v9, v3

    move/from16 v3, v17

    move/from16 v5, v25

    .line 833
    .end local v10    # "h":I
    .end local v17    # "width":I
    .end local v25    # "baseline":I
    .local v3, "width":I
    .local v5, "baseline":I
    .local v9, "verticalSpec":I
    :goto_19
    const/4 v10, -0x1

    if-eq v5, v10, :cond_31

    const/4 v10, 0x1

    goto :goto_1a

    :cond_31
    const/4 v10, 0x0

    .line 835
    .local v10, "hasBaseline":Z
    :goto_1a
    iget v11, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    if-ne v3, v11, :cond_33

    iget v11, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    if-eq v6, v11, :cond_32

    goto :goto_1b

    :cond_32
    const/4 v11, 0x0

    goto :goto_1c

    :cond_33
    :goto_1b
    const/4 v11, 0x1

    :goto_1c
    iput-boolean v11, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    .line 837
    iget-boolean v11, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->needsBaseline:Z

    if-eqz v11, :cond_34

    .line 838
    const/4 v10, 0x1

    .line 840
    :cond_34
    if-eqz v10, :cond_35

    const/4 v11, -0x1

    if-eq v5, v11, :cond_35

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v11

    if-eq v11, v5, :cond_35

    .line 841
    const/4 v11, 0x1

    iput-boolean v11, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    .line 843
    :cond_35
    iput v3, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    .line 844
    iput v6, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    .line 845
    iput-boolean v10, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredHasBaseline:Z

    .line 846
    iput v5, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    .line 853
    return-void
.end method
