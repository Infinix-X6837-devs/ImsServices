.class Lcom/mediatek/ims/rcs/MtkSipTransportImpl$3;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "MtkSipTransportImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->registerNetworkCallback(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/rcs/MtkSipTransportImpl;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/rcs/MtkSipTransportImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/rcs/MtkSipTransportImpl;

    .line 344
    iput-object p1, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl$3;->this$0:Lcom/mediatek/ims/rcs/MtkSipTransportImpl;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 4
    .param p1, "network"    # Landroid/net/Network;

    .line 347
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 348
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl$3;->this$0:Lcom/mediatek/ims/rcs/MtkSipTransportImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl$3;->this$0:Lcom/mediatek/ims/rcs/MtkSipTransportImpl;

    invoke-static {v2}, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->access$400(Lcom/mediatek/ims/rcs/MtkSipTransportImpl;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]IMS network available"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->access$500(Lcom/mediatek/ims/rcs/MtkSipTransportImpl;Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl$3;->this$0:Lcom/mediatek/ims/rcs/MtkSipTransportImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->access$202(Lcom/mediatek/ims/rcs/MtkSipTransportImpl;Z)Z

    .line 350
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl$3;->this$0:Lcom/mediatek/ims/rcs/MtkSipTransportImpl;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->access$100(Lcom/mediatek/ims/rcs/MtkSipTransportImpl;)Lcom/mediatek/ims/rcs/UaServiceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl$3;->this$0:Lcom/mediatek/ims/rcs/MtkSipTransportImpl;

    invoke-static {v1}, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->access$400(Lcom/mediatek/ims/rcs/MtkSipTransportImpl;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/rcs/UaServiceManager;->imsRegistered(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl$3;->this$0:Lcom/mediatek/ims/rcs/MtkSipTransportImpl;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->access$200(Lcom/mediatek/ims/rcs/MtkSipTransportImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl$3;->this$0:Lcom/mediatek/ims/rcs/MtkSipTransportImpl;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->access$300(Lcom/mediatek/ims/rcs/MtkSipTransportImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/rcs/MtkSipDelegate;

    .line 352
    .local v1, "delegate":Lcom/mediatek/ims/rcs/MtkSipDelegate;
    iget-object v2, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl$3;->this$0:Lcom/mediatek/ims/rcs/MtkSipTransportImpl;

    invoke-static {v2}, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->access$100(Lcom/mediatek/ims/rcs/MtkSipTransportImpl;)Lcom/mediatek/ims/rcs/UaServiceManager;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl$3;->this$0:Lcom/mediatek/ims/rcs/MtkSipTransportImpl;

    invoke-static {v3}, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->access$400(Lcom/mediatek/ims/rcs/MtkSipTransportImpl;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/rcs/UaServiceManager;->getRegistrationInfo(I)Lcom/mediatek/ims/rcsua/RegistrationInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->notifyRegistrationRegistered(Lcom/mediatek/ims/rcsua/RegistrationInfo;)V

    .line 353
    .end local v1    # "delegate":Lcom/mediatek/ims/rcs/MtkSipDelegate;
    goto :goto_0

    .line 355
    :cond_0
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 3
    .param p1, "network"    # Landroid/net/Network;

    .line 359
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    .line 360
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl$3;->this$0:Lcom/mediatek/ims/rcs/MtkSipTransportImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl$3;->this$0:Lcom/mediatek/ims/rcs/MtkSipTransportImpl;

    invoke-static {v2}, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->access$400(Lcom/mediatek/ims/rcs/MtkSipTransportImpl;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]IMS network lost"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->access$500(Lcom/mediatek/ims/rcs/MtkSipTransportImpl;Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl$3;->this$0:Lcom/mediatek/ims/rcs/MtkSipTransportImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->access$202(Lcom/mediatek/ims/rcs/MtkSipTransportImpl;Z)Z

    .line 362
    return-void
.end method
