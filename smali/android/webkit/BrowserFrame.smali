.class Landroid/webkit/BrowserFrame;
.super Landroid/os/Handler;
.source "BrowserFrame.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/BrowserFrame$ConfigCallback;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field static final DRAWABLEDIR:I = 0x3

.field private static final FILE_UPLOAD_LABEL:I = 0x4

.field private static final FILE_UPLOAD_NO_FILE_CHOSEN:I = 0x7

.field static final FRAME_COMPLETED:I = 0x3e9

.field static final FRAME_LOADTYPE_BACK:I = 0x1

.field static final FRAME_LOADTYPE_FORWARD:I = 0x2

.field static final FRAME_LOADTYPE_INDEXEDBACKFORWARD:I = 0x3

.field static final FRAME_LOADTYPE_REDIRECT:I = 0x7

.field static final FRAME_LOADTYPE_RELOAD:I = 0x4

.field static final FRAME_LOADTYPE_RELOADALLOWINGSTALEDATA:I = 0x5

.field static final FRAME_LOADTYPE_REPLACE:I = 0x8

.field static final FRAME_LOADTYPE_SAME:I = 0x6

.field static final FRAME_LOADTYPE_STANDARD:I = 0x0

.field private static final LOADERROR:I = 0x2

.field private static final LOGTAG:Ljava/lang/String; = "webkit"

.field private static final MAX_OUTSTANDING_REQUESTS:I = 0x12c

.field private static final NODOMAIN:I = 0x1

.field static final ORIENTATION_CHANGED:I = 0x3ea

.field static final POLICY_FUNCTION:I = 0x3eb

.field static final POLICY_IGNORE:I = 0x2

.field static final POLICY_USE:I = 0x0

.field private static final RESET_LABEL:I = 0x5

.field private static final SUBMIT_LABEL:I = 0x6

.field private static final TRANSITION_SWITCH_THRESHOLD:I = 0x4b

.field static sConfigCallback:Landroid/webkit/BrowserFrame$ConfigCallback;

.field static sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;


# instance fields
.field private mBlockMessages:Z

.field private final mCallbackProxy:Landroid/webkit/CallbackProxy;

.field private mCommitted:Z

.field private final mContext:Landroid/content/Context;

.field private mFirstLayoutDone:Z

.field private mIsMainFrame:Z

.field private mJavaScriptObjects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyStoreHandler:Landroid/webkit/KeyStoreHandler;

.field mLoadInitFromJava:Z

.field private mLoadType:I

.field mNativeFrame:I

.field private mOrientation:I

.field private mRemovedJavaScriptObjects:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mSearchBox:Landroid/webkit/SearchBoxImpl;

.field private final mSettings:Landroid/webkit/WebSettingsClassic;

