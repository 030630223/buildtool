.class final Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
.super Ljava/lang/Object;
.source "PhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PanelFeatureState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState$SavedState;
    }
.end annotation


# instance fields
.field background:I

.field createdPanelView:Landroid/view/View;

.field decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

.field featureId:I

.field frozenActionViewState:Landroid/os/Bundle;

.field frozenMenuState:Landroid/os/Bundle;

.field fullBackground:I

.field gravity:I

.field iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

.field isCompact:Z

.field isHandled:Z

.field isInExpandedMode:Z

.field isOpen:Z

.field isPrepared:Z

.field listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

.field listPresenterTheme:I

.field menu:Lcom/android/internal/view/menu/MenuBuilder;

.field public qwertyMode:Z

.field refreshDecorView:Z

.field refreshMenuContent:Z

.field shownPanelView:Landroid/view/View;

.field wasLastExpanded:Z

.field wasLastOpen:Z

.field windowAnimations:I

.field x:I

.field y:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .parameter "featureId"

    .prologue
    .line 3448
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3449
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->featureId:I

    .line 3451
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    .line 3452
    return-void
.end method


# virtual methods
.method applyFrozenState()V
    .locals 2

    .prologue
    .line 3584
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->frozenMenuState:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 3585
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->frozenMenuState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->restorePresenterStates(Landroid/os/Bundle;)V

    .line 3586
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->frozenMenuState:Landroid/os/Bundle;

    .line 3588
    :cond_0
    return-void
.end method

.method public clearMenuPresenters()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3473
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_0

    .line 3474
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 3475
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 3477
    :cond_0
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    .line 3478
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    .line 3479
    return-void
.end method

.method getIconMenuView(Landroid/content/Context;Lcom/android/internal/view/menu/MenuPresenter$Callback;)Lcom/android/internal/view/menu/MenuView;
    .locals 3
    .parameter "context"
    .parameter "cb"

    .prologue
    .line 3536
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 3547
    :goto_0
    return-object v0

    .line 3538
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    if-nez v1, :cond_1

    .line 3539
    new-instance v1, Lcom/android/internal/view/menu/IconMenuPresenter;

    invoke-direct {v1, p1}, Lcom/android/internal/view/menu/IconMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    .line 3540
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    invoke-virtual {v1, p2}, Lcom/android/internal/view/menu/IconMenuPresenter;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 3541
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    const v2, 0x102023d

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/IconMenuPresenter;->setId(I)V

    .line 3542
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 3545
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/IconMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v0

    .line 3547
    .local v0, result:Lcom/android/internal/view/menu/MenuView;
    goto :goto_0
.end method

.method getListMenuView(Landroid/content/Context;Lcom/android/internal/view/menu/MenuPresenter$Callback;)Lcom/android/internal/view/menu/MenuView;
    .locals 4
    .parameter "context"
    .parameter "cb"

    .prologue
    .line 3512
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 3532
    :goto_0
    return-object v0

    .line 3514
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isCompact:Z

    if-nez v1, :cond_1

    .line 3515
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->getIconMenuView(Landroid/content/Context;Lcom/android/internal/view/menu/MenuPresenter$Callback;)Lcom/android/internal/view/menu/MenuView;

    .line 3518
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    if-nez v1, :cond_2

    .line 3519
    new-instance v1, Lcom/android/internal/view/menu/ListMenuPresenter;

    const v2, 0x1090062

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->listPresenterTheme:I

    invoke-direct {v1, v2, v3}, Lcom/android/internal/view/menu/ListMenuPresenter;-><init>(II)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    .line 3521
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v1, p2}, Lcom/android/internal/view/menu/ListMenuPresenter;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 3522
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    const v2, 0x102023e

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/ListMenuPresenter;->setId(I)V

    .line 3523
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 3526
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    if-eqz v1, :cond_3

    .line 3527
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/IconMenuPresenter;->getNumActualItemsShown()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/ListMenuPresenter;->setItemIndexOffset(I)V

    .line 3530
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/ListMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v0

    .line 3532
    .local v0, result:Lcom/android/internal/view/menu/MenuView;
    goto :goto_0
.end method

.method public hasPanelItems()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3459
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    if-nez v0, :cond_1

    move v1, v2

    .line 3465
    :cond_0
    :goto_0
    return v1

    .line 3460
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 3462
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isCompact:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    if-eqz v0, :cond_4

    .line 3463
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ListMenuPresenter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    .line 3465
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public isInListMode()Z
    .locals 1

    .prologue
    .line 3455
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isCompact:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v2, 0x0

    .line 3565
    move-object v0, p1

    check-cast v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState$SavedState;

    .line 3566
    .local v0, savedState:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState$SavedState;
    iget v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState$SavedState;->featureId:I

    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->featureId:I

    .line 3567
    iget-boolean v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState$SavedState;->isOpen:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->wasLastOpen:Z

    .line 3568
    iget-boolean v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState$SavedState;->isInExpandedMode:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->wasLastExpanded:Z

    .line 3569
    iget-object v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState$SavedState;->menuState:Landroid/os/Bundle;

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->frozenMenuState:Landroid/os/Bundle;

    .line 3578
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    .line 3579
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 3580
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    .line 3581
    return-void
.end method

.method onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 3551
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState$SavedState;-><init>(Lcom/android/internal/policy/impl/PhoneWindow$1;)V

    .line 3552
    .local v0, savedState:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState$SavedState;
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->featureId:I

    iput v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState$SavedState;->featureId:I

    .line 3553
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isOpen:Z

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState$SavedState;->isOpen:Z

    .line 3554
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState$SavedState;->isInExpandedMode:Z

    .line 3556
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_0

    .line 3557
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState$SavedState;->menuState:Landroid/os/Bundle;

    .line 3558
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState$SavedState;->menuState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->savePresenterStates(Landroid/os/Bundle;)V

    .line 3561
    :cond_0
    return-object v0
.end method

.method setMenu(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 3498
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-ne p1, v0, :cond_1

    .line 3509
    :cond_0
    :goto_0
    return-void

    .line 3500
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_2

    .line 3501
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 3502
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 3504
    :cond_2
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 3505
    if-eqz p1, :cond_0

    .line 3506
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    invoke-virtual {p1, v0}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 3507
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-virtual {p1, v0}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    goto :goto_0
.end method

.method setStyle(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 3482
    sget-object v1, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 3483
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v1, 0x2e

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->background:I

    .line 3485
    const/16 v1, 0x2f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->fullBackground:I

    .line 3487
    const/16 v1, 0x5d

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->windowAnimations:I

    .line 3489
    const/16 v1, 0xe1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isCompact:Z

    .line 3491
    const/16 v1, 0xe3

    const v2, 0x10302ef

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->listPresenterTheme:I

    .line 3494
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 3495
    return-void
.end method
