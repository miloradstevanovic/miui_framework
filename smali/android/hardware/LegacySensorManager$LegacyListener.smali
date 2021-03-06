.class final Landroid/hardware/LegacySensorManager$LegacyListener;
.super Ljava/lang/Object;
.source "LegacySensorManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/LegacySensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LegacyListener"
.end annotation


# instance fields
.field private mSensors:I

.field private mTarget:Landroid/hardware/SensorListener;

.field private mValues:[F

.field private final mYawfilter:Landroid/hardware/LegacySensorManager$LmsFilter;


# direct methods
.method constructor <init>(Landroid/hardware/SensorListener;)V
    .registers 3
    .parameter "target"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mValues:[F

    new-instance v0, Landroid/hardware/LegacySensorManager$LmsFilter;

    invoke-direct {v0}, Landroid/hardware/LegacySensorManager$LmsFilter;-><init>()V

    iput-object v0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mYawfilter:Landroid/hardware/LegacySensorManager$LmsFilter;

    iput-object p1, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mTarget:Landroid/hardware/SensorListener;

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    return-void
.end method

.method private static getLegacySensorType(I)I
    .registers 2
    .parameter "type"

    .prologue
    packed-switch p0, :pswitch_data_10

    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return v0

    :pswitch_5
    const/4 v0, 0x2

    goto :goto_4

    :pswitch_7
    const/16 v0, 0x8

    goto :goto_4

    :pswitch_a
    const/16 v0, 0x80

    goto :goto_4

    :pswitch_d
    const/4 v0, 0x4

    goto :goto_4

    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_5
        :pswitch_7
        :pswitch_a
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_d
    .end packed-switch
.end method

.method private static hasOrientationSensor(I)Z
    .registers 2
    .parameter "sensors"

    .prologue
    and-int/lit16 v0, p0, 0x81

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private mapSensorDataToWindow(I[FI)V
    .registers 12
    .parameter "sensor"
    .parameter "values"
    .parameter "orientation"

    .prologue
    const/high16 v7, 0x4334

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    aget v0, p2, v4

    .local v0, x:F
    aget v1, p2, v5

    .local v1, y:F
    aget v2, p2, v6

    .local v2, z:F
    sparse-switch p1, :sswitch_data_72

    :goto_e
    aput v0, p2, v4

    aput v1, p2, v5

    aput v2, p2, v6

    const/4 v3, 0x3

    aput v0, p2, v3

    const/4 v3, 0x4

    aput v1, p2, v3

    const/4 v3, 0x5

    aput v2, p2, v3

    and-int/lit8 v3, p3, 0x1

    if-eqz v3, :cond_24

    sparse-switch p1, :sswitch_data_84

    :cond_24
    :goto_24
    and-int/lit8 v3, p3, 0x2

    if-eqz v3, :cond_31

    aget v0, p2, v4

    aget v1, p2, v5

    aget v2, p2, v6

    sparse-switch p1, :sswitch_data_96

    :cond_31
    :goto_31
    return-void

    :sswitch_32
    neg-float v2, v2

    goto :goto_e

    :sswitch_34
    neg-float v0, v0

    neg-float v1, v1

    neg-float v2, v2

    goto :goto_e

    :sswitch_38
    neg-float v0, v0

    neg-float v1, v1

    goto :goto_e

    :sswitch_3b
    neg-float v3, v1

    aput v3, p2, v4

    aput v0, p2, v5

    aput v2, p2, v6

    goto :goto_24

    :sswitch_43
    const/high16 v3, 0x4387

    cmpg-float v3, v0, v3

    if-gez v3, :cond_54

    const/16 v3, 0x5a

    :goto_4b
    int-to-float v3, v3

    add-float/2addr v3, v0

    aput v3, p2, v4

    aput v2, p2, v5

    aput v1, p2, v6

    goto :goto_24

    :cond_54
    const/16 v3, -0x10e

    goto :goto_4b

    :sswitch_57
    neg-float v3, v0

    aput v3, p2, v4

    neg-float v3, v1

    aput v3, p2, v5

    aput v2, p2, v6

    goto :goto_31

    :sswitch_60
    cmpl-float v3, v0, v7

    if-ltz v3, :cond_6f

    sub-float v3, v0, v7

    :goto_66
    aput v3, p2, v4

    neg-float v3, v1

    aput v3, p2, v5

    neg-float v3, v2

    aput v3, p2, v6

    goto :goto_31

    :cond_6f
    add-float v3, v0, v7

    goto :goto_66

    :sswitch_data_72
    .sparse-switch
        0x1 -> :sswitch_32
        0x2 -> :sswitch_34
        0x8 -> :sswitch_38
        0x80 -> :sswitch_32
    .end sparse-switch

    :sswitch_data_84
    .sparse-switch
        0x1 -> :sswitch_43
        0x2 -> :sswitch_3b
        0x8 -> :sswitch_3b
        0x80 -> :sswitch_43
    .end sparse-switch

    :sswitch_data_96
    .sparse-switch
        0x1 -> :sswitch_60
        0x2 -> :sswitch_57
        0x8 -> :sswitch_57
        0x80 -> :sswitch_60
    .end sparse-switch
.end method


# virtual methods
.method hasSensors()Z
    .registers 2

    .prologue
    iget v0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 5
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    :try_start_0
    iget-object v0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mTarget:Landroid/hardware/SensorListener;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    invoke-static {v1}, Landroid/hardware/LegacySensorManager$LegacyListener;->getLegacySensorType(I)I

    move-result v1

    invoke-interface {v0, v1, p2}, Landroid/hardware/SensorListener;->onAccuracyChanged(II)V
    :try_end_d
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_d} :catch_e

    :goto_d
    return-void

    :catch_e
    move-exception v0

    goto :goto_d
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 11
    .parameter "event"

    .prologue
    const/4 v4, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v2, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mValues:[F

    .local v2, v:[F
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v7

    aput v3, v2, v7

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v8

    aput v3, v2, v8

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v4

    aput v3, v2, v4

    iget-object v3, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    .local v1, type:I
    invoke-static {v1}, Landroid/hardware/LegacySensorManager$LegacyListener;->getLegacySensorType(I)I

    move-result v0

    .local v0, legacyType:I
    invoke-static {}, Landroid/hardware/LegacySensorManager;->getRotation()I

    move-result v3

    invoke-direct {p0, v0, v2, v3}, Landroid/hardware/LegacySensorManager$LegacyListener;->mapSensorDataToWindow(I[FI)V

    const/4 v3, 0x3

    if-ne v1, v3, :cond_50

    iget v3, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_38

    iget-object v3, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mTarget:Landroid/hardware/SensorListener;

    const/16 v4, 0x80

    invoke-interface {v3, v4, v2}, Landroid/hardware/SensorListener;->onSensorChanged(I[F)V

    :cond_38
    iget v3, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4f

    iget-object v3, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mYawfilter:Landroid/hardware/LegacySensorManager$LmsFilter;

    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    aget v6, v2, v7

    invoke-virtual {v3, v4, v5, v6}, Landroid/hardware/LegacySensorManager$LmsFilter;->filter(JF)F

    move-result v3

    aput v3, v2, v7

    iget-object v3, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mTarget:Landroid/hardware/SensorListener;

    invoke-interface {v3, v8, v2}, Landroid/hardware/SensorListener;->onSensorChanged(I[F)V

    :cond_4f
    :goto_4f
    return-void

    :cond_50
    iget-object v3, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mTarget:Landroid/hardware/SensorListener;

    invoke-interface {v3, v0, v2}, Landroid/hardware/SensorListener;->onSensorChanged(I[F)V

    goto :goto_4f
.end method

.method registerSensor(I)Z
    .registers 5
    .parameter "legacyType"

    .prologue
    const/4 v1, 0x0

    iget v2, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    and-int/2addr v2, p1

    if-eqz v2, :cond_7

    :cond_6
    :goto_6
    return v1

    :cond_7
    iget v2, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    invoke-static {v2}, Landroid/hardware/LegacySensorManager$LegacyListener;->hasOrientationSensor(I)Z

    move-result v0

    .local v0, alreadyHasOrientationSensor:Z
    iget v2, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    or-int/2addr v2, p1

    iput v2, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    if-eqz v0, :cond_1a

    invoke-static {p1}, Landroid/hardware/LegacySensorManager$LegacyListener;->hasOrientationSensor(I)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_1a
    const/4 v1, 0x1

    goto :goto_6
.end method

.method unregisterSensor(I)Z
    .registers 5
    .parameter "legacyType"

    .prologue
    const/4 v0, 0x0

    iget v1, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    and-int/2addr v1, p1

    if-nez v1, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    iget v1, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    invoke-static {p1}, Landroid/hardware/LegacySensorManager$LegacyListener;->hasOrientationSensor(I)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget v1, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    invoke-static {v1}, Landroid/hardware/LegacySensorManager$LegacyListener;->hasOrientationSensor(I)Z

    move-result v1

    if-nez v1, :cond_6

    :cond_1c
    const/4 v0, 0x1

    goto :goto_6
.end method
