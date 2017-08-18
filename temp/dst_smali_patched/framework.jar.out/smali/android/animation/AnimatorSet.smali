.class public final Landroid/animation/AnimatorSet;
.super Landroid/animation/Animator;
.source "AnimatorSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/AnimatorSet$DependencyListener;,
        Landroid/animation/AnimatorSet$AnimatorSetListener;,
        Landroid/animation/AnimatorSet$Dependency;,
        Landroid/animation/AnimatorSet$Node;,
        Landroid/animation/AnimatorSet$Builder;
    }
.end annotation


# instance fields
.field private mDelayAnim:Landroid/animation/ValueAnimator;

.field private mDuration:J

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mNeedsSort:Z

.field private mNodeMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/animation/Animator;",
            "Landroid/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayingSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mReversible:Z

.field private mSetListener:Landroid/animation/AnimatorSet$AnimatorSetListener;

.field private mSortedNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mStartDelay:J

.field private mStarted:Z

.field mTerminated:Z


# direct methods
.method static synthetic -get0(Landroid/animation/AnimatorSet;)Landroid/util/ArrayMap;
    .locals 1

    iget-object v0, p0, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic -get1(Landroid/animation/AnimatorSet;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get2(Landroid/animation/AnimatorSet;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get3(Landroid/animation/AnimatorSet;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Landroid/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -set0(Landroid/animation/AnimatorSet;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic -set1(Landroid/animation/AnimatorSet;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/animation/AnimatorSet;->mReversible:Z

    return p1
.end method

.method static synthetic -set2(Landroid/animation/AnimatorSet;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/animation/AnimatorSet;->mStarted:Z

    return p1
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    iput-boolean v3, p0, Landroid/animation/AnimatorSet;->mNeedsSort:Z

    iput-object v2, p0, Landroid/animation/AnimatorSet;->mSetListener:Landroid/animation/AnimatorSet$AnimatorSetListener;

    iput-boolean v1, p0, Landroid/animation/AnimatorSet;->mTerminated:Z

    iput-boolean v1, p0, Landroid/animation/AnimatorSet;->mStarted:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    iput-object v2, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/animation/AnimatorSet;->mDuration:J

    iput-object v2, p0, Landroid/animation/AnimatorSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    iput-boolean v3, p0, Landroid/animation/AnimatorSet;->mReversible:Z

    return-void
.end method

.method private sortNodes()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    iget-boolean v11, p0, Landroid/animation/AnimatorSet;->mNeedsSort:Z

    if-eqz v11, :cond_7

    iget-object v11, p0, Landroid/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .local v9, "roots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/AnimatorSet$Node;>;"
    iget-object v11, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v6

    .local v6, "numNodes":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_2

    iget-object v11, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/AnimatorSet$Node;

    .local v3, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v11, v3, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    if-eqz v11, :cond_0

    iget-object v11, v3, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_1

    :cond_0
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_2
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .local v10, "tmpRoots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/AnimatorSet$Node;>;"
    :goto_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_6

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    .local v7, "numRoots":I
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v7, :cond_5

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/animation/AnimatorSet$Node;

    .local v8, "root":Landroid/animation/AnimatorSet$Node;
    iget-object v11, p0, Landroid/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v11, v8, Landroid/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    if-eqz v11, :cond_4

    iget-object v11, v8, Landroid/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v5

    .local v5, "numDependents":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_3
    if-ge v2, v5, :cond_4

    iget-object v11, v8, Landroid/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/AnimatorSet$Node;

    .restart local v3    # "node":Landroid/animation/AnimatorSet$Node;
    iget-object v11, v3, Landroid/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v11, v3, Landroid/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_3

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .end local v2    # "j":I
    .end local v3    # "node":Landroid/animation/AnimatorSet$Node;
    .end local v5    # "numDependents":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v8    # "root":Landroid/animation/AnimatorSet$Node;
    :cond_5
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    .end local v7    # "numRoots":I
    :cond_6
    iput-boolean v13, p0, Landroid/animation/AnimatorSet;->mNeedsSort:Z

    iget-object v11, p0, Landroid/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    iget-object v12, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-eq v11, v12, :cond_b

    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "Circular dependencies cannot exist in AnimatorSet"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .end local v1    # "i":I
    .end local v6    # "numNodes":I
    .end local v9    # "roots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/AnimatorSet$Node;>;"
    .end local v10    # "tmpRoots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/AnimatorSet$Node;>;"
    :cond_7
    iget-object v11, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v6

    .restart local v6    # "numNodes":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    if-ge v1, v6, :cond_b

    iget-object v11, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/AnimatorSet$Node;

    .restart local v3    # "node":Landroid/animation/AnimatorSet$Node;
    iget-object v11, v3, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    if-eqz v11, :cond_a

    iget-object v11, v3, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_a

    iget-object v11, v3, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, "numDependencies":I
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_5
    if-ge v2, v4, :cond_a

    iget-object v11, v3, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet$Dependency;

    .local v0, "dependency":Landroid/animation/AnimatorSet$Dependency;
    iget-object v11, v3, Landroid/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    if-nez v11, :cond_8

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v3, Landroid/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    :cond_8
    iget-object v11, v3, Landroid/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    iget-object v12, v0, Landroid/animation/AnimatorSet$Dependency;->node:Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    iget-object v11, v3, Landroid/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    iget-object v12, v0, Landroid/animation/AnimatorSet$Dependency;->node:Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .end local v0    # "dependency":Landroid/animation/AnimatorSet$Dependency;
    .end local v2    # "j":I
    .end local v4    # "numDependencies":I
    :cond_a
    iput-boolean v13, v3, Landroid/animation/AnimatorSet$Node;->done:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .end local v3    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_b
    return-void
.end method


# virtual methods
.method public canReverse()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    iget-boolean v2, p0, Landroid/animation/AnimatorSet;->mReversible:Z

    if-nez v2, :cond_0

    return v6

    :cond_0
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "node$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet$Node;

    .local v0, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v2, v0, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->canReverse()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    :cond_2
    return v6

    .end local v0    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_3
    const/4 v2, 0x1

    return v2
.end method

.method public cancel()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/animation/AnimatorSet;->mTerminated:Z

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v4, 0x0

    .local v4, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    iget-object v5, p0, Landroid/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    check-cast v4, Ljava/util/ArrayList;

    .local v4, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    .local v0, "listener":Landroid/animation/Animator$AnimatorListener;
    invoke-interface {v0, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    goto :goto_0

    .end local v0    # "listener":Landroid/animation/Animator$AnimatorListener;
    .end local v1    # "listener$iterator":Ljava/util/Iterator;
    .end local v4    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_0
    iget-object v5, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "listener$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    .restart local v0    # "listener":Landroid/animation/Animator$AnimatorListener;
    invoke-interface {v0, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_1

    .end local v0    # "listener":Landroid/animation/Animator$AnimatorListener;
    .end local v1    # "listener$iterator":Ljava/util/Iterator;
    :cond_2
    iget-object v5, p0, Landroid/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1

    iget-object v5, p0, Landroid/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "node$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet$Node;

    .local v2, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v5, v2, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    invoke-virtual {v5}, Landroid/animation/Animator;->cancel()V

    goto :goto_2

    .end local v2    # "node":Landroid/animation/AnimatorSet$Node;
    .end local v3    # "node$iterator":Ljava/util/Iterator;
    :cond_3
    iput-boolean v6, p0, Landroid/animation/AnimatorSet;->mStarted:Z

    :cond_4
    return-void
.end method

.method public bridge synthetic clone()Landroid/animation/Animator;
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->clone()Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method public clone()Landroid/animation/AnimatorSet;
    .locals 17

    .prologue
    invoke-super/range {p0 .. p0}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet;

    .local v1, "anim":Landroid/animation/AnimatorSet;
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v14

    .local v14, "nodeCount":I
    const/4 v15, 0x1

    iput-boolean v15, v1, Landroid/animation/AnimatorSet;->mNeedsSort:Z

    const/4 v15, 0x0

    iput-boolean v15, v1, Landroid/animation/AnimatorSet;->mTerminated:Z

    const/4 v15, 0x0

    iput-boolean v15, v1, Landroid/animation/AnimatorSet;->mStarted:Z

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    iput-object v15, v1, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    new-instance v15, Landroid/util/ArrayMap;

    invoke-direct {v15}, Landroid/util/ArrayMap;-><init>()V

    iput-object v15, v1, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15, v14}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v15, v1, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15, v14}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v15, v1, Landroid/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/animation/AnimatorSet;->mReversible:Z

    iput-boolean v15, v1, Landroid/animation/AnimatorSet;->mReversible:Z

    const/4 v15, 0x0

    iput-object v15, v1, Landroid/animation/AnimatorSet;->mSetListener:Landroid/animation/AnimatorSet$AnimatorSetListener;

    const/4 v11, 0x0

    .local v11, "n":I
    :goto_0
    if-ge v11, v14, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/animation/AnimatorSet$Node;

    .local v12, "node":Landroid/animation/AnimatorSet$Node;
    invoke-virtual {v12}, Landroid/animation/AnimatorSet$Node;->clone()Landroid/animation/AnimatorSet$Node;

    move-result-object v13

    .local v13, "nodeClone":Landroid/animation/AnimatorSet$Node;
    invoke-static {v12, v13}, Landroid/animation/AnimatorSet$Node;->-set0(Landroid/animation/AnimatorSet$Node;Landroid/animation/AnimatorSet$Node;)Landroid/animation/AnimatorSet$Node;

    iget-object v15, v1, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v15, v1, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    iget-object v0, v13, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v15, 0x0

    iput-object v15, v13, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    const/4 v15, 0x0

    iput-object v15, v13, Landroid/animation/AnimatorSet$Node;->tmpDependencies:Ljava/util/ArrayList;

    const/4 v15, 0x0

    iput-object v15, v13, Landroid/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    const/4 v15, 0x0

    iput-object v15, v13, Landroid/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    iget-object v15, v13, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    invoke-virtual {v15}, Landroid/animation/Animator;->getListeners()Ljava/util/ArrayList;

    move-result-object v4

    .local v4, "cloneListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v9, v15, -0x1

    .local v9, "i":I
    :goto_1
    if-ltz v9, :cond_1

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/animation/Animator$AnimatorListener;

    .local v10, "listener":Landroid/animation/Animator$AnimatorListener;
    instance-of v15, v10, Landroid/animation/AnimatorSet$AnimatorSetListener;

    if-eqz v15, :cond_0

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    .end local v9    # "i":I
    .end local v10    # "listener":Landroid/animation/Animator$AnimatorListener;
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .end local v4    # "cloneListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    .end local v12    # "node":Landroid/animation/AnimatorSet$Node;
    .end local v13    # "nodeClone":Landroid/animation/AnimatorSet$Node;
    :cond_2
    const/4 v11, 0x0

    :goto_2
    if-ge v11, v14, :cond_6

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/animation/AnimatorSet$Node;

    .restart local v12    # "node":Landroid/animation/AnimatorSet$Node;
    invoke-static {v12}, Landroid/animation/AnimatorSet$Node;->-get0(Landroid/animation/AnimatorSet$Node;)Landroid/animation/AnimatorSet$Node;

    move-result-object v2

    .local v2, "clone":Landroid/animation/AnimatorSet$Node;
    iget-object v15, v12, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    if-eqz v15, :cond_3

    new-instance v15, Ljava/util/ArrayList;

    iget-object v0, v12, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    invoke-direct/range {v15 .. v16}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v15, v2, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    iget-object v15, v12, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v7

    .local v7, "depSize":I
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_3
    if-ge v9, v7, :cond_3

    iget-object v15, v12, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/animation/AnimatorSet$Dependency;

    .local v8, "dependency":Landroid/animation/AnimatorSet$Dependency;
    new-instance v3, Landroid/animation/AnimatorSet$Dependency;

    iget-object v15, v8, Landroid/animation/AnimatorSet$Dependency;->node:Landroid/animation/AnimatorSet$Node;

    invoke-static {v15}, Landroid/animation/AnimatorSet$Node;->-get0(Landroid/animation/AnimatorSet$Node;)Landroid/animation/AnimatorSet$Node;

    move-result-object v15

    iget v0, v8, Landroid/animation/AnimatorSet$Dependency;->rule:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-direct {v3, v15, v0}, Landroid/animation/AnimatorSet$Dependency;-><init>(Landroid/animation/AnimatorSet$Node;I)V

    .local v3, "cloneDependency":Landroid/animation/AnimatorSet$Dependency;
    iget-object v15, v2, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .end local v3    # "cloneDependency":Landroid/animation/AnimatorSet$Dependency;
    .end local v7    # "depSize":I
    .end local v8    # "dependency":Landroid/animation/AnimatorSet$Dependency;
    .end local v9    # "i":I
    :cond_3
    iget-object v15, v12, Landroid/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    if-eqz v15, :cond_4

    new-instance v15, Ljava/util/ArrayList;

    iget-object v0, v12, Landroid/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    invoke-direct/range {v15 .. v16}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v15, v2, Landroid/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    iget-object v15, v12, Landroid/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "dep$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/AnimatorSet$Node;

    .local v5, "dep":Landroid/animation/AnimatorSet$Node;
    iget-object v15, v2, Landroid/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    invoke-static {v5}, Landroid/animation/AnimatorSet$Node;->-get0(Landroid/animation/AnimatorSet$Node;)Landroid/animation/AnimatorSet$Node;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .end local v5    # "dep":Landroid/animation/AnimatorSet$Node;
    .end local v6    # "dep$iterator":Ljava/util/Iterator;
    :cond_4
    iget-object v15, v12, Landroid/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    if-eqz v15, :cond_5

    new-instance v15, Ljava/util/ArrayList;

    iget-object v0, v12, Landroid/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    invoke-direct/range {v15 .. v16}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v15, v2, Landroid/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    iget-object v15, v12, Landroid/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "dep$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/AnimatorSet$Node;

    .restart local v5    # "dep":Landroid/animation/AnimatorSet$Node;
    iget-object v15, v2, Landroid/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    invoke-static {v5}, Landroid/animation/AnimatorSet$Node;->-get0(Landroid/animation/AnimatorSet$Node;)Landroid/animation/AnimatorSet$Node;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .end local v5    # "dep":Landroid/animation/AnimatorSet$Node;
    .end local v6    # "dep$iterator":Ljava/util/Iterator;
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    .end local v2    # "clone":Landroid/animation/AnimatorSet$Node;
    .end local v12    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_6
    const/4 v11, 0x0

    :goto_6
    if-ge v11, v14, :cond_7

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/animation/AnimatorSet$Node;

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Landroid/animation/AnimatorSet$Node;->-set0(Landroid/animation/AnimatorSet$Node;Landroid/animation/AnimatorSet$Node;)Landroid/animation/AnimatorSet$Node;

    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_7
    return-object v1
.end method

.method public end()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/animation/AnimatorSet;->mTerminated:Z

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Landroid/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget-object v6, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eq v5, v6, :cond_1

    invoke-direct {p0}, Landroid/animation/AnimatorSet;->sortNodes()V

    iget-object v5, p0, Landroid/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "node$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet$Node;

    .local v2, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v5, p0, Landroid/animation/AnimatorSet;->mSetListener:Landroid/animation/AnimatorSet$AnimatorSetListener;

    if-nez v5, :cond_0

    new-instance v5, Landroid/animation/AnimatorSet$AnimatorSetListener;

    invoke-direct {v5, p0, p0}, Landroid/animation/AnimatorSet$AnimatorSetListener;-><init>(Landroid/animation/AnimatorSet;Landroid/animation/AnimatorSet;)V

    iput-object v5, p0, Landroid/animation/AnimatorSet;->mSetListener:Landroid/animation/AnimatorSet$AnimatorSetListener;

    :cond_0
    iget-object v5, v2, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    iget-object v6, p0, Landroid/animation/AnimatorSet;->mSetListener:Landroid/animation/AnimatorSet$AnimatorSetListener;

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .end local v2    # "node":Landroid/animation/AnimatorSet$Node;
    .end local v3    # "node$iterator":Ljava/util/Iterator;
    :cond_1
    iget-object v5, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    iget-object v5, p0, Landroid/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3

    iget-object v5, p0, Landroid/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "node$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet$Node;

    .restart local v2    # "node":Landroid/animation/AnimatorSet$Node;
    iget-object v5, v2, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    invoke-virtual {v5}, Landroid/animation/Animator;->end()V

    goto :goto_1

    .end local v2    # "node":Landroid/animation/AnimatorSet$Node;
    .end local v3    # "node$iterator":Ljava/util/Iterator;
    :cond_3
    iget-object v5, p0, Landroid/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .local v4, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    .local v0, "listener":Landroid/animation/Animator$AnimatorListener;
    invoke-interface {v0, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_2

    .end local v0    # "listener":Landroid/animation/Animator$AnimatorListener;
    .end local v1    # "listener$iterator":Ljava/util/Iterator;
    .end local v4    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_4
    iput-boolean v7, p0, Landroid/animation/AnimatorSet;->mStarted:Z

    :cond_5
    return-void
.end method

.method public getChangingConfigurations()I
    .locals 4

    .prologue
    invoke-super {p0}, Landroid/animation/Animator;->getChangingConfigurations()I

    move-result v0

    .local v0, "conf":I
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "nodeCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/AnimatorSet$Node;

    iget-object v3, v3, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->getChangingConfigurations()I

    move-result v3

    or-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public getChildAnimations()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, "childList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "node$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$Node;

    .local v1, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v3, v1, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v1    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_0
    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    iget-wide v0, p0, Landroid/animation/AnimatorSet;->mDuration:J

    return-wide v0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method public getStartDelay()J
    .locals 2

    .prologue
    iget-wide v0, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    return-wide v0
.end method

.method public isRunning()Z
    .locals 3

    .prologue
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "node$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet$Node;

    .local v0, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v2, v0, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    return v2

    .end local v0    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mStarted:Z

    return v0
.end method

.method public pause()V
    .locals 4

    .prologue
    iget-boolean v2, p0, Landroid/animation/AnimatorSet;->mPaused:Z

    .local v2, "previouslyPaused":Z
    invoke-super {p0}, Landroid/animation/Animator;->pause()V

    if-nez v2, :cond_0

    iget-boolean v3, p0, Landroid/animation/AnimatorSet;->mPaused:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->pause()V

    :cond_0
    return-void

    :cond_1
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "node$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet$Node;

    .local v0, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v3, v0, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->pause()V

    goto :goto_0
.end method

.method public play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;
    .locals 1
    .param p1, "anim"    # Landroid/animation/Animator;

    .prologue
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/AnimatorSet;->mNeedsSort:Z

    new-instance v0, Landroid/animation/AnimatorSet$Builder;

    invoke-direct {v0, p0, p1}, Landroid/animation/AnimatorSet$Builder;-><init>(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V

    return-object v0

    :cond_0
    return-object v0
.end method

.method public playSequentially(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iput-boolean v3, p0, Landroid/animation/AnimatorSet;->mNeedsSort:Z

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v3, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_0
    return-void

    :cond_1
    iput-boolean v2, p0, Landroid/animation/AnimatorSet;->mReversible:Z

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public varargs playSequentially([Landroid/animation/Animator;)V
    .locals 4
    .param p1, "items"    # [Landroid/animation/Animator;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iput-boolean v3, p0, Landroid/animation/AnimatorSet;->mNeedsSort:Z

    array-length v1, p1

    if-ne v1, v3, :cond_1

    aget-object v1, p1, v2

    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_0
    return-void

    :cond_1
    iput-boolean v2, p0, Landroid/animation/AnimatorSet;->mReversible:Z

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public playTogether(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/animation/Animator;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/animation/AnimatorSet;->mNeedsSort:Z

    const/4 v2, 0x0

    .local v2, "builder":Landroid/animation/AnimatorSet$Builder;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v2    # "builder":Landroid/animation/AnimatorSet$Builder;
    .local v1, "anim$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .local v0, "anim":Landroid/animation/Animator;
    if-nez v2, :cond_0

    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    .local v2, "builder":Landroid/animation/AnimatorSet$Builder;
    goto :goto_0

    .end local v2    # "builder":Landroid/animation/AnimatorSet$Builder;
    :cond_0
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_0

    .end local v0    # "anim":Landroid/animation/Animator;
    .end local v1    # "anim$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public varargs playTogether([Landroid/animation/Animator;)V
    .locals 3
    .param p1, "items"    # [Landroid/animation/Animator;

    .prologue
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/animation/AnimatorSet;->mNeedsSort:Z

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    .local v0, "builder":Landroid/animation/AnimatorSet$Builder;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "builder":Landroid/animation/AnimatorSet$Builder;
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    iget-boolean v2, p0, Landroid/animation/AnimatorSet;->mPaused:Z

    .local v2, "previouslyPaused":Z
    invoke-super {p0}, Landroid/animation/Animator;->resume()V

    if-eqz v2, :cond_0

    iget-boolean v3, p0, Landroid/animation/AnimatorSet;->mPaused:Z

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->resume()V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "node$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet$Node;

    .local v0, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v3, v0, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->resume()V

    goto :goto_1
.end method

.method public reverse()V
    .locals 3

    .prologue
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->canReverse()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "node$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet$Node;

    .local v0, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v2, v0, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->reverse()V

    goto :goto_0

    .end local v0    # "node":Landroid/animation/AnimatorSet$Node;
    .end local v1    # "node$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public bridge synthetic setDuration(J)Landroid/animation/Animator;
    .locals 1
    .param p1, "duration"    # J

    .prologue
    invoke-virtual {p0, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method public setDuration(J)Landroid/animation/AnimatorSet;
    .locals 3
    .param p1, "duration"    # J

    .prologue
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "duration must be a value of zero or greater"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-wide p1, p0, Landroid/animation/AnimatorSet;->mDuration:J

    return-object p0
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 0
    .param p1, "interpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    iput-object p1, p0, Landroid/animation/AnimatorSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public setStartDelay(J)V
    .locals 5
    .param p1, "startDelay"    # J

    .prologue
    iget-wide v0, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/animation/AnimatorSet;->mReversible:Z

    :cond_0
    iput-wide p1, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    return-void
.end method

.method public setTarget(Ljava/lang/Object;)V
    .locals 4
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "node$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$Node;

    .local v1, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v0, v1, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    .local v0, "animation":Landroid/animation/Animator;
    instance-of v3, v0, Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_1

    check-cast v0, Landroid/animation/AnimatorSet;

    .end local v0    # "animation":Landroid/animation/Animator;
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    goto :goto_0

    .restart local v0    # "animation":Landroid/animation/Animator;
    :cond_1
    instance-of v3, v0, Landroid/animation/ObjectAnimator;

    if-eqz v3, :cond_0

    check-cast v0, Landroid/animation/ObjectAnimator;

    .end local v0    # "animation":Landroid/animation/Animator;
    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    goto :goto_0

    .end local v1    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_2
    return-void
.end method

.method public setupEndValues()V
    .locals 3

    .prologue
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "node$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet$Node;

    .local v0, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v2, v0, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->setupEndValues()V

    goto :goto_0

    .end local v0    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_0
    return-void
.end method

.method public setupStartValues()V
    .locals 3

    .prologue
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "node$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet$Node;

    .local v0, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v2, v0, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->setupStartValues()V

    goto :goto_0

    .end local v0    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_0
    return-void
.end method

.method public start()V
    .locals 22

    .prologue
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/animation/AnimatorSet;->mTerminated:Z

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/animation/AnimatorSet;->mStarted:Z

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/animation/AnimatorSet;->mPaused:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "node$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/animation/AnimatorSet$Node;

    .local v10, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v0, v10, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/animation/Animator;->setAllowRunningAsynchronously(Z)V

    goto :goto_0

    .end local v10    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/animation/AnimatorSet;->mDuration:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-ltz v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/animation/AnimatorSet$Node;

    .restart local v10    # "node":Landroid/animation/AnimatorSet$Node;
    iget-object v0, v10, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/animation/AnimatorSet;->mDuration:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    goto :goto_1

    .end local v10    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/animation/AnimatorSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/animation/AnimatorSet$Node;

    .restart local v10    # "node":Landroid/animation/AnimatorSet$Node;
    iget-object v0, v10, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/animation/AnimatorSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_2

    .end local v10    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_2
    invoke-direct/range {p0 .. p0}, Landroid/animation/AnimatorSet;->sortNodes()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v15

    .local v15, "numSortedNodes":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    if-ge v6, v15, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/animation/AnimatorSet$Node;

    .restart local v10    # "node":Landroid/animation/AnimatorSet$Node;
    iget-object v0, v10, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/animation/Animator;->getListeners()Ljava/util/ArrayList;

    move-result-object v16

    .local v16, "oldListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    if-eqz v16, :cond_5

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_5

    new-instance v4, Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .local v4, "clonedListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "listener$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/animation/Animator$AnimatorListener;

    .local v8, "listener":Landroid/animation/Animator$AnimatorListener;
    instance-of v0, v8, Landroid/animation/AnimatorSet$DependencyListener;

    move/from16 v18, v0

    if-nez v18, :cond_4

    instance-of v0, v8, Landroid/animation/AnimatorSet$AnimatorSetListener;

    move/from16 v18, v0

    if-eqz v18, :cond_3

    :cond_4
    iget-object v0, v10, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_4

    .end local v4    # "clonedListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    .end local v8    # "listener":Landroid/animation/Animator$AnimatorListener;
    .end local v9    # "listener$iterator":Ljava/util/Iterator;
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .end local v10    # "node":Landroid/animation/AnimatorSet$Node;
    .end local v16    # "oldListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_6
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .local v12, "nodesToStart":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/AnimatorSet$Node;>;"
    const/4 v6, 0x0

    :goto_5
    if-ge v6, v15, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/animation/AnimatorSet$Node;

    .restart local v10    # "node":Landroid/animation/AnimatorSet$Node;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/animation/AnimatorSet;->mSetListener:Landroid/animation/AnimatorSet$AnimatorSetListener;

    move-object/from16 v18, v0

    if-nez v18, :cond_7

    new-instance v18, Landroid/animation/AnimatorSet$AnimatorSetListener;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Landroid/animation/AnimatorSet$AnimatorSetListener;-><init>(Landroid/animation/AnimatorSet;Landroid/animation/AnimatorSet;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/animation/AnimatorSet;->mSetListener:Landroid/animation/AnimatorSet$AnimatorSetListener;

    :cond_7
    iget-object v0, v10, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    if-eqz v18, :cond_8

    iget-object v0, v10, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-nez v18, :cond_9

    :cond_8
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    iget-object v0, v10, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/animation/AnimatorSet;->mSetListener:Landroid/animation/AnimatorSet$AnimatorSetListener;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_9
    iget-object v0, v10, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v13

    .local v13, "numDependencies":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_7
    if-ge v7, v13, :cond_a

    iget-object v0, v10, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/AnimatorSet$Dependency;

    .local v5, "dependency":Landroid/animation/AnimatorSet$Dependency;
    iget-object v0, v5, Landroid/animation/AnimatorSet$Dependency;->node:Landroid/animation/AnimatorSet$Node;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    move-object/from16 v18, v0

    new-instance v19, Landroid/animation/AnimatorSet$DependencyListener;

    iget v0, v5, Landroid/animation/AnimatorSet$Dependency;->rule:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move/from16 v2, v20

    invoke-direct {v0, v1, v10, v2}, Landroid/animation/AnimatorSet$DependencyListener;-><init>(Landroid/animation/AnimatorSet;Landroid/animation/AnimatorSet$Node;I)V

    invoke-virtual/range {v18 .. v19}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .end local v5    # "dependency":Landroid/animation/AnimatorSet$Dependency;
    :cond_a
    iget-object v0, v10, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/ArrayList;

    move-object/from16 v0, v18

    iput-object v0, v10, Landroid/animation/AnimatorSet$Node;->tmpDependencies:Ljava/util/ArrayList;

    goto :goto_6

    .end local v7    # "j":I
    .end local v10    # "node":Landroid/animation/AnimatorSet$Node;
    .end local v13    # "numDependencies":I
    :cond_b
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/animation/AnimatorSet;->mStartDelay:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-gtz v18, :cond_c

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/animation/AnimatorSet$Node;

    .restart local v10    # "node":Landroid/animation/AnimatorSet$Node;
    iget-object v0, v10, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/animation/Animator;->start()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    iget-object v0, v10, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .end local v10    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_c
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    fill-array-data v18, :array_0

    invoke-static/range {v18 .. v18}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/animation/AnimatorSet;->mStartDelay:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    move-object/from16 v18, v0

    new-instance v19, Landroid/animation/AnimatorSet$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12}, Landroid/animation/AnimatorSet$1;-><init>(Landroid/animation/AnimatorSet;Ljava/util/ArrayList;)V

    invoke-virtual/range {v18 .. v19}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/animation/ValueAnimator;->start()V

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    if-eqz v18, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/ArrayList;

    .local v17, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v14

    .local v14, "numListeners":I
    const/4 v6, 0x0

    :goto_9
    if-ge v6, v14, :cond_e

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/animation/Animator$AnimatorListener;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .end local v14    # "numListeners":I
    .end local v17    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-nez v18, :cond_f

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/animation/AnimatorSet;->mStartDelay:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-nez v18, :cond_f

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/animation/AnimatorSet;->mStarted:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    if-eqz v18, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/ArrayList;

    .restart local v17    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v14

    .restart local v14    # "numListeners":I
    const/4 v6, 0x0

    :goto_a
    if-ge v6, v14, :cond_f

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/animation/Animator$AnimatorListener;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    .end local v14    # "numListeners":I
    .end local v17    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_f
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AnimatorSet@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, "returnVal":Ljava/lang/String;
    iget-boolean v2, p0, Landroid/animation/AnimatorSet;->mNeedsSort:Z

    .local v2, "prevNeedsSort":Z
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->sortNodes()V

    iput-boolean v2, p0, Landroid/animation/AnimatorSet;->mNeedsSort:Z

    iget-object v4, p0, Landroid/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "node$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet$Node;

    .local v0, "node":Landroid/animation/AnimatorSet$Node;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    invoke-virtual {v5}, Landroid/animation/Animator;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .end local v0    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
