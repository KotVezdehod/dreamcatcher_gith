.class public Lfi/iki/elonen/NanoHTTPD$ServerRunnable;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServerRunnable"
.end annotation


# instance fields
.field private bindException:Ljava/io/IOException;

.field private hasBinded:Z

.field final synthetic this$0:Lfi/iki/elonen/NanoHTTPD;

.field private final timeout:I


# direct methods
.method public constructor <init>(Lfi/iki/elonen/NanoHTTPD;I)V
    .locals 0

    .line 1754
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->this$0:Lfi/iki/elonen/NanoHTTPD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1752
    iput-boolean p1, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->hasBinded:Z

    .line 1755
    iput p2, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->timeout:I

    return-void
.end method

.method static synthetic access$1100(Lfi/iki/elonen/NanoHTTPD$ServerRunnable;)Z
    .locals 0

    .line 1746
    iget-boolean p0, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->hasBinded:Z

    return p0
.end method

.method static synthetic access$1200(Lfi/iki/elonen/NanoHTTPD$ServerRunnable;)Ljava/io/IOException;
    .locals 0

    .line 1746
    iget-object p0, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->bindException:Ljava/io/IOException;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1761
    :try_start_0
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->this$0:Lfi/iki/elonen/NanoHTTPD;

    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD;->access$900(Lfi/iki/elonen/NanoHTTPD;)Ljava/net/ServerSocket;

    move-result-object v0

    iget-object v1, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->this$0:Lfi/iki/elonen/NanoHTTPD;

    invoke-static {v1}, Lfi/iki/elonen/NanoHTTPD;->access$700(Lfi/iki/elonen/NanoHTTPD;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->this$0:Lfi/iki/elonen/NanoHTTPD;

    invoke-static {v2}, Lfi/iki/elonen/NanoHTTPD;->access$700(Lfi/iki/elonen/NanoHTTPD;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->this$0:Lfi/iki/elonen/NanoHTTPD;

    invoke-static {v3}, Lfi/iki/elonen/NanoHTTPD;->access$800(Lfi/iki/elonen/NanoHTTPD;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->this$0:Lfi/iki/elonen/NanoHTTPD;

    invoke-static {v2}, Lfi/iki/elonen/NanoHTTPD;->access$800(Lfi/iki/elonen/NanoHTTPD;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/net/InetSocketAddress;-><init>(I)V

    :goto_0
    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    const/4 v0, 0x1

    .line 1762
    iput-boolean v0, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->hasBinded:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1769
    :cond_1
    :try_start_1
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->this$0:Lfi/iki/elonen/NanoHTTPD;

    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD;->access$900(Lfi/iki/elonen/NanoHTTPD;)Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 1770
    iget v1, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->timeout:I

    if-lez v1, :cond_2

    .line 1771
    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 1773
    :cond_2
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 1774
    iget-object v2, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->this$0:Lfi/iki/elonen/NanoHTTPD;

    iget-object v2, v2, Lfi/iki/elonen/NanoHTTPD;->asyncRunner:Lfi/iki/elonen/NanoHTTPD$AsyncRunner;

    iget-object v3, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->this$0:Lfi/iki/elonen/NanoHTTPD;

    invoke-virtual {v3, v0, v1}, Lfi/iki/elonen/NanoHTTPD;->createClientHandler(Ljava/net/Socket;Ljava/io/InputStream;)Lfi/iki/elonen/NanoHTTPD$ClientHandler;

    move-result-object v0

    invoke-interface {v2, v0}, Lfi/iki/elonen/NanoHTTPD$AsyncRunner;->exec(Lfi/iki/elonen/NanoHTTPD$ClientHandler;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1776
    invoke-static {}, Lfi/iki/elonen/NanoHTTPD;->access$200()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "Communication with the client broken"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1778
    :goto_1
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->this$0:Lfi/iki/elonen/NanoHTTPD;

    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD;->access$900(Lfi/iki/elonen/NanoHTTPD;)Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :catch_1
    move-exception v0

    .line 1764
    iput-object v0, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->bindException:Ljava/io/IOException;

    return-void
.end method
