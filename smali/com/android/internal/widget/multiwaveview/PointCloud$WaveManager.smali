.class public Lcom/android/internal/widget/multiwaveview/PointCloud$WaveManager;
.super Ljava/lang/Object;
.source "PointCloud.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/multiwaveview/PointCloud;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WaveManager"
.end annotation


# instance fields
.field private alpha:F

.field private radius:F

.field final synthetic this$0:Lcom/android/internal/widget/multiwaveview/PointCloud;

.field private width:F


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/multiwaveview/PointCloud;)V
    .registers 3
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/widget/multiwaveview/PointCloud$WaveManager;->this$0:Lcom/android/internal/widget/multiwaveview/PointCloud;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x4248

    iput v0, p0, Lcom/android/internal/widget/multiwaveview/PointCloud$WaveManager;->radius:F

    const/high16 v0, 0x4348

    iput v0, p0, Lcom/android/internal/widget/multiwaveview/PointCloud$WaveManager;->width:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/multiwaveview/PointCloud$WaveManager;->alpha:F

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/widget/multiwaveview/PointCloud$WaveManager;)F
    .registers 2
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/PointCloud$WaveManager;->radius:F

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/widget/multiwaveview/PointCloud$WaveManager;)F
    .registers 2
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/PointCloud$WaveManager;->width:F

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/widget/multiwaveview/PointCloud$WaveManager;)F
    .registers 2
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/PointCloud$WaveManager;->alpha:F

    return v0
.end method


# virtual methods
.method public getAlpha()F
    .registers 2

    .prologue
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/PointCloud$WaveManager;->alpha:F

    return v0
.end method

.method public getRadius()F
    .registers 2

    .prologue
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/PointCloud$WaveManager;->radius:F

    return v0
.end method

.method public setAlpha(F)V
    .registers 2
    .parameter "a"

    .prologue
    iput p1, p0, Lcom/android/internal/widget/multiwaveview/PointCloud$WaveManager;->alpha:F

    return-void
.end method

.method public setRadius(F)V
    .registers 2
    .parameter "r"

    .prologue
    iput p1, p0, Lcom/android/internal/widget/multiwaveview/PointCloud$WaveManager;->radius:F

    return-void
.end method
