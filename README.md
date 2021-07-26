<img src="https://elytrium.net/src/img/elytrium.webp" alt="Elytrium" align="right">

# ElytraProxy
[![Join our Discord](https://img.shields.io/discord/775778822334709780.svg?logo=discord&label=Discord)](https://ely.su/discord)

Really customizable Minecraft proxy server with Auth, AntiBot (aka BotFilter) and some another helpful stuff, based on Velocity. Developed for [Elytrium](https://elytrium.net/), cheap and modern Russian game hosting with powerful AntiBot system.

Test server: [``ely.su``](https://hotmc.ru/minecraft-server-203216)

## Build

You need JDK11+ and git to compile ElytraProxy.

- Clone this repo: ```git clone https://github.com/Elytrium/ElytraProxy/```
- Apply patches: ```./elytraproxy b```
- Get your binary: ```ElytraProxy-Build/proxy/build/libs/elytraproxy-proxy-VERSION-all.jar```

## AntiBot info

Test server: i7-3770 (4c/8t 3.4GHz) Dedicated server, Ubuntu Server 20.04, OpenJDK 11, 16GB DDR3 1600MHz RAM, 4GB RAM is allocated to proxy. <br>
Attack: Motd + Join bot attack (100k joins per seconds, 1.17 Protocol)

Proxy server | Info | Boot time | % CPU on attack
--- | --- | --- | ---
ElytraProxy | ElytraProxy Auth Online/Offline Mode | 2 sec | 20%
ElytraProxy | Offline Mode | 2 sec | 20%
Leymooo's BungeeCord BotFilter | JPremium Online/Offline Mode | 8 sec | 95%
Leymooo's BungeeCord BotFilter | Offline Mode | 8 sec | 40%
yooniks' BungeeCord Aegis Escanor 1.3.1 | Offline Mode | 10 sec | 20%
yooniks' BungeeCord Aegis 9.2.1 | Offline Mode | 10 sec | 100% (what?)
Velocity | JPremium Online/Offline Mode | 2 sec | 95% 
Velocity | Online Mode | 2 sec | 70% 
Velocity | Offline Mode | 2 sec | 55%

## Donation

Your donations are really appreciated. Donations wallets/links/cards:

- MasterCard Debit Card (Tinkoff Bank): ``5536 9140 0599 1975``
- Qiwi Wallet: ``PFORG`` or [this link](https://my.qiwi.com/form/Petr-YSpyiLt9c6)
- YooMoney Wallet: ``4100 1721 8467 044`` or [this link](https://yoomoney.ru/quickpay/shop-widget?writer=seller&targets=Donation&targets-hint=&default-sum=&button-text=11&payment-type-choice=on&mobile-payment-type-choice=on&hint=&successURL=&quickpay=shop&account=410017218467044)
- PayPal: ``ogurec332@mail.ru``

## Contribution

Follow this instruction, if you want to create your own patch.

- Apply current patches: ```./elytraproxy b```
- Do your changes and try to build: ```./gradlew build```
- Create git commit: ```cd ElytraProxy-Build && git add . && git commit -m "Patch Name"```
- Rebuild patches: ```./elytraproxy rb```
- Now you can upload your patch and submit a pull request :)
