.class public abstract Lcyanogenmod/weather/ICMWeatherManager$Stub;
.super Landroid/os/Binder;
.source "ICMWeatherManager.java"

# interfaces
.implements Lcyanogenmod/weather/ICMWeatherManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/weather/ICMWeatherManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/weather/ICMWeatherManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "cyanogenmod.weather.ICMWeatherManager"

.field static final TRANSACTION_cancelRequest:I = 0x6

.field static final TRANSACTION_getActiveWeatherServiceProviderLabel:I = 0x5

.field static final TRANSACTION_lookupCity:I = 0x2

.field static final TRANSACTION_registerWeatherServiceProviderChangeListener:I = 0x3

.field static final TRANSACTION_unregisterWeatherServiceProviderChangeListener:I = 0x4

.field static final TRANSACTION_updateWeather:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "cyanogenmod.weather.ICMWeatherManager"

    invoke-virtual {p0, p0, v0}, Lcyanogenmod/weather/ICMWeatherManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcyanogenmod/weather/ICMWeatherManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "cyanogenmod.weather.ICMWeatherManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcyanogenmod/weather/ICMWeatherManager;

    if-eqz v1, :cond_1

    check-cast v0, Lcyanogenmod/weather/ICMWeatherManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcyanogenmod/weather/ICMWeatherManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcyanogenmod/weather/ICMWeatherManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    :sswitch_0
    const-string v4, "cyanogenmod.weather.ICMWeatherManager"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v5

    :sswitch_1
    const-string v4, "cyanogenmod.weather.ICMWeatherManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcyanogenmod/weather/RequestInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcyanogenmod/weather/RequestInfo;

    :goto_0
    invoke-virtual {p0, v2}, Lcyanogenmod/weather/ICMWeatherManager$Stub;->updateWeather(Lcyanogenmod/weather/RequestInfo;)V

    return v5

    :cond_0
    const/4 v2, 0x0

    .local v2, "_arg0":Lcyanogenmod/weather/RequestInfo;
    goto :goto_0

    .end local v2    # "_arg0":Lcyanogenmod/weather/RequestInfo;
    :sswitch_2
    const-string v4, "cyanogenmod.weather.ICMWeatherManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcyanogenmod/weather/RequestInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcyanogenmod/weather/RequestInfo;

    :goto_1
    invoke-virtual {p0, v2}, Lcyanogenmod/weather/ICMWeatherManager$Stub;->lookupCity(Lcyanogenmod/weather/RequestInfo;)V

    return v5

    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Lcyanogenmod/weather/RequestInfo;
    goto :goto_1

    .end local v2    # "_arg0":Lcyanogenmod/weather/RequestInfo;
    :sswitch_3
    const-string v4, "cyanogenmod.weather.ICMWeatherManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcyanogenmod/weather/IWeatherServiceProviderChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcyanogenmod/weather/IWeatherServiceProviderChangeListener;

    move-result-object v1

    .local v1, "_arg0":Lcyanogenmod/weather/IWeatherServiceProviderChangeListener;
    invoke-virtual {p0, v1}, Lcyanogenmod/weather/ICMWeatherManager$Stub;->registerWeatherServiceProviderChangeListener(Lcyanogenmod/weather/IWeatherServiceProviderChangeListener;)V

    return v5

    .end local v1    # "_arg0":Lcyanogenmod/weather/IWeatherServiceProviderChangeListener;
    :sswitch_4
    const-string v4, "cyanogenmod.weather.ICMWeatherManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcyanogenmod/weather/IWeatherServiceProviderChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcyanogenmod/weather/IWeatherServiceProviderChangeListener;

    move-result-object v1

    .restart local v1    # "_arg0":Lcyanogenmod/weather/IWeatherServiceProviderChangeListener;
    invoke-virtual {p0, v1}, Lcyanogenmod/weather/ICMWeatherManager$Stub;->unregisterWeatherServiceProviderChangeListener(Lcyanogenmod/weather/IWeatherServiceProviderChangeListener;)V

    return v5

    .end local v1    # "_arg0":Lcyanogenmod/weather/IWeatherServiceProviderChangeListener;
    :sswitch_5
    const-string v4, "cyanogenmod.weather.ICMWeatherManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcyanogenmod/weather/ICMWeatherManager$Stub;->getActiveWeatherServiceProviderLabel()Ljava/lang/String;

    move-result-object v3

    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v5

    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_6
    const-string v4, "cyanogenmod.weather.ICMWeatherManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcyanogenmod/weather/ICMWeatherManager$Stub;->cancelRequest(I)V

    return v5

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
