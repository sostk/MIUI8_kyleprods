.class public Landroid/database/CrossProcessCursorWrapper;
.super Landroid/database/CursorWrapper;
.source "CrossProcessCursorWrapper.java"

# interfaces
.implements Landroid/database/CrossProcessCursor;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    return-void
.end method


# virtual methods
.method public fillWindow(ILandroid/database/CursorWindow;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "window"    # Landroid/database/CursorWindow;

    .prologue
    iget-object v1, p0, Landroid/database/CrossProcessCursorWrapper;->mCursor:Landroid/database/Cursor;

    instance-of v1, v1, Landroid/database/CrossProcessCursor;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/database/CrossProcessCursorWrapper;->mCursor:Landroid/database/Cursor;

    check-cast v0, Landroid/database/CrossProcessCursor;

    .local v0, "crossProcessCursor":Landroid/database/CrossProcessCursor;
    invoke-interface {v0, p1, p2}, Landroid/database/CrossProcessCursor;->fillWindow(ILandroid/database/CursorWindow;)V

    return-void

    .end local v0    # "crossProcessCursor":Landroid/database/CrossProcessCursor;
    :cond_0
    iget-object v1, p0, Landroid/database/CrossProcessCursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-static {v1, p1, p2}, Landroid/database/DatabaseUtils;->cursorFillWindow(Landroid/database/Cursor;ILandroid/database/CursorWindow;)V

    return-void
.end method

.method public getWindow()Landroid/database/CursorWindow;
    .locals 2

    .prologue
    iget-object v1, p0, Landroid/database/CrossProcessCursorWrapper;->mCursor:Landroid/database/Cursor;

    instance-of v1, v1, Landroid/database/CrossProcessCursor;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/database/CrossProcessCursorWrapper;->mCursor:Landroid/database/Cursor;

    check-cast v0, Landroid/database/CrossProcessCursor;

    .local v0, "crossProcessCursor":Landroid/database/CrossProcessCursor;
    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object v1

    return-object v1

    .end local v0    # "crossProcessCursor":Landroid/database/CrossProcessCursor;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public onMove(II)Z
    .locals 2
    .param p1, "oldPosition"    # I
    .param p2, "newPosition"    # I

    .prologue
    iget-object v1, p0, Landroid/database/CrossProcessCursorWrapper;->mCursor:Landroid/database/Cursor;

    instance-of v1, v1, Landroid/database/CrossProcessCursor;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/database/CrossProcessCursorWrapper;->mCursor:Landroid/database/Cursor;

    check-cast v0, Landroid/database/CrossProcessCursor;

    .local v0, "crossProcessCursor":Landroid/database/CrossProcessCursor;
    invoke-interface {v0, p1, p2}, Landroid/database/CrossProcessCursor;->onMove(II)Z

    move-result v1

    return v1

    .end local v0    # "crossProcessCursor":Landroid/database/CrossProcessCursor;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
