.class Landroid/speech/tts/TextToSpeechService$SynthHandler;
.super Landroid/os/Handler;
.source "TextToSpeechService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SynthHandler"
.end annotation


# instance fields
.field private mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;

.field final synthetic this$0:Landroid/speech/tts/TextToSpeechService;


# direct methods
.method public constructor <init>(Landroid/speech/tts/TextToSpeechService;Landroid/os/Looper;)V
    .registers 4
    .parameter
    .parameter "looper"

    .prologue
    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;

    return-void
.end method

.method static synthetic access$100(Landroid/speech/tts/TextToSpeechService$SynthHandler;Landroid/speech/tts/TextToSpeechService$SpeechItem;)Landroid/speech/tts/TextToSpeechService$SpeechItem;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->setCurrentSpeechItem(Landroid/speech/tts/TextToSpeechService$SpeechItem;)Landroid/speech/tts/TextToSpeechService$SpeechItem;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized getCurrentSpeechItem()Landroid/speech/tts/TextToSpeechService$SpeechItem;
    .registers 2

    .prologue
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized maybeRemoveCurrentSpeechItem(Ljava/lang/Object;)Landroid/speech/tts/TextToSpeechService$SpeechItem;
    .registers 4
    .parameter "callerIdentity"

    .prologue
    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;

    if-eqz v1, :cond_13

    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->getCallerIdentity()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_13

    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;

    .local v0, current:Landroid/speech/tts/TextToSpeechService$SpeechItem;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;
    :try_end_13
    .catchall {:try_start_2 .. :try_end_13} :catchall_15

    .end local v0           #current:Landroid/speech/tts/TextToSpeechService$SpeechItem;
    :cond_13
    monitor-exit p0

    return-object v0

    :catchall_15
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized setCurrentSpeechItem(Landroid/speech/tts/TextToSpeechService$SpeechItem;)Landroid/speech/tts/TextToSpeechService$SpeechItem;
    .registers 4
    .parameter "speechItem"

    .prologue
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;

    .local v0, old:Landroid/speech/tts/TextToSpeechService$SpeechItem;
    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-object v0

    .end local v0           #old:Landroid/speech/tts/TextToSpeechService$SpeechItem;
    :catchall_7
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public enqueueSpeechItem(ILandroid/speech/tts/TextToSpeechService$SpeechItem;)I
    .registers 8
    .parameter "queueMode"
    .parameter "speechItem"

    .prologue
    const/4 v2, -0x1

    invoke-virtual {p2}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->isValid()Z

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {p2}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->dispatchOnError()V

    :goto_a
    return v2

    :cond_b
    if-nez p1, :cond_2b

    invoke-virtual {p2}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->getCallerIdentity()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->stopForApp(Ljava/lang/Object;)I

    :cond_14
    :goto_14
    new-instance v1, Landroid/speech/tts/TextToSpeechService$SynthHandler$1;

    invoke-direct {v1, p0, p2}, Landroid/speech/tts/TextToSpeechService$SynthHandler$1;-><init>(Landroid/speech/tts/TextToSpeechService$SynthHandler;Landroid/speech/tts/TextToSpeechService$SpeechItem;)V

    .local v1, runnable:Ljava/lang/Runnable;
    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    invoke-virtual {p2}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->getCallerIdentity()Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v3

    if-eqz v3, :cond_32

    const/4 v2, 0x0

    goto :goto_a

    .end local v0           #msg:Landroid/os/Message;
    .end local v1           #runnable:Ljava/lang/Runnable;
    :cond_2b
    const/4 v3, 0x2

    if-ne p1, v3, :cond_14

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->stopAll()I

    goto :goto_14

    .restart local v0       #msg:Landroid/os/Message;
    .restart local v1       #runnable:Ljava/lang/Runnable;
    :cond_32
    const-string v3, "TextToSpeechService"

    const-string v4, "SynthThread has quit"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->dispatchOnError()V

    goto :goto_a
.end method

.method public isSpeaking()Z
    .registers 2

    .prologue
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->getCurrentSpeechItem()Landroid/speech/tts/TextToSpeechService$SpeechItem;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public quit()V
    .registers 3

    .prologue
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->setCurrentSpeechItem(Landroid/speech/tts/TextToSpeechService$SpeechItem;)Landroid/speech/tts/TextToSpeechService$SpeechItem;

    move-result-object v0

    .local v0, current:Landroid/speech/tts/TextToSpeechService$SpeechItem;
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->stop()V

    :cond_11
    return-void
.end method

.method public stopAll()I
    .registers 3

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->setCurrentSpeechItem(Landroid/speech/tts/TextToSpeechService$SpeechItem;)Landroid/speech/tts/TextToSpeechService$SpeechItem;

    move-result-object v0

    .local v0, current:Landroid/speech/tts/TextToSpeechService$SpeechItem;
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->stop()V

    :cond_a
    invoke-virtual {p0, v1}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->this$0:Landroid/speech/tts/TextToSpeechService;

    #getter for: Landroid/speech/tts/TextToSpeechService;->mAudioPlaybackHandler:Landroid/speech/tts/AudioPlaybackHandler;
    invoke-static {v1}, Landroid/speech/tts/TextToSpeechService;->access$200(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/AudioPlaybackHandler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/speech/tts/AudioPlaybackHandler;->stop()V

    const/4 v1, 0x0

    return v1
.end method

.method public stopForApp(Ljava/lang/Object;)I
    .registers 4
    .parameter "callerIdentity"

    .prologue
    if-nez p1, :cond_4

    const/4 v1, -0x1

    :goto_3
    return v1

    :cond_4
    invoke-virtual {p0, p1}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->maybeRemoveCurrentSpeechItem(Ljava/lang/Object;)Landroid/speech/tts/TextToSpeechService$SpeechItem;

    move-result-object v0

    .local v0, current:Landroid/speech/tts/TextToSpeechService$SpeechItem;
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->stop()V

    :cond_10
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->this$0:Landroid/speech/tts/TextToSpeechService;

    #getter for: Landroid/speech/tts/TextToSpeechService;->mAudioPlaybackHandler:Landroid/speech/tts/AudioPlaybackHandler;
    invoke-static {v1}, Landroid/speech/tts/TextToSpeechService;->access$200(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/AudioPlaybackHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/speech/tts/AudioPlaybackHandler;->stopForApp(Ljava/lang/Object;)V

    const/4 v1, 0x0

    goto :goto_3
.end method
