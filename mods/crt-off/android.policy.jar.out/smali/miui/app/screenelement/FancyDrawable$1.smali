.class Lmiui/app/screenelement/FancyDrawable$1;
.super Ljava/lang/Object;
.source "FancyDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/FancyDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/screenelement/FancyDrawable;


# direct methods
.method constructor <init>(Lmiui/app/screenelement/FancyDrawable;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lmiui/app/screenelement/FancyDrawable$1;->this$0:Lmiui/app/screenelement/FancyDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lmiui/app/screenelement/FancyDrawable$1;->this$0:Lmiui/app/screenelement/FancyDrawable;

    #calls: Lmiui/app/screenelement/FancyDrawable;->doPause()V
    invoke-static {v0}, Lmiui/app/screenelement/FancyDrawable;->access$000(Lmiui/app/screenelement/FancyDrawable;)V

    .line 27
    return-void
.end method