.field private final mWebViewCore:Landroid/webkit/WebViewCore;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 62
    const-class v0, Landroid/webkit/BrowserFrame;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Landroid/webkit/BrowserFrame;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebViewCore;Landroid/webkit/CallbackProxy;Landroid/webkit/WebSettingsClassic;Ljava/util/Map;)V
    .registers 11
    .parameter "context"
    .parameter "w"
    .parameter "proxy"
    .parameter "settings"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/webkit/WebViewCore;",
            "Landroid/webkit/CallbackProxy;",
            "Landroid/webkit/WebSettingsClassic;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p5, javascriptInterfaces:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v2, 0x1

    .line 204
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 80
    iput-boolean v2, p0, Landroid/webkit/BrowserFrame;->mFirstLayoutDone:Z

    .line 81
    iput-boolean v2, p0, Landroid/webkit/BrowserFrame;->mCommitted:Z

    .line 85
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/webkit/BrowserFrame;->mBlockMessages:Z

    .line 86
    const/4 v2, -0x1

    iput v2, p0, Landroid/webkit/BrowserFrame;->mOrientation:I

    .line 96
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/webkit/BrowserFrame;->mKeyStoreHandler:Landroid/webkit/KeyStoreHandler;

    .line 206
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 210
    .local v1, appContext:Landroid/content/Context;
    sget-object v2, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-nez v2, :cond_40

    .line 211
    new-instance v2, Landroid/webkit/JWebCoreJavaBridge;

    invoke-direct {v2}, Landroid/webkit/JWebCoreJavaBridge;-><init>()V

    sput-object v2, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    .line 213
    const-string v2, "activity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 215
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v2

    const/16 v3, 0x10

    if-le v2, v3, :cond_9b

    .line 216
    sget-object v2, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    const/high16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/webkit/JWebCoreJavaBridge;->setCacheSize(I)V

    .line 221
    :goto_37
    invoke-static {v1}, Landroid/webkit/CacheManager;->init(Landroid/content/Context;)V

    .line 223
    invoke-static {v1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 225
    invoke-static {v1}, Landroid/webkit/PluginManager;->getInstance(Landroid/content/Context;)Landroid/webkit/PluginManager;

    .line 228
    .end local v0           #am:Landroid/app/ActivityManager;
    :cond_40
    sget-object v2, Landroid/webkit/BrowserFrame;->sConfigCallback:Landroid/webkit/BrowserFrame$ConfigCallback;

    if-nez v2, :cond_59

    .line 229
    new-instance v3, Landroid/webkit/BrowserFrame$ConfigCallback;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-direct {v3, v2}, Landroid/webkit/BrowserFrame$ConfigCallback;-><init>(Landroid/view/WindowManager;)V

    sput-object v3, Landroid/webkit/BrowserFrame;->sConfigCallback:Landroid/webkit/BrowserFrame$ConfigCallback;

    .line 232
    sget-object v2, Landroid/webkit/BrowserFrame;->sConfigCallback:Landroid/webkit/BrowserFrame$ConfigCallback;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->addConfigCallback(Landroid/content/ComponentCallbacks;)V

    .line 234
    :cond_59
    sget-object v2, Landroid/webkit/BrowserFrame;->sConfigCallback:Landroid/webkit/BrowserFrame$ConfigCallback;

    invoke-virtual {v2, p0}, Landroid/webkit/BrowserFrame$ConfigCallback;->addHandler(Landroid/os/Handler;)V

    .line 236
    iput-object p5, p0, Landroid/webkit/BrowserFrame;->mJavaScriptObjects:Ljava/util/Map;

    .line 237
    iget-object v2, p0, Landroid/webkit/BrowserFrame;->mJavaScriptObjects:Ljava/util/Map;

    if-nez v2, :cond_6b

    .line 238
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/webkit/BrowserFrame;->mJavaScriptObjects:Ljava/util/Map;

    .line 240
    :cond_6b
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Landroid/webkit/BrowserFrame;->mRemovedJavaScriptObjects:Ljava/util/Set;

    .line 242
    iput-object p4, p0, Landroid/webkit/BrowserFrame;->mSettings:Landroid/webkit/WebSettingsClassic;

    .line 243
    iput-object p1, p0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    .line 244
    iput-object p3, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    .line 245
    iput-object p2, p0, Landroid/webkit/BrowserFrame;->mWebViewCore:Landroid/webkit/WebViewCore;

    .line 247
    new-instance v2, Landroid/webkit/SearchBoxImpl;

    iget-object v3, p0, Landroid/webkit/BrowserFrame;->mWebViewCore:Landroid/webkit/WebViewCore;

    iget-object v4, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-direct {v2, v3, v4}, Landroid/webkit/SearchBoxImpl;-><init>(Landroid/webkit/WebViewCore;Landroid/webkit/CallbackProxy;)V

    iput-object v2, p0, Landroid/webkit/BrowserFrame;->mSearchBox:Landroid/webkit/SearchBoxImpl;

    .line 248
    iget-object v2, p0, Landroid/webkit/BrowserFrame;->mJavaScriptObjects:Ljava/util/Map;

    const-string/jumbo v3, "searchBoxJavaBridge_"

    iget-object v4, p0, Landroid/webkit/BrowserFrame;->mSearchBox:Landroid/webkit/SearchBoxImpl;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 251
    .local v0, am:Landroid/content/res/AssetManager;
    invoke-virtual {p3}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v2

    invoke-direct {p0, p2, v0, v2}, Landroid/webkit/BrowserFrame;->nativeCreateFrame(Landroid/webkit/WebViewCore;Landroid/content/res/AssetManager;Landroid/webkit/WebBackForwardList;)V

    .line 256
    return-void

    .line 218
    .local v0, am:Landroid/app/ActivityManager;
    :cond_9b
    sget-object v2, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    const/high16 v3, 0x40

    invoke-virtual {v2, v3}, Landroid/webkit/JWebCoreJavaBridge;->setCacheSize(I)V

    goto :goto_37
.end method

.method static synthetic access$000(Landroid/webkit/BrowserFrame;ILjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/BrowserFrame;->nativeAuthenticationProceed(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Landroid/webkit/BrowserFrame;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Landroid/webkit/BrowserFrame;->nativeAuthenticationCancel(I)V

    return-void
.end method

.method static synthetic access$200(Landroid/webkit/BrowserFrame;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Landroid/webkit/BrowserFrame;->nativeSslCertErrorProceed(I)V

    return-void
.end method

.method static synthetic access$300(Landroid/webkit/BrowserFrame;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Landroid/webkit/BrowserFrame;->nativeSslCertErrorCancel(II)V

    return-void
.end method

.method private autoLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "realm"
    .parameter "account"
    .parameter "args"

    .prologue
    .line 1202
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/CallbackProxy;->onReceivedLoginRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    return-void
.end method

.method private native childFramesAsText()Ljava/lang/String;
.end method

.method private closeWindow(Landroid/webkit/WebViewCore;)V
    .registers 4
    .parameter "w"

    .prologue
    .line 908
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {p1}, Landroid/webkit/WebViewCore;->getWebViewClassic()Landroid/webkit/WebViewClassic;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/CallbackProxy;->onCloseWindow(Landroid/webkit/WebViewClassic;)V

    .line 909
    return-void
.end method

.method private createWindow(ZZ)Landroid/webkit/BrowserFrame;
    .registers 4
    .parameter "dialog"
    .parameter "userGesture"

    .prologue
    .line 894
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/CallbackProxy;->createWindow(ZZ)Landroid/webkit/BrowserFrame;

    move-result-object v0

    return-object v0
.end method

.method private decidePolicyForFormResubmission(I)V
    .registers 6
    .parameter "policyFunction"

    .prologue
    const/16 v3, 0x3eb

    .line 916
    const/4 v2, 0x2

    invoke-virtual {p0, v3, p1, v2}, Landroid/webkit/BrowserFrame;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 918
    .local v0, dontResend:Landroid/os/Message;
    const/4 v2, 0x0

    invoke-virtual {p0, v3, p1, v2}, Landroid/webkit/BrowserFrame;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 920
    .local v1, resend:Landroid/os/Message;
    iget-object v2, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v2, v0, v1}, Landroid/webkit/CallbackProxy;->onFormResubmission(Landroid/os/Message;Landroid/os/Message;)V

    .line 921
    return-void
.end method

.method private density()F
    .registers 2

    .prologue
    .line 1007
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method private didFinishLoading()V
    .registers 3

    .prologue
    .line 1173
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mKeyStoreHandler:Landroid/webkit/KeyStoreHandler;

    if-eqz v0, :cond_e

    .line 1174
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mKeyStoreHandler:Landroid/webkit/KeyStoreHandler;

    iget-object v1, p0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/webkit/KeyStoreHandler;->installCert(Landroid/content/Context;)V

    .line 1175
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/BrowserFrame;->mKeyStoreHandler:Landroid/webkit/KeyStoreHandler;

    .line 1177
    :cond_e
    return-void
.end method

.method private didReceiveAuthenticationChallenge(ILjava/lang/String;Ljava/lang/String;ZZ)V
    .registers 8
    .parameter "handle"
    .parameter "host"
    .parameter "realm"
    .parameter "useCachedCredentials"
    .parameter "suppressDialog"

    .prologue
    .line 1025
    new-instance v0, Landroid/webkit/BrowserFrame$1;

    invoke-direct {v0, p0, p4, p1, p5}, Landroid/webkit/BrowserFrame$1;-><init>(Landroid/webkit/BrowserFrame;ZIZ)V

    .line 1047
    .local v0, handler:Landroid/webkit/HttpAuthHandler;
    iget-object v1, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1, v0, p2, p3}, Landroid/webkit/CallbackProxy;->onReceivedHttpAuthRequest(Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    return-void
.end method

.method private didReceiveData([BI)V
    .registers 4
    .parameter "data"
    .parameter "size"

    .prologue
    .line 1169
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mKeyStoreHandler:Landroid/webkit/KeyStoreHandler;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mKeyStoreHandler:Landroid/webkit/KeyStoreHandler;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/KeyStoreHandler;->didReceiveData([BI)V

    .line 1170
    :cond_9
    return-void
.end method

.method private didReceiveIcon(Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter "icon"

    .prologue
    .line 881
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->onReceivedIcon(Landroid/graphics/Bitmap;)V

    .line 882
    return-void
.end method

.method private didReceiveTouchIconUrl(Ljava/lang/String;Z)V
    .registers 4
    .parameter "url"
    .parameter "precomposed"

    .prologue
    .line 886
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/CallbackProxy;->onReceivedTouchIconUrl(Ljava/lang/String;Z)V

    .line 887
    return-void
.end method

.method private native documentAsText()Ljava/lang/String;
.end method

.method private downloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 15
    .parameter "url"
    .parameter "userAgent"
    .parameter "contentDisposition"
    .parameter "mimeType"
    .parameter "contentLength"

    .prologue
    .line 1143
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1145
    const/16 v0, 0x2e

    :try_start_8
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 1146
    .local v7, extension:Ljava/lang/String;
    invoke-static {v7}, Llibcore/net/MimeUtils;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 1148
    if-nez p4, :cond_1a

    .line 1149
    const-string p4, ""
    :try_end_1a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_1a} :catch_3b

    .line 1154
    .end local v7           #extension:Ljava/lang/String;
    :cond_1a
    :goto_1a
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p4, p1, p3}, Landroid/webkit/MimeTypeMap;->remapGenericMimeType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 1157
    invoke-static {p4}, Landroid/webkit/CertTool;->getCertType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 1158
    new-instance v0, Landroid/webkit/KeyStoreHandler;

    invoke-direct {v0, p4}, Landroid/webkit/KeyStoreHandler;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/webkit/BrowserFrame;->mKeyStoreHandler:Landroid/webkit/KeyStoreHandler;

    .line 1163
    :goto_2f
    return-void

    .line 1160
    :cond_30
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/webkit/CallbackProxy;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    goto :goto_2f

    .line 1150
    :catch_3b
    move-exception v0

    goto :goto_1a
.end method

.method private native externalRepresentation()Ljava/lang/String;
.end method

.method private getFile(Ljava/lang/String;[BII)I
    .registers 12
    .parameter "uri"
    .parameter "buffer"
    .parameter "offset"
    .parameter "expectedSize"

    .prologue
    .line 665
    const/4 v2, 0x0

    .line 667
    .local v2, size:I
    :try_start_1
    iget-object v4, p0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 669
    .local v3, stream:Ljava/io/InputStream;
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v2

    .line 670
    if-gt v2, p4, :cond_22

    if-eqz p2, :cond_22

    array-length v4, p2

    sub-int/2addr v4, p3

    if-lt v4, v2, :cond_22

    .line 672
    invoke-virtual {v3, p2, p3, v2}, Ljava/io/InputStream;->read([BII)I

    .line 676
    :goto_1e
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_21
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_21} :catch_24
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_21} :catch_40

    .line 684
    .end local v3           #stream:Ljava/io/InputStream;
    :goto_21
    return v2

    .line 674
    .restart local v3       #stream:Ljava/io/InputStream;
    :cond_22
    const/4 v2, 0x0

    goto :goto_1e

    .line 677
    .end local v3           #stream:Ljava/io/InputStream;
    :catch_24
    move-exception v0

    .line 678
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string/jumbo v4, "webkit"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FileNotFoundException:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    const/4 v2, 0x0

    .line 683
    goto :goto_21

    .line 680
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_40
    move-exception v1

    .line 681
    .local v1, e2:Ljava/io/IOException;
    const-string/jumbo v4, "webkit"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    const/4 v2, 0x0

    goto :goto_21
.end method

.method private getFileSize(Ljava/lang/String;)I
    .registers 6
    .parameter "uri"

    .prologue
    .line 644
    const/4 v0, 0x0

    .line 646
    .local v0, size:I
    :try_start_1
    iget-object v2, p0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 648
    .local v1, stream:Ljava/io/InputStream;
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 649
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_16} :catch_17

    .line 651
    .end local v1           #stream:Ljava/io/InputStream;
    :goto_16
    return v0

    .line 650
    :catch_17
    move-exception v2

    goto :goto_16
.end method

.method private getRawResFilename(I)Ljava/lang/String;
    .registers 3
    .parameter "id"

    .prologue
    .line 954
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Landroid/webkit/BrowserFrame;->getRawResFilename(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getRawResFilename(ILandroid/content/Context;)Ljava/lang/String;
    .registers 8
    .parameter "id"
    .parameter "context"

    .prologue
    .line 958
    packed-switch p0, :pswitch_data_82

    .line 989
    const-string/jumbo v4, "webkit"

    const-string v5, "getRawResFilename got incompatible resource ID"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    const-string v4, ""

    .line 1003
    :goto_d
    return-object v4

    .line 960
    :pswitch_e
    const v2, 0x1100004

    .line 992
    .local v2, resid:I
    :goto_11
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 993
    .local v3, value:Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v3, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 994
    const/4 v4, 0x3

    if-ne p0, v4, :cond_7a

    .line 995
    iget-object v4, v3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 996
    .local v1, path:Ljava/lang/String;
    const/16 v4, 0x2f

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 997
    .local v0, index:I
    if-gez v0, :cond_72

    .line 998
    const-string/jumbo v4, "webkit"

    const-string v5, "Can\'t find drawable directory."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    const-string v4, ""

    goto :goto_d

    .line 964
    .end local v0           #index:I
    .end local v1           #path:Ljava/lang/String;
    .end local v2           #resid:I
    .end local v3           #value:Landroid/util/TypedValue;
    :pswitch_3a
    const v2, 0x1100003

    .line 965
    .restart local v2       #resid:I
    goto :goto_11

    .line 969
    .end local v2           #resid:I
    :pswitch_3e
    const v2, 0x10800e3

    .line 970
    .restart local v2       #resid:I
    goto :goto_11

    .line 973
    .end local v2           #resid:I
    :pswitch_42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x104047f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_d

    .line 977
    :pswitch_4e
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040481

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_d

    .line 981
    :pswitch_5a
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040482

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_d

    .line 985
    :pswitch_66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040480

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_d

    .line 1001
    .restart local v0       #index:I
    .restart local v1       #path:Ljava/lang/String;
    .restart local v2       #resid:I
    .restart local v3       #value:Landroid/util/TypedValue;
    :cond_72
    const/4 v4, 0x0

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_d

    .line 1003
    .end local v0           #index:I
    .end local v1           #path:Ljava/lang/String;
    :cond_7a
    iget-object v4, v3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_d

    .line 958
    nop

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_e
        :pswitch_3a
        :pswitch_3e
        :pswitch_42
        :pswitch_4e
        :pswitch_5a
        :pswitch_66
    .end packed-switch
.end method

.method private native getUsernamePassword()[Ljava/lang/String;
.end method

.method private native hasPasswordField()Z
.end method

.method private inputStreamForAndroidResource(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 25
    .parameter "url"

    .prologue
    .line 697
    const-string v3, "file:///android_asset/"

    .line 698
    .local v3, ANDROID_ASSET:Ljava/lang/String;
    const-string v5, "file:///android_res/"

    .line 699
    .local v5, ANDROID_RESOURCE:Ljava/lang/String;
    const-string v4, "content:"

    .line 701
    .local v4, ANDROID_CONTENT:Ljava/lang/String;
    const-string v19, "file:///android_res/"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_16f

    .line 702
    const-string v19, "file:///android_res/"

    const-string v20, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 703
    if-eqz p1, :cond_28

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v19

    if-nez v19, :cond_49

    .line 704
    :cond_28
    const-string/jumbo v19, "webkit"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "url has length 0 "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    const/16 v19, 0x0

    .line 764
    :goto_48
    return-object v19

    .line 707
    :cond_49
    const/16 v19, 0x2f

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    .line 708
    .local v15, slash:I
    const/16 v19, 0x2e

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1, v15}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    .line 709
    .local v8, dot:I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v15, v0, :cond_69

    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v8, v0, :cond_89

    .line 710
    :cond_69
    const-string/jumbo v19, "webkit"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Incorrect res path: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    const/16 v19, 0x0

    goto :goto_48

    .line 713
    :cond_89
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 714
    .local v16, subClassName:Ljava/lang/String;
    add-int/lit8 v19, v15, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 715
    .local v12, fieldName:Ljava/lang/String;
    const/4 v10, 0x0

    .line 717
    .local v10, errorMsg:Ljava/lang/String;
    :try_start_9e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ".R$"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 721
    .local v7, d:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v7, v12}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    .line 722
    .local v11, field:Ljava/lang/reflect/Field;
    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v13

    .line 723
    .local v13, id:I
    new-instance v18, Landroid/util/TypedValue;

    invoke-direct/range {v18 .. v18}, Landroid/util/TypedValue;-><init>()V

    .line 724
    .local v18, value:Landroid/util/TypedValue;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move/from16 v2, v20

    invoke-virtual {v0, v13, v1, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 725
    move-object/from16 v0, v18

    iget v0, v0, Landroid/util/TypedValue;->type:I

    move/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_12b

    .line 726
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v19

    move-object/from16 v0, v18

    iget v0, v0, Landroid/util/TypedValue;->assetCookie:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x2

    invoke-virtual/range {v19 .. v22}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v19

    goto/16 :goto_48

    .line 731
    :cond_12b
    const-string/jumbo v19, "webkit"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "not of type string: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_149
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_149} :catch_14d

    .line 732
    const/16 v19, 0x0

    goto/16 :goto_48

    .line 734
    .end local v7           #d:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v11           #field:Ljava/lang/reflect/Field;
    .end local v13           #id:I
    .end local v18           #value:Landroid/util/TypedValue;
    :catch_14d
    move-exception v9

    .line 735
    .local v9, e:Ljava/lang/Exception;
    const-string/jumbo v19, "webkit"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Exception: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    const/16 v19, 0x0

    goto/16 :goto_48

    .line 738
    .end local v8           #dot:I
    .end local v9           #e:Ljava/lang/Exception;
    .end local v10           #errorMsg:Ljava/lang/String;
    .end local v12           #fieldName:Ljava/lang/String;
    .end local v15           #slash:I
    .end local v16           #subClassName:Ljava/lang/String;
    :cond_16f
    const-string v19, "file:///android_asset/"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1ac

    .line 739
    const-string v19, "file:///android_asset/"

    const-string v20, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 741
    :try_start_189
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    .line 742
    .local v6, assets:Landroid/content/res/AssetManager;
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    .line 743
    .local v17, uri:Landroid/net/Uri;
    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;
    :try_end_1a4
    .catch Ljava/io/IOException; {:try_start_189 .. :try_end_1a4} :catch_1a7

    move-result-object v19

    goto/16 :goto_48

    .line 744
    .end local v6           #assets:Landroid/content/res/AssetManager;
    .end local v17           #uri:Landroid/net/Uri;
    :catch_1a7
    move-exception v9

    .line 745
    .local v9, e:Ljava/io/IOException;
    const/16 v19, 0x0

    goto/16 :goto_48

    .line 747
    .end local v9           #e:Ljava/io/IOException;
    :cond_1ac
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/BrowserFrame;->mSettings:Landroid/webkit/WebSettingsClassic;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/webkit/WebSettingsClassic;->getAllowContentAccess()Z

    move-result v19

    if-eqz v19, :cond_218

    const-string v19, "content:"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_218

    .line 753
    const/16 v19, 0x3f

    :try_start_1c6
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v14

    .line 754
    .local v14, mimeIndex:I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v14, v0, :cond_1de

    .line 755
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 757
    :cond_1de
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    .line 758
    .restart local v17       #uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_1f3
    .catch Ljava/lang/Exception; {:try_start_1c6 .. :try_end_1f3} :catch_1f6

    move-result-object v19

    goto/16 :goto_48

    .line 759
    .end local v14           #mimeIndex:I
    .end local v17           #uri:Landroid/net/Uri;
    :catch_1f6
    move-exception v9

    .line 760
    .local v9, e:Ljava/lang/Exception;
    const-string/jumbo v19, "webkit"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Exception: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    const/16 v19, 0x0

    goto/16 :goto_48

    .line 764
    .end local v9           #e:Ljava/lang/Exception;
    :cond_218
    const/16 v19, 0x0

    goto/16 :goto_48
.end method

.method private loadFinished(Ljava/lang/String;IZ)V
    .registers 5
    .parameter "url"
    .parameter "loadType"
    .parameter "isMainFrame"

    .prologue
    .line 465
    if-nez p3, :cond_4

    if-nez p2, :cond_13

    .line 466
    :cond_4
    if-eqz p3, :cond_13

    .line 467
    invoke-direct {p0}, Landroid/webkit/BrowserFrame;->resetLoadingStates()V

    .line 468
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->switchOutDrawHistory()V

    .line 469
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->onPageFinished(Ljava/lang/String;)V

    .line 472
    :cond_13
    return-void
.end method

.method private loadStarted(Ljava/lang/String;Landroid/graphics/Bitmap;IZ)V
    .registers 7
    .parameter "url"
    .parameter "favicon"
    .parameter "loadType"
    .parameter "isMainFrame"

    .prologue
    const/4 v1, 0x0

    .line 399
    iput-boolean p4, p0, Landroid/webkit/BrowserFrame;->mIsMainFrame:Z

    .line 401
    if-nez p4, :cond_7

    if-nez p3, :cond_20

    .line 402
    :cond_7
    iput p3, p0, Landroid/webkit/BrowserFrame;->mLoadType:I

    .line 404
    if-eqz p4, :cond_20

    .line 406
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/CallbackProxy;->onPageStarted(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 409
    iput-boolean v1, p0, Landroid/webkit/BrowserFrame;->mFirstLayoutDone:Z

    .line 410
    iput-boolean v1, p0, Landroid/webkit/BrowserFrame;->mCommitted:Z

    .line 413
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->clearContent()V

    .line 414
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 417
    :cond_20
    return-void
.end method

.method private maybeSavePassword([BLjava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter "postData"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 781
    if-eqz p1, :cond_12

    if-eqz p2, :cond_12

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_12

    if-eqz p3, :cond_12

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 827
    :cond_12
    :goto_12
    return-void

    .line 787
    :cond_13
    iget-object v5, p0, Landroid/webkit/BrowserFrame;->mSettings:Landroid/webkit/WebSettingsClassic;

    invoke-virtual {v5}, Landroid/webkit/WebSettingsClassic;->getSavePassword()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 796
    :try_start_1b
    new-instance v4, Landroid/net/WebAddress;

    iget-object v5, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v5}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    .line 798
    .local v4, uri:Landroid/net/WebAddress;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Landroid/net/WebAddress;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/net/WebAddress;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 802
    .local v3, schemePlusHost:Ljava/lang/String;
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    .line 803
    .local v1, postString:Ljava/lang/String;
    iget-object v5, p0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/webkit/WebViewDatabaseClassic;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabaseClassic;

    move-result-object v0

    .line 804
    .local v0, db:Landroid/webkit/WebViewDatabaseClassic;
    invoke-static {p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-static {p3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 806
    invoke-virtual {v0, v3}, Landroid/webkit/WebViewDatabaseClassic;->getUsernamePassword(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 807
    .local v2, saved:[Ljava/lang/String;
    if-eqz v2, :cond_77

    .line 810
    const/4 v5, 0x0

    aget-object v5, v2, v5

    if-eqz v5, :cond_12

    .line 814
    invoke-virtual {v0, v3, p2, p3}, Landroid/webkit/WebViewDatabaseClassic;->setUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    .line 824
    .end local v0           #db:Landroid/webkit/WebViewDatabaseClassic;
    .end local v1           #postString:Ljava/lang/String;
    .end local v2           #saved:[Ljava/lang/String;
    .end local v3           #schemePlusHost:Ljava/lang/String;
    .end local v4           #uri:Landroid/net/WebAddress;
    :catch_75
    move-exception v5

    goto :goto_12

    .line 820
    .restart local v0       #db:Landroid/webkit/WebViewDatabaseClassic;
    .restart local v1       #postString:Ljava/lang/String;
    .restart local v2       #saved:[Ljava/lang/String;
    .restart local v3       #schemePlusHost:Ljava/lang/String;
    .restart local v4       #uri:Landroid/net/WebAddress;
    :cond_77
    iget-object v5, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    const/4 v6, 0x0

    invoke-virtual {v5, v3, p2, p3, v6}, Landroid/webkit/CallbackProxy;->onSavePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    :try_end_7d
    .catch Landroid/net/ParseException; {:try_start_1b .. :try_end_7d} :catch_75

    goto :goto_12
.end method

.method private native nativeAddJavascriptInterface(ILjava/lang/Object;Ljava/lang/String;)V
.end method

.method private native nativeAuthenticationCancel(I)V
.end method

.method private native nativeAuthenticationProceed(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeCallPolicyFunction(II)V
.end method

.method private native nativeCreateFrame(Landroid/webkit/WebViewCore;Landroid/content/res/AssetManager;Landroid/webkit/WebBackForwardList;)V
.end method

.method private native nativeGetShouldStartScrolledRight(I)Z
.end method

.method private native nativeGoBackOrForward(I)V
.end method

.method private native nativeLoadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeLoadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method private native nativeOrientationChanged(I)V
.end method

.method private native nativePostUrl(Ljava/lang/String;[B)V
.end method

.method private native nativeSaveWebArchive(Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method private native nativeSslCertErrorCancel(II)V
.end method

.method private native nativeSslCertErrorProceed(I)V
.end method

.method private native nativeStopLoading()V
.end method

.method private reportError(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 359
    invoke-direct {p0}, Landroid/webkit/BrowserFrame;->resetLoadingStates()V

    .line 360
    if-eqz p2, :cond_b

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 361
    :cond_b
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Landroid/net/http/ErrorStrings;->getString(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 363
    :cond_11
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/CallbackProxy;->onReceivedError(ILjava/lang/String;Ljava/lang/String;)V

    .line 364
    return-void
.end method

.method private reportSslCertError(II[BLjava/lang/String;)V
    .registers 12
    .parameter "handle"
    .parameter "certError"
    .parameter "certDER"
    .parameter "url"

    .prologue
    .line 1061
    :try_start_0
    new-instance v0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;

    invoke-direct {v0, p3}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;-><init>([B)V

    .line 1062
    .local v0, cert:Ljava/security/cert/X509Certificate;
    new-instance v3, Landroid/net/http/SslCertificate;

    invoke-direct {v3, v0}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    .line 1063
    .local v3, sslCert:Landroid/net/http/SslCertificate;
    invoke-static {p2, v3, p4}, Landroid/net/http/SslError;->SslErrorFromChromiumErrorCode(ILandroid/net/http/SslCertificate;Ljava/lang/String;)Landroid/net/http/SslError;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_21

    move-result-object v4

    .line 1071
    .local v4, sslError:Landroid/net/http/SslError;
    invoke-static {}, Landroid/webkit/SslCertLookupTable;->getInstance()Landroid/webkit/SslCertLookupTable;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/webkit/SslCertLookupTable;->isAllowed(Landroid/net/http/SslError;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 1072
    invoke-direct {p0, p1}, Landroid/webkit/BrowserFrame;->nativeSslCertErrorProceed(I)V

    .line 1073
    iget-object v5, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v5, v4}, Landroid/webkit/CallbackProxy;->onProceededAfterSslError(Landroid/net/http/SslError;)V

    .line 1097
    .end local v0           #cert:Ljava/security/cert/X509Certificate;
    .end local v3           #sslCert:Landroid/net/http/SslCertificate;
    .end local v4           #sslError:Landroid/net/http/SslError;
    :goto_20
    return-void

    .line 1064
    :catch_21
    move-exception v1

    .line 1066
    .local v1, e:Ljava/io/IOException;
    const-string/jumbo v5, "webkit"

    const-string v6, "Can\'t get the certificate from WebKit, canceling"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    invoke-direct {p0, p1, p2}, Landroid/webkit/BrowserFrame;->nativeSslCertErrorCancel(II)V

    goto :goto_20

    .line 1077
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #cert:Ljava/security/cert/X509Certificate;
    .restart local v3       #sslCert:Landroid/net/http/SslCertificate;
    .restart local v4       #sslError:Landroid/net/http/SslError;
    :cond_2e
    new-instance v2, Landroid/webkit/BrowserFrame$2;

    invoke-direct {v2, p0, v4, p1, p2}, Landroid/webkit/BrowserFrame$2;-><init>(Landroid/webkit/BrowserFrame;Landroid/net/http/SslError;II)V

    .line 1096
    .local v2, handler:Landroid/webkit/SslErrorHandler;
    iget-object v5, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v5, v2, v4}, Landroid/webkit/CallbackProxy;->onReceivedSslError(Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    goto :goto_20
.end method

.method private requestClientCert(ILjava/lang/String;)V
    .registers 7
    .parameter "handle"
    .parameter "hostAndPort"

    .prologue
    .line 1107
    invoke-static {}, Landroid/webkit/SslClientCertLookupTable;->getInstance()Landroid/webkit/SslClientCertLookupTable;

    move-result-object v1

    .line 1108
    .local v1, table:Landroid/webkit/SslClientCertLookupTable;
    invoke-virtual {v1, p2}, Landroid/webkit/SslClientCertLookupTable;->IsAllowed(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 1110
    invoke-virtual {v1, p2}, Landroid/webkit/SslClientCertLookupTable;->PrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v0

    .line 1111
    .local v0, pkey:Ljava/security/PrivateKey;
    instance-of v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;

    if-eqz v2, :cond_20

    .line 1112
    check-cast v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;

    .end local v0           #pkey:Ljava/security/PrivateKey;
    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;->getPkeyContext()I

    move-result v2

    invoke-virtual {v1, p2}, Landroid/webkit/SslClientCertLookupTable;->CertificateChain(Ljava/lang/String;)[[B

    move-result-object v3

    invoke-virtual {p0, p1, v2, v3}, Landroid/webkit/BrowserFrame;->nativeSslClientCert(II[[B)V

    .line 1132
    :goto_1f
    return-void

    .line 1115
    .restart local v0       #pkey:Ljava/security/PrivateKey;
    :cond_20
    instance-of v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPrivateKey;

    if-eqz v2, :cond_32

    .line 1116
    check-cast v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPrivateKey;

    .end local v0           #pkey:Ljava/security/PrivateKey;
    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPrivateKey;->getPkeyContext()I

    move-result v2

    invoke-virtual {v1, p2}, Landroid/webkit/SslClientCertLookupTable;->CertificateChain(Ljava/lang/String;)[[B

    move-result-object v3

    invoke-virtual {p0, p1, v2, v3}, Landroid/webkit/BrowserFrame;->nativeSslClientCert(II[[B)V

    goto :goto_1f

    .line 1120
    .restart local v0       #pkey:Ljava/security/PrivateKey;
    :cond_32
    invoke-interface {v0}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v2

    invoke-virtual {v1, p2}, Landroid/webkit/SslClientCertLookupTable;->CertificateChain(Ljava/lang/String;)[[B

    move-result-object v3

    invoke-virtual {p0, p1, v2, v3}, Landroid/webkit/BrowserFrame;->nativeSslClientCert(I[B[[B)V

    goto :goto_1f

    .line 1124
    .end local v0           #pkey:Ljava/security/PrivateKey;
    :cond_3e
    invoke-virtual {v1, p2}, Landroid/webkit/SslClientCertLookupTable;->IsDenied(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 1126
    const/4 v3, 0x0

    const/4 v2, 0x0

    check-cast v2, [[B

    invoke-virtual {p0, p1, v3, v2}, Landroid/webkit/BrowserFrame;->nativeSslClientCert(II[[B)V

    goto :goto_1f

    .line 1129
    :cond_4c
    iget-object v2, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    new-instance v3, Landroid/webkit/ClientCertRequestHandler;

    invoke-direct {v3, p0, p1, p2, v1}, Landroid/webkit/ClientCertRequestHandler;-><init>(Landroid/webkit/BrowserFrame;ILjava/lang/String;Landroid/webkit/SslClientCertLookupTable;)V

    invoke-virtual {v2, v3, p2}, Landroid/webkit/CallbackProxy;->onReceivedClientCertRequest(Landroid/webkit/ClientCertRequestHandler;Ljava/lang/String;)V

    goto :goto_1f
.end method

.method private requestFocus()V
    .registers 2

    .prologue
    .line 901
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->onRequestFocus()V

    .line 902
    return-void
.end method

.method private resetLoadingStates()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 367
    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mCommitted:Z

    .line 368
    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mFirstLayoutDone:Z

    .line 369
    return-void
.end method

.method private saveFormData(Ljava/util/HashMap;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 421
    .local p1, data:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Landroid/webkit/BrowserFrame;->mSettings:Landroid/webkit/WebSettingsClassic;

    invoke-virtual {v2}, Landroid/webkit/WebSettingsClassic;->getSaveFormData()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 422
    iget-object v2, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v2}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    .line 424
    .local v0, h:Landroid/webkit/WebHistoryItem;
    if-eqz v0, :cond_27

    .line 425
    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/webkit/WebTextView;->urlForAutoCompleteData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 426
    .local v1, url:Ljava/lang/String;
    if-eqz v1, :cond_27

    .line 427
    iget-object v2, p0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/webkit/WebViewDatabaseClassic;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabaseClassic;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Landroid/webkit/WebViewDatabaseClassic;->setFormData(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 432
    .end local v0           #h:Landroid/webkit/WebHistoryItem;
    .end local v1           #url:Ljava/lang/String;
    :cond_27
    return-void
.end method

.method private setCertificate([B)V
    .registers 6
    .parameter "cert_der"

    .prologue
    .line 1185
    :try_start_0
    new-instance v0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;

    invoke-direct {v0, p1}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;-><init>([B)V

    .line 1186
    .local v0, cert:Ljava/security/cert/X509Certificate;
    iget-object v2, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    new-instance v3, Landroid/net/http/SslCertificate;

    invoke-direct {v3, v0}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    invoke-virtual {v2, v3}, Landroid/webkit/CallbackProxy;->onReceivedCertificate(Landroid/net/http/SslCertificate;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_f} :catch_10

    .line 1192
    .end local v0           #cert:Ljava/security/cert/X509Certificate;
    :goto_f
    return-void

    .line 1187
    :catch_10
    move-exception v1

    .line 1189
    .local v1, e:Ljava/io/IOException;
    const-string/jumbo v2, "webkit"

    const-string v3, "Can\'t get the certificate from WebKit, canceling"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method private setProgress(I)V
    .registers 5
    .parameter "newProgress"

    .prologue
    .line 864
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->onProgressChanged(I)V

    .line 865
    const/16 v0, 0x64

    if-ne p1, v0, :cond_14

    .line 866
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Landroid/webkit/BrowserFrame;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Landroid/webkit/BrowserFrame;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 871
    :cond_14
    iget-boolean v0, p0, Landroid/webkit/BrowserFrame;->mFirstLayoutDone:Z

    if-eqz v0, :cond_21

    const/16 v0, 0x4b

    if-le p1, v0, :cond_21

    .line 872
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->switchOutDrawHistory()V

    .line 874
    :cond_21
    return-void
.end method

.method private setTitle(Ljava/lang/String;)V
    .registers 3
    .parameter "title"

    .prologue
    .line 538
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->onReceivedTitle(Ljava/lang/String;)V

    .line 539
    return-void
.end method

.method private native setUsernamePassword(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private shouldInterceptRequest(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 10
    .parameter "url"

    .prologue
    const/4 v7, 0x0

    .line 831
    invoke-direct {p0, p1}, Landroid/webkit/BrowserFrame;->inputStreamForAndroidResource(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 832
    .local v0, androidResource:Ljava/io/InputStream;
    if-eqz v0, :cond_d

    .line 833
    new-instance v4, Landroid/webkit/WebResourceResponse;

    invoke-direct {v4, v7, v7, v0}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 854
    :cond_c
    :goto_c
    return-object v4

    .line 838
    :cond_d
    iget-object v6, p0, Landroid/webkit/BrowserFrame;->mSettings:Landroid/webkit/WebSettingsClassic;

    invoke-virtual {v6}, Landroid/webkit/WebSettingsClassic;->getAllowFileAccess()Z

    move-result v6

    if-nez v6, :cond_23

    const-string v6, "file://"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 839
    new-instance v4, Landroid/webkit/WebResourceResponse;

    invoke-direct {v4, v7, v7, v7}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    goto :goto_c

    .line 842
    :cond_23
    iget-object v6, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v6, p1}, Landroid/webkit/CallbackProxy;->shouldInterceptRequest(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v4

    .line 843
    .local v4, response:Landroid/webkit/WebResourceResponse;
    if-nez v4, :cond_c

    const-string v6, "browser:incognito"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 845
    :try_start_33
    iget-object v6, p0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 846
    .local v3, res:Landroid/content/res/Resources;
    const v6, 0x1100002

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 848
    .local v2, ins:Ljava/io/InputStream;
    new-instance v5, Landroid/webkit/WebResourceResponse;

    const-string/jumbo v6, "text/html"

    const-string/jumbo v7, "utf8"

    invoke-direct {v5, v6, v7, v2}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_4b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_33 .. :try_end_4b} :catch_4d

    .end local v4           #response:Landroid/webkit/WebResourceResponse;
    .local v5, response:Landroid/webkit/WebResourceResponse;
    move-object v4, v5

    .line 852
    .end local v5           #response:Landroid/webkit/WebResourceResponse;
    .restart local v4       #response:Landroid/webkit/WebResourceResponse;
    goto :goto_c

    .line 849
    .end local v2           #ins:Ljava/io/InputStream;
    .end local v3           #res:Landroid/content/res/Resources;
    :catch_4d
    move-exception v1

    .line 851
    .local v1, ex:Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v6, "webkit"

    const-string v7, "Failed opening raw.incognito_mode_start_page"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c
.end method

.method private shouldSaveFormData()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 436
    iget-object v2, p0, Landroid/webkit/BrowserFrame;->mSettings:Landroid/webkit/WebSettingsClassic;

    invoke-virtual {v2}, Landroid/webkit/WebSettingsClassic;->getSaveFormData()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 437
    iget-object v2, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v2}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    .line 439
    .local v0, h:Landroid/webkit/WebHistoryItem;
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1c

    const/4 v1, 0x1

    .line 441
    .end local v0           #h:Landroid/webkit/WebHistoryItem;
    :cond_1c
    return v1
.end method

.method private transitionToCommitted(IZ)V
    .registers 4
    .parameter "loadType"
    .parameter "isMainFrame"

    .prologue
    .line 450
    if-eqz p2, :cond_10

    .line 451
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mCommitted:Z

    .line 452
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->getWebViewClassic()Landroid/webkit/WebViewClassic;

    move-result-object v0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mViewManager:Landroid/webkit/ViewManager;

    invoke-virtual {v0}, Landroid/webkit/ViewManager;->postResetStateAll()V

    .line 454
    :cond_10
    return-void
.end method

.method private updateVisitedHistory(Ljava/lang/String;Z)V
    .registers 4
    .parameter "url"
    .parameter "isReload"

    .prologue
    .line 927
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/CallbackProxy;->doUpdateVisitedHistory(Ljava/lang/String;Z)V

    .line 928
    return-void
.end method

.method private windowObjectCleared(I)V
    .registers 6
    .parameter "nativeFramePointer"

    .prologue
    .line 591
    iget-object v3, p0, Landroid/webkit/BrowserFrame;->mJavaScriptObjects:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 592
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 593
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 594
    .local v0, interfaceName:Ljava/lang/String;
    iget-object v3, p0, Landroid/webkit/BrowserFrame;->mJavaScriptObjects:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 595
    .local v2, object:Ljava/lang/Object;
    if-eqz v2, :cond_a

    .line 596
    iget-object v3, p0, Landroid/webkit/BrowserFrame;->mJavaScriptObjects:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, p1, v3, v0}, Landroid/webkit/BrowserFrame;->nativeAddJavascriptInterface(ILjava/lang/Object;Ljava/lang/String;)V

    goto :goto_a

    .line 600
    .end local v0           #interfaceName:Ljava/lang/String;
    .end local v2           #object:Ljava/lang/Object;
    :cond_28
    iget-object v3, p0, Landroid/webkit/BrowserFrame;->mRemovedJavaScriptObjects:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 602
    const-string v3, "(function(){if (!window.chrome) {  window.chrome = {};}if (!window.chrome.searchBox) {  var sb = window.chrome.searchBox = {};  sb.setSuggestions = function(suggestions) {    if (window.searchBoxJavaBridge_) {      window.searchBoxJavaBridge_.setSuggestions(JSON.stringify(suggestions));    }  };  sb.setValue = function(valueArray) { sb.value = valueArray[0]; };  sb.value = \'\';  sb.x = 0;  sb.y = 0;  sb.width = 0;  sb.height = 0;  sb.selectionStart = 0;  sb.selectionEnd = 0;  sb.verbatim = false;}})();"

    invoke-virtual {p0, v3}, Landroid/webkit/BrowserFrame;->stringByEvaluatingJavaScriptFromString(Ljava/lang/String;)Ljava/lang/String;

    .line 603
    return-void
.end method


# virtual methods
.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4
    .parameter "obj"
    .parameter "interfaceName"

    .prologue
    .line 623
    sget-boolean v0, Landroid/webkit/BrowserFrame;->$assertionsDisabled:Z

    if-nez v0, :cond_c

    if-nez p1, :cond_c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 624
    :cond_c
    invoke-virtual {p0, p2}, Landroid/webkit/BrowserFrame;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 626
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mJavaScriptObjects:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    return-void
.end method

.method public native clearCache()V
.end method

.method committed()Z
    .registers 2

    .prologue
    .line 372
    iget-boolean v0, p0, Landroid/webkit/BrowserFrame;->mCommitted:Z

    return v0
.end method

.method public destroy()V
    .registers 2

    .prologue
    .line 478
    invoke-virtual {p0}, Landroid/webkit/BrowserFrame;->nativeDestroyFrame()V

    .line 479
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mBlockMessages:Z

    .line 480
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/BrowserFrame;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 481
    return-void
.end method

.method didFirstLayout()V
    .registers 2

    .prologue
    .line 384
    iget-boolean v0, p0, Landroid/webkit/BrowserFrame;->mFirstLayoutDone:Z

    if-nez v0, :cond_c

    .line 385
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mFirstLayoutDone:Z

    .line 388
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->contentDraw()V

    .line 390
    :cond_c
    return-void
.end method

.method public documentAsText(Landroid/os/Message;)V
    .registers 4
    .parameter "callback"

    .prologue
    .line 562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 563
    .local v0, text:Ljava/lang/StringBuilder;
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_10

    .line 565
    invoke-direct {p0}, Landroid/webkit/BrowserFrame;->documentAsText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    :cond_10
    iget v1, p1, Landroid/os/Message;->arg2:I

    if-eqz v1, :cond_1b

    .line 569
    invoke-direct {p0}, Landroid/webkit/BrowserFrame;->childFramesAsText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    :cond_1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 572
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 573
    return-void
.end method

.method public native documentHasImages()Z
.end method

.method public externalRepresentation(Landroid/os/Message;)V
    .registers 3
    .parameter "callback"

    .prologue
    .line 547
    invoke-direct {p0}, Landroid/webkit/BrowserFrame;->externalRepresentation()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 548
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 549
    return-void
.end method

.method firstLayoutDone()Z
    .registers 2

    .prologue
    .line 376
    iget-boolean v0, p0, Landroid/webkit/BrowserFrame;->mFirstLayoutDone:Z

    return v0
.end method

.method getCallbackProxy()Landroid/webkit/CallbackProxy;
    .registers 2

    .prologue
    .line 934
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    return-object v0
.end method

.method getSearchBox()Landroid/webkit/SearchBox;
    .registers 2

    .prologue
    .line 1195
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mSearchBox:Landroid/webkit/SearchBoxImpl;

    return-object v0
.end method

.method getShouldStartScrolledRight()Z
    .registers 2

    .prologue
    .line 1328
    iget v0, p0, Landroid/webkit/BrowserFrame;->mNativeFrame:I

    invoke-direct {p0, v0}, Landroid/webkit/BrowserFrame;->nativeGetShouldStartScrolledRight(I)Z

    move-result v0

    return v0
.end method

.method getUserAgentString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 941
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mSettings:Landroid/webkit/WebSettingsClassic;

    invoke-virtual {v0}, Landroid/webkit/WebSettingsClassic;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public goBackOrForward(I)V
    .registers 3
    .parameter "steps"

    .prologue
    .line 340
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    .line 341
    invoke-direct {p0, p1}, Landroid/webkit/BrowserFrame;->nativeGoBackOrForward(I)V

    .line 342
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    .line 343
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    .line 489
    iget-boolean v4, p0, Landroid/webkit/BrowserFrame;->mBlockMessages:Z

    if-eqz v4, :cond_6

    .line 527
    :cond_5
    :goto_5
    return-void

    .line 492
    :cond_6
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_7a

    goto :goto_5

    .line 494
    :pswitch_c
    iget-object v4, p0, Landroid/webkit/BrowserFrame;->mSettings:Landroid/webkit/WebSettingsClassic;

    invoke-virtual {v4}, Landroid/webkit/WebSettingsClassic;->getSavePassword()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-direct {p0}, Landroid/webkit/BrowserFrame;->hasPasswordField()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 495
    iget-object v4, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v4}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    .line 497
    .local v0, item:Landroid/webkit/WebHistoryItem;
    if-eqz v0, :cond_5

    .line 498
    new-instance v3, Landroid/net/WebAddress;

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    .line 499
    .local v3, uri:Landroid/net/WebAddress;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/net/WebAddress;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/net/WebAddress;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 500
    .local v1, schemePlusHost:Ljava/lang/String;
    iget-object v4, p0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/webkit/WebViewDatabaseClassic;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabaseClassic;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/webkit/WebViewDatabaseClassic;->getUsernamePassword(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 503
    .local v2, up:[Ljava/lang/String;
    if-eqz v2, :cond_5

    aget-object v4, v2, v6

    if-eqz v4, :cond_5

    .line 504
    aget-object v4, v2, v6

    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-direct {p0, v4, v5}, Landroid/webkit/BrowserFrame;->setUsernamePassword(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 512
    .end local v0           #item:Landroid/webkit/WebHistoryItem;
    .end local v1           #schemePlusHost:Ljava/lang/String;
    .end local v2           #up:[Ljava/lang/String;
    .end local v3           #uri:Landroid/net/WebAddress;
    :pswitch_61
    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v4, v5}, Landroid/webkit/BrowserFrame;->nativeCallPolicyFunction(II)V

    goto :goto_5

    .line 517
    :pswitch_69
    iget v4, p0, Landroid/webkit/BrowserFrame;->mOrientation:I

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eq v4, v5, :cond_5

    .line 518
    iget v4, p1, Landroid/os/Message;->arg1:I

    iput v4, p0, Landroid/webkit/BrowserFrame;->mOrientation:I

    .line 519
    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v4}, Landroid/webkit/BrowserFrame;->nativeOrientationChanged(I)V

    goto :goto_5

    .line 492
    nop

    :pswitch_data_7a
    .packed-switch 0x3e9
        :pswitch_c
        :pswitch_69
        :pswitch_61
    .end packed-switch
.end method

.method public handleUrl(Ljava/lang/String;)Z
    .registers 5
    .parameter "url"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 610
    iget-boolean v2, p0, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    if-ne v2, v1, :cond_7

    .line 618
    :cond_6
    :goto_6
    return v0

    .line 613
    :cond_7
    iget-object v2, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v2, p1}, Landroid/webkit/CallbackProxy;->shouldOverrideUrlLoading(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 615
    invoke-virtual {p0}, Landroid/webkit/BrowserFrame;->didFirstLayout()V

    move v0, v1

    .line 616
    goto :goto_6
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "baseUrl"
    .parameter "data"
    .parameter "mimeType"
    .parameter "encoding"
    .parameter "historyUrl"

    .prologue
    .line 302
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    .line 303
    if-eqz p5, :cond_b

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_d

    .line 304
    :cond_b
    const-string p5, "about:blank"

    .line 306
    :cond_d
    if-nez p2, :cond_11

    .line 307
    const-string p2, ""

    .line 312
    :cond_11
    if-eqz p1, :cond_19

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1b

    .line 313
    :cond_19
    const-string p1, "about:blank"

    .line 315
    :cond_1b
    if-eqz p3, :cond_23

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_26

    .line 316
    :cond_23
    const-string/jumbo p3, "text/html"

    .line 318
    :cond_26
    invoke-direct/range {p0 .. p5}, Landroid/webkit/BrowserFrame;->nativeLoadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    .line 320
    return-void
.end method

.method loadType()I
    .registers 2

    .prologue
    .line 380
    iget v0, p0, Landroid/webkit/BrowserFrame;->mLoadType:I

    return v0
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 268
    .local p2, extraHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    .line 269
    invoke-static {p1}, Landroid/webkit/URLUtil;->isJavaScriptUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 271
    const-string v0, "javascript:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/BrowserFrame;->stringByEvaluatingJavaScriptFromString(Ljava/lang/String;)Ljava/lang/String;

    .line 276
    :goto_16
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    .line 277
    return-void

    .line 274
    :cond_1a
    invoke-direct {p0, p1, p2}, Landroid/webkit/BrowserFrame;->nativeLoadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_16
.end method

.method public native nativeDestroyFrame()V
.end method

.method native nativeSslClientCert(II[[B)V
.end method

.method native nativeSslClientCert(I[B[[B)V
.end method

.method public postUrl(Ljava/lang/String;[B)V
    .registers 4
    .parameter "url"
    .parameter "data"

    .prologue
    .line 285
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    .line 286
    invoke-direct {p0, p1, p2}, Landroid/webkit/BrowserFrame;->nativePostUrl(Ljava/lang/String;[B)V

    .line 287
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    .line 288
    return-void
.end method

.method public native reload(Z)V
.end method

.method public removeJavascriptInterface(Ljava/lang/String;)V
    .registers 4
    .parameter "interfaceName"

    .prologue
    .line 633
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mJavaScriptObjects:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 634
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mRemovedJavaScriptObjects:Ljava/util/Set;

    iget-object v1, p0, Landroid/webkit/BrowserFrame;->mJavaScriptObjects:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 636
    :cond_13
    return-void
.end method

.method saveWebArchive(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 4
    .parameter "basename"
    .parameter "autoname"

    .prologue
    .line 331
    invoke-direct {p0, p1, p2}, Landroid/webkit/BrowserFrame;->nativeSaveWebArchive(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public stopLoading()V
    .registers 2

    .prologue
    .line 1270
    iget-boolean v0, p0, Landroid/webkit/BrowserFrame;->mIsMainFrame:Z

    if-eqz v0, :cond_7

    .line 1271
    invoke-direct {p0}, Landroid/webkit/BrowserFrame;->resetLoadingStates()V

    .line 1273
    :cond_7
    invoke-direct {p0}, Landroid/webkit/BrowserFrame;->nativeStopLoading()V

    .line 1274
    return-void
.end method

.method public native stringByEvaluatingJavaScriptFromString(Ljava/lang/String;)Ljava/lang/String;
.end method
