.class public Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;
.super Ljava/lang/Object;
.source "SimUnlockScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/SimUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TouchInput"
.end annotation


# instance fields
.field protected mCancelButton:Landroid/widget/TextView;

.field protected mEight:Landroid/widget/TextView;

.field protected mFive:Landroid/widget/TextView;

.field protected mFour:Landroid/widget/TextView;

.field protected mNine:Landroid/widget/TextView;

.field protected mOne:Landroid/widget/TextView;

.field protected mSeven:Landroid/widget/TextView;

.field protected mSix:Landroid/widget/TextView;

.field protected mThree:Landroid/widget/TextView;

.field protected mTwo:Landroid/widget/TextView;

.field protected mZero:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;


# direct methods
.method protected constructor <init>(Lcom/android/internal/policy/impl/SimUnlockScreen;)V
    .locals 2
    .parameter

    .prologue
    .line 370
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 371
    const v0, 0x102035e

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mZero:Landroid/widget/TextView;

    .line 372
    const v0, 0x1020355

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mOne:Landroid/widget/TextView;

    .line 373
    const v0, 0x1020356

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mTwo:Landroid/widget/TextView;

    .line 374
    const v0, 0x1020357

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mThree:Landroid/widget/TextView;

    .line 375
    const v0, 0x1020358

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mFour:Landroid/widget/TextView;

    .line 376
    const v0, 0x1020359

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mFive:Landroid/widget/TextView;

    .line 377
    const v0, 0x102035a

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mSix:Landroid/widget/TextView;

    .line 378
    const v0, 0x102035b

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mSeven:Landroid/widget/TextView;

    .line 379
    const v0, 0x102035c

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mEight:Landroid/widget/TextView;

    .line 380
    const v0, 0x102035d

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mNine:Landroid/widget/TextView;

    .line 381
    const v0, 0x1020269

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mCancelButton:Landroid/widget/TextView;

    .line 383
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mZero:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mOne:Landroid/widget/TextView;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mTwo:Landroid/widget/TextView;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mThree:Landroid/widget/TextView;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mFour:Landroid/widget/TextView;

    const-string v1, "4"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mFive:Landroid/widget/TextView;

    const-string v1, "5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mSix:Landroid/widget/TextView;

    const-string v1, "6"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mSeven:Landroid/widget/TextView;

    const-string v1, "7"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mEight:Landroid/widget/TextView;

    const-string v1, "8"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mNine:Landroid/widget/TextView;

    const-string v1, "9"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 394
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mZero:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 395
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mOne:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 396
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mTwo:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 397
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mThree:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 398
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mFour:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 399
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mFive:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 400
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mSix:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 401
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mSeven:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mEight:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 403
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mNine:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 404
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 405
    return-void
.end method


# virtual methods
.method protected checkDigit(Landroid/view/View;)I
    .locals 2
    .parameter "v"

    .prologue
    .line 423
    const/4 v0, -0x1

    .line 424
    .local v0, digit:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mZero:Landroid/widget/TextView;

    if-ne p1, v1, :cond_1

    .line 425
    const/4 v0, 0x0

    .line 445
    :cond_0
    :goto_0
    return v0

    .line 426
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mOne:Landroid/widget/TextView;

    if-ne p1, v1, :cond_2

    .line 427
    const/4 v0, 0x1

    goto :goto_0

    .line 428
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mTwo:Landroid/widget/TextView;

    if-ne p1, v1, :cond_3

    .line 429
    const/4 v0, 0x2

    goto :goto_0

    .line 430
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mThree:Landroid/widget/TextView;

    if-ne p1, v1, :cond_4

    .line 431
    const/4 v0, 0x3

    goto :goto_0

    .line 432
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mFour:Landroid/widget/TextView;

    if-ne p1, v1, :cond_5

    .line 433
    const/4 v0, 0x4

    goto :goto_0

    .line 434
    :cond_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mFive:Landroid/widget/TextView;

    if-ne p1, v1, :cond_6

    .line 435
    const/4 v0, 0x5

    goto :goto_0

    .line 436
    :cond_6
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mSix:Landroid/widget/TextView;

    if-ne p1, v1, :cond_7

    .line 437
    const/4 v0, 0x6

    goto :goto_0

    .line 438
    :cond_7
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mSeven:Landroid/widget/TextView;

    if-ne p1, v1, :cond_8

    .line 439
    const/4 v0, 0x7

    goto :goto_0

    .line 440
    :cond_8
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mEight:Landroid/widget/TextView;

    if-ne p1, v1, :cond_9

    .line 441
    const/16 v0, 0x8

    goto :goto_0

    .line 442
    :cond_9
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mNine:Landroid/widget/TextView;

    if-ne p1, v1, :cond_0

    .line 443
    const/16 v0, 0x9

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 409
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mCancelButton:Landroid/widget/TextView;

    if-ne p1, v1, :cond_1

    .line 410
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v1, v1, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v1, v1, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToLockScreen()V

    .line 420
    :cond_0
    :goto_0
    return-void

    .line 415
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->checkDigit(Landroid/view/View;)I

    move-result v0

    .line 416
    .local v0, digit:I
    if-ltz v0, :cond_0

    .line 417
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v1, v1, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v2, 0x1388

    invoke-interface {v1, v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 418
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->reportDigit(I)V

    goto :goto_0
.end method
