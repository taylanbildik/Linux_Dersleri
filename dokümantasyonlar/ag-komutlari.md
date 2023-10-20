# Temel Ağ Komutları

Bu bölüm içerisinde ağ hakkında çok temel düzeyde bilgi almamızı sağlayan bazı araçlardan bahsedeceğiz. Ancak tabii ki ağ konusu başlı başına öğrenilmesi gereken bir konu olduğu için bu bölümde ağ temellerine değinmeyeceğiz. Eğer network konusunda temel seviye bilginiz yoksa, mevcut platformda ağ temellerine giriş eğitimi mevcut. Bu bölümden önce ağ temellerini öğrenmeniz, bu bölümden alacağınız verimi kesinlikle arttıracaktır. 

Ben anlatımlar sırasında ağ temelleri eğitimini bitirdiğinizi ya da halihazırda ağ temellerini bildiğinizi varsayarak açıklamalar yapıyor olacağım. Bu eğitim standart Linux kullanıcılarını da kapsadığı için zaten yalnızca herkesin işine yarayabilecek bazı ağ araçları hakkında çok kısaca bilgi ediniyor olacağız.

# ping

`ping` komutu, ağdaki cihazların erişilebilirliğini ve tepki sürelerini kontrol etmek için kullanılan bir araçtır. Temelde, bir cihazdan diğerine küçük kontrol(icmp) paketleri gönderir ve bu paketlerin karşı cihaza ne kadar sürede ulaştığını ve geri döndüğünü ölçer.

Hemen denemek için www.google.com adresine ping göndermeyi deneyelim. 


<p class="mavi"><strong>ℹ️ Not:</strong> Biz durdurana kadar ping gönderilmeye devam edeceği için bir noktada <kbd>Ctrl</kbd> + <kbd>C</kbd> tuşlaması ile işlemi duraklatmamız gerekiyor.</p>

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ ping www.google.com
PING www.google.com (216.58.212.4) 56(84) bytes of data.
64 bytes from www.google.com (216.58.212.4): icmp_seq=1 ttl=115 time=16.6 ms
64 bytes from www.google.com (216.58.212.4): icmp_seq=2 ttl=115 time=17.5 ms
64 bytes from www.google.com (216.58.212.4): icmp_seq=3 ttl=115 time=16.6 ms
64 bytes from www.google.com (216.58.212.4): icmp_seq=4 ttl=115 time=17.3 ms
64 bytes from www.google.com (216.58.212.4): icmp_seq=5 ttl=115 time=17.1 ms
^C
--- www.google.com ping statistics ---
5 packets transmitted, 5 received, 0% packet loss, time 4009ms
rtt min/avg/max/mdev = 16.638/17.020/17.450/0.330 ms
```

Çıktılara bakacak olursak, verdiğimiz www.google.com domain adresi çözümlenip “216.58.212.4” ip adresi bulunmuş ve bu adrese küçük bir data paketi gönderilmiş. Göndermiş olduğumuz pakete karşılık olarak da www.google.com adresi 64 byte’lık yanıt paketleri göndermiş. 

**icmp_seq** kısmı kaçıncı paket olduğunu belirtiyor, gördüğünüz gibi sıralı şekilde paketler ulaştığı için paket kaybı olmadığını anlayabiliyoruz. 

**TTL**, “**t**ime **t**o **l**ive” yani “yaşam süresi” anlamına geliyor. Yanıt oluşturan sunucular pakete belirli sayıda bir TTL değeri atarlar. Bu değer, her bir yönlendirme işleminde 1 azaltılır. Bu sayede kaç yönlendirme yapıldığı bilinebilir. Ayrıca paketlerin döngüye girip sonsuza kadar yönlendirilerek ağ trafiği oluşturması da önlenmiş olur. TTL değerleri varsayılan olarak “64” “128” “255” gibi değerler tanımlanabiliyor. `ping` aracı üzerinden doğrudan sunucunun varsayılan TTL değerini bilemesek de aldığımız bu çıktıdan bu değerin 128 olduğunu tahmin edebiliyoruz. 

**time** kısmı, bu yanıtın ne kadar sürede bize ulaştığını belirtir. Bu süre paketin gönderilip, yanıtın alınması sırasında geçen sürenin toplamdır. Bu sayede sunucu ile aramızdaki gecikmeyi öğrenebiliyoruz.

Sondaki çıktılarda da genel istatistikler belirtilmiş. Zaten İngilizce olarak açıkça belirtildiği için 5 paketin iletildiği, 5 tanesinin hedefine ulaştığı, yüzde 0 paket kaybı olduğu ve ping işlemi sırasında geçen süreyi çıktılarda görebiliyoruz.

Buradaki **RTT** ifadesi (**R**ound-**T**rip **T**ime), yani veri paketlerinin gönderilip geri dönme süresini ifade ediyor. Bu satırda, çıktılarda yer alan time değerlerinin en kısası, ortalaması, en uzunu ve ortalama sapma değeri ayrıca belirtiliyor. 

`ping` aracının en temel kullanımı bu şekilde. Diğer seçeneklerini görmek için `ping —help` komutunu kullanabilirsiniz.

Örneğin kaç adet paketin gönderileceğini belirtmek için `-c` seçeneği ile sayı belirtmemiz mümkün. Ben denemek için yalnızca **2** sayısını belirtiyorum.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ ping -c 2 www.linuxdersleri.net
PING www.linuxdersleri.net (185.199.109.153) 56(84) bytes of data.
64 bytes from www.linuxdersleri.net (185.199.109.153): icmp_seq=1 ttl=56 time=16.3 ms
64 bytes from www.linuxdersleri.net (185.199.109.153): icmp_seq=2 ttl=56 time=15.6 ms

--- www.linuxdersleri.net ping statistics ---
2 packets transmitted, 2 received, 0% packet loss, time 1002ms
rtt min/avg/max/mdev = 15.550/15.922/16.295/0.372 ms
```

`ping` komutu varsayılan olarak ipv4 adresleri üzerinde çalışıyor. Eğer ipv6 adreslerle çalışacaksanız `-6` seçeneği ile bunu özellikle belirtmeniz gerekiyor. Elbette ipv6 adresleri üzerinde işlem yapıyorken, internet servis sağlayıcınızın da bu adreslere destek veriyor olması gerek.

# ip Komutu

`ip` komutu ağ arayüzleri hakkında bilgi almak ve yapılandırmak için kullanabildiğimiz çok kullanışlı bir araç. Aracımızın çok fazla seçeneği olduğu için öncelikle sahip olduğu seçenekleri görmek için yalnızca `ip` komutunu girelim.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ ip
Usage: ip [ OPTIONS ] OBJECT { COMMAND | help }
       ip [ -force ] -batch filename
where  OBJECT := { address | addrlabel | amt | fou | help | ila | ioam | l2tp |
                   link | macsec | maddress | monitor | mptcp | mroute | mrule |
                   neighbor | neighbour | netconf | netns | nexthop | ntable |
                   ntbl | route | rule | sr | tap | tcpmetrics |
                   token | tunnel | tuntap | vrf | xfrm }
       OPTIONS := { -V[ersion] | -s[tatistics] | -d[etails] | -r[esolve] |
                    -h[uman-readable] | -iec | -j[son] | -p[retty] |
                    -f[amily] { inet | inet6 | mpls | bridge | link } |
                    -4 | -6 | -M | -B | -0 |
                    -l[oops] { maximum-addr-flush-attempts } | -br[ief] |
                    -o[neline] | -t[imestamp] | -ts[hort] | -b[atch] [filename] |
                    -rc[vbuf] [size] | -n[etns] name | -N[umeric] | -a[ll] |
                    -c[olor]}
```

Burada komutun temel kullanım şablonu açıklanmış. `ip` komutundan sonra ilgili seçeneği ve objeyi belirtebiliyoruz. Seçeneklerin ve objelerin yani aslında `ip` aracıyla yönetebileceğimiz nesnelerin hangileri olduğu da bu çıktılarda gözüküyor. 

Sistemimize bağlı bulunan ağ arayüzleri hakkında bilgi almak için `ip a` ya da `ip addr` ya da uzun şekilde `ip address` şeklinde komutumuzu girebiliriz. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ ip a
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host 
       valid_lft forever preferred_lft forever
2: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc pfifo_fast state UP group default qlen 1000
    link/ether 08:00:27:95:bd:54 brd ff:ff:ff:ff:ff:ff
    inet 192.168.1.11/24 brd 192.168.1.255 scope global dynamic noprefixroute eth0
       valid_lft 83519sec preferred_lft 83519sec
    inet6 fe80::a00:27ff:fe95:bd54/64 scope link noprefixroute 
       valid_lft forever preferred_lft forever
```

Eğer ağ arayüzleri tarafından gerçekleştirilen paket transferleri hakkında bilgi edinmek istersek `-s a` seçeneğini ekleyebiliriz. Buradaki `-s` seçeneği detaylı bilgi için istatistikleri(**s**tatistics) verirken, a(**a**ddress) parametresi, ağ arayüzlerini temsil etmek için ekleniyor. Bunun yerine `-s addr` `-s address` gibi uzun uzadıya yazmanız da mümkün.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ ip -s a
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host 
       valid_lft forever preferred_lft forever
    RX:  bytes packets errors dropped  missed   mcast           
             0       0      0       0       0       0 
    TX:  bytes packets errors dropped carrier collsns           
             0       0      0       0       0       0 
2: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc pfifo_fast state UP group default qlen 1000
    link/ether 08:00:27:95:bd:54 brd ff:ff:ff:ff:ff:ff
    inet 192.168.1.11/24 brd 192.168.1.255 scope global dynamic noprefixroute eth0
       valid_lft 85199sec preferred_lft 85199sec
    inet6 fe80::f856:4192:4810:8e2c/64 scope link noprefixroute 
       valid_lft forever preferred_lft forever
    RX:  bytes packets errors dropped  missed   mcast           
          3908      44      0       0       0      24 
    TX:  bytes packets errors dropped carrier collsns           
          3373      34      0       0       0       0
```

Buradaki çıktılarda yer alan “lo” ifadesi localhost ya da local loopback olarak bilinen ağ arayüzünü temsil ediyor. Bu arayüz, sayesinde mevcut cihazın kendi kendine ağ trafiği oluşturması ve işlemesi mümkün oluyor. Bu sayede örneğin bir websitesi geliştirirken gerçek ağ trafiği olmadan uygulamanın kendi içinde nasıl çalıştığını test edebiliyoruz. Ayrıca sistem üzerindeki pek çok araç da lokal adrese benzer sebeplerle ihtiyaç duyuyor.

İkinci ağ arayüzü olan “eth0” ise ethernet bağlantısını temsil eden ağ arayüzüdür. Ben modemime ethernet kartıma bağlı olan kablo ile bağlı olduğum için ağ trafiğimi ethernet arayüzü üzerinden sağlıyorum. 

Eğer sistemime Wi-Fi aygıtı bağlı olsaydı “wlan0” ağ arayüzünü de bu çıktılarda görüyor olacaktım. Bu durumu teyit etmek için sistemime Wifi adaptörünü bağladıktan sonra tekrar `ip a` komutunu giriyorum. 

```bash
┌──(taylan㉿kali-makinesi)-[~]
└─$ ip a                                                                                                                                                 
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host 
       valid_lft forever preferred_lft forever
2: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc pfifo_fast state UP group default qlen 1000
    link/ether 08:00:27:95:bd:54 brd ff:ff:ff:ff:ff:ff
    inet 192.168.1.15/24 brd 192.168.1.255 scope global noprefixroute eth0
       valid_lft forever preferred_lft forever
    inet6 fe80::e1f0:e5b2:f52:f244/64 scope link noprefixroute 
       valid_lft forever preferred_lft forever
3: wlan0: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500 qdisc mq state DOWN group default qlen 1000
    link/ether 5e:ba:fb:fb:58:23 brd ff:ff:ff:ff:ff:ff permaddr d4:6e:0e:02:0e:0d
```

Bakın bu kez wlan0 arayüzü de eklenmiş oldu. İsimlendirme sayesinde hangi tür ağ arayüzü olduğunu ve kaçıncı ağ arayüzü olduğunu da rahatlıkla görebiliyoruz. Tahmin edebileceğiniz gibi buradaki eth ve wlan ifadeleri arayüzü tipini belirtiyorken, bitişik şekilde yazılan sayılar ise kaçıncı ağ arayüzü olduğunu belirtiyor. Örneğin benim sistemimde 3 tane ethernet ağ kartı bağlı olsaydı buradaki çıktılarda “eth0”, “eth1” ve “eth2” şeklinde sırasıyla isimlendirilmiş ethernet arayüzlerini görecektik. 

Ayrıca örneğin Rocky Linux üzerinde bu ağ arayüzü isimlendirmesi biraz daha farklı. Hemen görmek için `ip a` komutunu Rocky üzerinde girelim. 

```bash
[pc@linuxdersleri ~]$ ip a
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host 
       valid_lft forever preferred_lft forever
2: enp0s3: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UP group default qlen 1000
    link/ether 08:00:27:ce:11:be brd ff:ff:ff:ff:ff:ff
    inet 192.168.1.12/24 brd 192.168.1.255 scope global dynamic noprefixroute enp0s3
       valid_lft 85424sec preferred_lft 85424sec
    inet6 fe80::a00:27ff:fece:11be/64 scope link noprefixroute 
       valid_lft forever preferred_lft forever
4: wlp0s11u1: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500 qdisc mq state DOWN group default qlen 1000
    link/ether 8e:ef:cc:44:7f:e2 brd ff:ff:ff:ff:ff:ff permaddr d4:6e:0e:02:0e:0d
[pc@linuxdersleri ~]$
```

**Lokal adres** yine “**lo**” şeklinde belirtiliyorken, **ethernet** arayüzü “**enp0s3**” şeklinde isimlendirilmiş ve **wi-fi** arayüzü ise “**wlp0s11u1**” şeklinde isimlendirilmiş. Yine de çıktılara baktığımızda “**enp**” ile başlayanın **ethernet** arayüzünü, “**wlp**” ile başlayanın ise **wi-fi** arayüzünü temsil ettiğini ve bitişiğindeki ilk sayının ise kaçıncı ağ arayüzü olduğunu belirttiğini rahatlıkla anlayabiliyoruz. 

Neticede `ip a` komutu sayesinde ağ arayüzleri hakkında gerekli olan temel bilgileri öğrenebiliyoruz.

## Ağ Arayüzlerini Açıp Kapatmak | UP DOWN

Dilersek bu ağ arayüzlerini kapatıp açmamız da mümkün. Üzerinde işlem yapmak istediğimiz arayüzü `ip link set` komutundan sonra yazıp, yapmak istediğimiz işlemi belirtebiliriz. Ben öncelikle **ethernet** arayüzünü kapatmak istiyorum. Bunun için `sudo ip link set eth0 down` komutunu giriyorum.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo ip link set eth0 down
[sudo] password for taylan: 

┌──(taylan㉿linuxdersleri)-[~]
└─$ ip address                                                                                                                          
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host 
       valid_lft forever preferred_lft forever
2: eth0: <BROADCAST,MULTICAST> mtu 1500 qdisc pfifo_fast state DOWN group default qlen 1000
    link/ether 08:00:27:95:bd:54 brd ff:ff:ff:ff:ff:ff
```

Gördüğünüz gibi **ethernet** bağlantısını temsil eden **eth0** arayüzünün **state** yani durumu **DOWN** olarak gözüküyor. 

Şimdi kapatmış olduğumuz ağ arayüzünü tekrar aktifleştirmek üzere bu kez `up` seçeneğini kullanalım.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo ip link set eth0 up

┌──(taylan㉿linuxdersleri)-[~]
└─$ ip address                                                                                                                                
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host 
       valid_lft forever preferred_lft forever
2: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc pfifo_fast state UP group default qlen 1000
    link/ether 08:00:27:95:bd:54 brd ff:ff:ff:ff:ff:ff
    inet 192.168.1.11/24 brd 192.168.1.255 scope global dynamic noprefixroute eth0
       valid_lft 86398sec preferred_lft 86398sec
    inet6 fe80::a00:27ff:fe95:bd54/64 scope link noprefixroute 
       valid_lft forever preferred_lft forever
```

Bakın `sudo ip link set eth0 up` komutu sayesinde **eth0** arayüzünü tekrar **aktifleştirmiş** oldum.

## Yönlendirici Adresini Öğrenmek | route

Sistemin yönlendirme tablosu hakkında bilgi almak için `ip route` komutunu kullanabiliyoruz.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ ip route                                                                                                                                                
default via 192.168.1.1 dev eth0 proto dhcp metric 100 
192.168.1.0/24 dev eth0 proto kernel scope link src 192.168.1.11 metric 100
```

Bu çıktılarda, **eth0** ağ arayüzünün **192.168.1.1** adresini **getway** olarak kullandığını belirtiyor. Ayrıca **192.168.1.0/24** adresinin **ağ adresi** olduğunu, **eth0** arayüzünün ise **192.168.1.11 ip adresine sahip** olduğu belirtiliyor. 

Yani böylelikle 192.168.1.0/24 ağında 192.168.1.11 ip adresine sahip bir ethernet bağlantısına sahip olduğumu ve harici bir ağ ile iletişime geçmem gerektiğinde default getway olan 192.168.1.1 ip adresine sahip router ile iletişim kurulduğunu buradaki çıktılara bakarak anlayabiliyorum.

Neticede `ip` aracı sayesinde ağ ve ağ arayülzeri hakkında gerekli olan pek çok bilgiye erişmemiz mümkün oluyor. Üstelik aslında `ip` aracını yalnızca bilgi almak için değil, bizzat ip ve route gibi bilgileri düzenlemek için de kullanabiliyoruz. Yani yeni ip adresleri veya yönlendirme(routing) bilgileri ekleyip kaldırmamız mümkün. **Fakat ip aracı ile gerçekleştirilecek olan bu değişiklikler sistem ya da ağ arayüzü yeniden başlatıldığında sıfırlanmış oluyor**. Bu sebeple kalıcı değişimler için alternatif araçlar tercih ediliyor. 

Temelde `ip` aracının kullanımı bu şekilde. 

# nmcli | nmtui

`nmcli` ifadesi “**n**etwork **m**anager **c**ommand **l**ine **i**nterface” kısaltmasından geliyor. Ve ağ ile ilgili düzenlemeleri komut satırı üzerinden gerçekleştirebilmemizi sağlıyor. Ayrıca `nmtui` isimli alternatif sayesinde de yine komut satırı üzerinden ama bu kez görsel bir arayüzü bulunan araç ile temel ağ ayarlarını düzenlememiz mümkün oluyor. `nmtui` ifadesi “**n**etwork **m**anager **t**erminal **u**ser **i**nterface” ifadesinin kısaltmasından geliyor. Her iki araç da **systemd** tarafından sağlanan “**NetworkManager**” servisinin yönetilmesini sağlıyor. 

Temel ağ konfigürasyonları için son derece yeterli ve kolay kullanılabilir olduğu için biz `nmtui` aracını ele alalım.

Aracı çalıştırmak için konsola `nmtui` komutunu girelim.

![nmtui.png](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/network/nmtui.webp)

Araç ilk açıldığında “ağ konfigürasyonlarını düzenleme”, “ağ arayüzlerini aktifleştirme” ve sistemin “hostname bilgisini tanımlama” seçenekleri sunuyor. Öncelikle **ağ bağlantısını konfigüre etme** seçeneği ile devam edelim.

![nmtui-connection.png](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/network/nmtui-connection.webp)

Burada bağlı olduğum ağ arayüzü gözüküyor. Benim sistemimde şu an yalnızca ethernet bağlı bulunduğu için yalnızca ethernet var. Eğer yeni bir bağlantı türü eklemek istersem, klavyemdeki yön tuşlarını kullanarak, sağ taraftaki **Add** seçeneğinin üstüne gelip <kbd>enter</kbd> ile onaylayabilirim. 

![nmtui-connection-add.png](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/network/nmtui-connection-add.webp)

Buradaki listeden, hangi türde bağlantı tanımlanacaksa onu seçip gerekli konfigürasyonları gerçekleştirmemiz mümkün. Örneğin Wi-Fi bağlantısı gerçekleştirilecekse, bu seçenek seçilip, gerekli aygıt ve ağ bilgililerinin tanımlanması mümkün. 

![nmtui-connection-add-wifi.png](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/network/nmtui-connection-add-wifi.webp)

Değişiklikleri kaydetmek için **OK** seçeneğinin üstüne gelip <kbd>enter</kbd> ile onaylamanız yeterli. Eğer değişiklikleri kaydetmek istemiyorsanız **Cancel** seçeneğini <kbd>enter</kbd> ile onaylayabilirsiniz. Ayrıca <kbd>esc</kbd> tuşu ile de değişiklikleri iptal edip bir önceki menüye hızlıca dönmeniz mümkün. 

Yeni ağ bağlantısı tanımlamak yerine mevcut olan bağlantıyı konfigüre etmek istersek, ilgili bağlantının üstündeyken <kbd>enter</kbd> ile veya menüdeki **Edit** seçeneğine <kbd>enter</kbd> ile tıklayabiliriz. 

![nmtui-connection-edit.png](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/network/nmtui-connection-edit.webp)

Düzenleme penceresi üzerinde, ilgili bağlantının türüne göre tanımlayabileceğimiz seçenekler gözüküyor. Örneğin ben ethernet bağlantısındaki IPv4 ip adreslerinin otomatik olarak alınması yerine kendim elle girmek istersem bu seçeneği değiştirmek üzere <kbd>enter</kbd> ile seçeneğe tıklayabilirim.

![nmtui-connection-edit-ipv4.png](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/network/nmtui-connection-edit-ipv4.webp)

IP adresini elle girmek istediğim için “**Manual**” seçeneğini seçebilirim. Bu seçimin ardından konfigürasyon ayrıntıları için sağ taraftaki “**Show**” seçeneğine de tıklamamız gerek.

![nmtui-connection-edit-ipv4-manual.png](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/network/nmtui-connection-edit-ipv4-manual.webp)

Artık buradan istediğim ip bilgilerini girmem mümkün. Bu değişimleri onaylamak için “**OK**” seçeneğinin üstüne gelip <kbd>enter</kbd> ile onaylamamız gerek. Daha sonra ağ arayüzünü kapatıp tekrar açtığımızda bu değişimler de gerçekleşmiş olacak. Ağ arayüzünü açıp kapatmak için de menüye dönüp buradan “**Activate a connection**” seçeneğine tıklamamız gerek.

![nmtui-connection-activate.png](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/network/nmtui-connection-activate.webp)

Buradan ilgili bağlantıya <kbd>enter</kbd> ile tıkladığınızda aktif ise pasif, pasif ise aktif forma geçecektir. Yani buradan ilgili ağ arayüzünü açıp kapatmanız mümkün.

![nmtui-connection-activate-on-off.png](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/network/nmtui-connection-activate-on-off.webp)

hostname bilgisini yani cihazın ağ üzerindeki ismini değiştirmek isterseniz ana menüden “**Set system hostname**” seçeneğine tıklayabilirsiniz.

![nmtui-hostname.png](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/network/nmtui-hostname.webp)

Buradan dilediğiniz bir hostname bilgisi girip “**OK**” ile onaylayabilirsiniz. 

⚠️ Dikkat: Ben menüde yer aldığı için burada hostname değişiminden bahsediyorum fakat sizin şu an hostname bilgisini değiştirmenizi kesinlikle önermiyorum. Çünkü hostname değişimi için uygulanması gereken ek konfigürasyonlar da mevcut. İleride hostname konusundan ayrıca bahsettiğimizde daha bilinçli şekilde değişim yapabiliyor olacaksınız. Ben burada yalnızca bir alternatif olduğu için bu değişimden bahsediyorum fakat şimdilik siz hostname bilgisini değiştirmeyin. Aksi halde sistem yönetimi noktasında sorun yaşamanız kaçınılmaz olur.

![nmtui-hostname-set.png](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/network/nmtui-hostname-set.webp)

Bu noktada sizden yetkili olduğunuzu kanıtlamanız için parola bilgisi istenebilir. Değişim için parolanızı girin. 

![nmtui-hostname-set-passwd.png](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/network/nmtui-hostname-set-passwd.webp)

Son olarak tüm işlerinizi bitirdiğinizde aracı kapatmak üzere “**Quit**” seçeneğinin üstüne gelip <kbd>enter</kbd> ile aracı kapatabilirsiniz.

![nmtui-quit.png](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/network/nmtui-quit.webp)

Ağ konfigürasyonları için ihtiyaç duyabileceğiniz temel işlemler için `nmtui` son derece kullanışlı bir araç. 

Eğer benzer konfigürasyonları komut satırı üzerinden gerçekleştirmek isterseniz `nmcli` aracını da kullanabilirsiniz. Fakat temel kullanımda `nmtui` çok daha kolay olduğu için daha çok tercih ediliyor. `nmcli` aracını kullanmak istiyorsanız, temel seçenekler için yardım sayfasına göz atabilirsiniz. 

Burada gerçekleştirilen tüm konfigürasyonlar ***/etc/NetworkManager/system-connections/*** dizini altında, ilgili ağ arayüzünü temsil eden konfigürasyon dosyasında tutuluyor. Ben Debian ve Redhat tabanlı dağıtımlarda bu içeriğe göz atıp aşağıya ekledim.

**Debian:**

```bash
┌──(taylan㉿linuxdersleri)-[~]                                                                                                                             
└─$ sudo cat /etc/NetworkManager/system-connections/Ethernet\ connection\ 1.nmconnection                                                                   
[connection]                                                                                                                                               
id=Ethernet connection 1                                                                                                                                   
uuid=0ba239d3-24c0-4511-87d6-749b381231a4                                                                                                                  
type=ethernet                                                                                                                                              
permissions=                                                                                                                                               
timestamp=1693291090                                                                                                                                       
                                                                                                                                                           
[ethernet]
mac-address-blacklist=

[ipv4]
dns-search=
method=auto

[ipv6]
addr-gen-mode=stable-privacy
dns-search=
method=auto

[proxy]
```

**RedHat:**

```bash
[root@linuxdersleri ~]# cat /etc/NetworkManager/system-connections/enp0s3.nmconnection 
[connection]
id=enp0s3
uuid=ebbc2f9d-0363-3da7-ab54-11479d0c8546
type=ethernet
autoconnect-priority=-999
interface-name=enp0s3
timestamp=1678973669

[ethernet]

[ipv4]
method=auto

[ipv6]
addr-gen-mode=eui64
method=auto

[proxy]
```

Bu sayede sistem başlangıcında, buradaki konfigürasyonlar dahilinde ağ ayarları kullanıma hazır hale getiriliyor. Bu sebeple sistem üzerinde ağ ile ilgili çeşitli özellikleri barındıran konfigürasyon dosyalarında manuel olarak değişim yapıp, sistemi yeniden başlatacak olursak bu değişimler silinmiş olacak. Dolayısıyla **NetworkManager** ile gerçekleştirebileceğiniz işlerinizi `nmcli` veya `nmtui` gibi araçlar yardımıyla gerçekleştirmeniz çok daha doğru bir yaklaşım olacaktır. 

Örneğin ileride DNS bilgisinin tutulduğu ***/etc/resolv.conf*** dosyasından bahsedeceğiz. Bu dosyada elle değişim yaparsanız, sistemi yeniden başlattığınızda yine **NetworkManager** tarafından tanımlanmış olan konfigürasyonlar geçerli olacak. Bu sebeple, kalıcı olmasını istediğiniz değişimler için `nmcli` veya `nmtui` araçlarını kullanmalısınız.

# SSH

SSH, “**s**ecure **sh**ell” ifadesinin kısaltmasından geliyor. SSH sayesinde uzaktaki sunuculara güvenli şekilde bağlanıp sunucuları yönetmemiz mümkün oluyor. 

SSH kullanabilmek için sunucular üzerinde ssh servisinin aktif olması gerekiyor. Aktif olma durumunu kontrol etmek için `systemctl status ssh.service` komutunu girelim. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ systemctl status ssh.service                                                                                                                           
○ ssh.service - OpenBSD Secure Shell server
     Loaded: loaded (/lib/systemd/system/ssh.service; disabled; vendor preset: disabled)
     Active: inactive (dead)
       Docs: man:sshd(8)
             man:sshd_config(5)
```

Şu anda benim sistemimde ssh servisi aktif değil. Aktifleştirmek üzere `systemctl start ssh.service` komutunu girip, yönetici parolası ile işlemi onaylayalım.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ systemctl status ssh.service                                                                                                                           
● ssh.service - OpenBSD Secure Shell server
     Loaded: loaded (/lib/systemd/system/ssh.service; disabled; vendor preset: disabled)
     Active: active (running) since Tue 2023-08-22 11:56:07 EDT; 1s ago
       Docs: man:sshd(8)
             man:sshd_config(5)
    Process: 23362 ExecStartPre=/usr/sbin/sshd -t (code=exited, status=0/SUCCESS)
   Main PID: 23363 (sshd)
      Tasks: 1 (limit: 12719)
     Memory: 2.2M
        CPU: 29ms
     CGroup: /system.slice/ssh.service
             └─23363 "sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 startups"

Aug 22 11:56:07 linuxdersleri systemd[1]: Starting OpenBSD Secure Shell server...
Aug 22 11:56:07 linuxdersleri sshd[23363]: Server listening on 0.0.0.0 port 22.
Aug 22 11:56:07 linuxdersleri sshd[23363]: Server listening on :: port 22.
Aug 22 11:56:07 linuxdersleri systemd[1]: Started OpenBSD Secure Shell server.
```

SSH servisini başlatmış olduk. Artık ssh ile bu sunucuya bağlanmamız mümkün. Ben denemek için aynı lokal ağda bulunan Windows makinesi üzerinden, Linux sunucuma bağlantı gerçekleştireceğim. Bunun için Windows powershell aracını çalıştırıp `ssh kullanıcı-adı@sunucu-ip` şeklinde komutumu girmem gerek. SSH bağlantısı için “putty” gibi çeşitli araçları kullanabiliyoruz fakat ben Windows powershell tercih ediyorum. Sunucuya bağlanabilmek için öncelikle sunucunun ip adresini biliyor olmamız gerek. Ben öğrenmek için Linux makineme `ip a` komutunu giriyorum.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ ip a                                                                                                                                                   
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host 
       valid_lft forever preferred_lft forever
2: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc pfifo_fast state UP group default qlen 1000
    link/ether 08:00:27:95:bd:54 brd ff:ff:ff:ff:ff:ff
    inet 192.168.1.11/24 brd 192.168.1.255 scope global dynamic noprefixroute eth0
       valid_lft 83058sec preferred_lft 83058sec
    inet6 fe80::5acb:6b00:3372:dcfc/64 scope link noprefixroute 
       valid_lft forever preferred_lft forever
```

Benim sunucumun lokal ağdaki ip adresi “**192.168.1.11**” şeklinde gözüküyor. Bu sebeple ben de “**taylan**” kullanıcı hesabında oturum açmak üzere `ssh taylan@192.168.1.11` komutunu powershell üzerinden giriyorum.

```bash
ssh taylan@192.168.1.11
The authenticity of host '192.168.1.11 (192.168.1.11)' can't be established.
ED25519 key fingerprint is SHA256:5bgjOGZMfMpfFhTRv8jTYWq2dCdHA5dVmYb3OCeU6g4.
This key is not known by any other names
Are you sure you want to continue connecting (yes/no/[fingerprint])?
```

Taraflar arasında ilk kez bağlantı kurulduğu için, bağlantıyı şifrelemeyi sağlayan anahtar hakkında bilgi sunuluyor. Bu anahtar benim Windows sistemimde kayıtlı olan bir anahtar olmadığı için bağlantıya güvenme konusunda benden onay bekleniyor. Ben emin olduğum için “yes” ile onaylıyorum.

```bash
? yes
Warning: Permanently added '192.168.1.11' (ED25519) to the list of known hosts.
taylan@192.168.1.11's password:
```

Anahtarı kabul ettikten hemen sonra “taylan” olarak oturum açabilmem için taylan kullanıcı hesabının parolasını girmem bekleniyor. Ben taylan kullanıcısının parolasını giriyorum.

```bash
taylan@192.168.1.11's password:
Linux linuxdersleri 5.15.0-kali3-amd64 #1 SMP Debian 5.15.15-2kali1 (2022-01-31) x86_64

The programs included with the Kali GNU/Linux system are free software;
the exact distribution terms for each program are described in the
individual files in /usr/share/doc/*/copyright.

Kali GNU/Linux comes with ABSOLUTELY NO WARRANTY, to the extent
permitted by applicable law.
Last login: Mon Aug 21 02:52:28 2023
┌──(taylan㉿linuxdersleri)-[~]
└─$
```

Parolamı doğru yazdığım için Linux sunucusu üzerindeki taylan kullanıcı hesabında Windows powershell üzerinden oturum açmış oldum. Teyit etmek için `whoami` komutunu girebiliriz.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ whoami
taylan
```

Gördüğünüz gibi “taylan” çıktısını aldım yani taylan kullanıcı hesabında oturum açtığımı bir kez daha teyit etmiş oldum. 

Artık böylelikle Windows üzerinden güvenli şekilde Linux makinemi kontrol edebilirim. Aramızdaki tüm bağlantı şifrelendiği için veri trafiğini izleyen hiç kimse trafiği analiz etme noktasında güvenlik riski oluşturamaz. 

İşte bu yöntem sayesinde fiziksel olarak yanında olmamıza gerek kalmadan sunuculularımızı uzaktan herhangi bir cihaz ile yönetebiliyoruz. Örneğin telefonunuz üzerinden de sunucunuza SSH bağlantısı gerçekleştirebilirsiniz. 

Sunucuda işiniz bittiğinde `exit` komutu ile mevcut kabuğu kapatmak suretiyle ssh bağlantısını sonlandırabilirsiniz. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ exit
logout
Connection to 192.168.1.11 closed.
```

SSH bağlantısının en temel kullanımı bu şekilde. SSH konusunda anahtar yönetimi ve güvenlik sıkılaştırmaları gibi ek detaylar mevcut fakat temel eğitim için ele aldığımız bilgiler yeterli. 

Pek çok araç SSH sayesinde güvenli şekilde işlevlerini yerine getirebiliyor. Yani ssh kullanımı yalnızca burada ele aldığımız şekilde karşımıza çıkmıyor. Örneğin sunucular arasında güvenli şekilde dosya kopyalamak üzere ssh protokolünden yararlanan `scp` aracını kullanabiliyoruz.

# scp

`scp` , “**S**ecure **C**opy **P**rotocol” ifadesinin kısaltmasından gelen ve dosyaları güvenli bir şekilde SSH (Secure Shell) üzerinden kopyalamak için kullanılan bir araçtır. Ben denemek için Debian tabanlı bir dağıtım olan Kali Linux üzerinden, Redhat tabanlı Rocky Linux dağıtımına bir dosya göndereceğim.

Bunun için öncelikle Rocky Linux dağıtımının lokal ağdaki ip adresini öğrenmek üzere `ip a` komutunu giriyorum.

```bash
[pc@linuxdersleri ~]$ ip a
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host 
       valid_lft forever preferred_lft forever
2: enp0s3: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UP group default qlen 1000
    link/ether 08:00:27:ce:11:be brd ff:ff:ff:ff:ff:ff
    inet 192.168.1.12/24 brd 192.168.1.255 scope global dynamic noprefixroute enp0s3
       valid_lft 85961sec preferred_lft 85961sec
    inet6 fe80::a00:27ff:fece:11be/64 scope link noprefixroute 
       valid_lft forever preferred_lft forever
[pc@linuxdersleri ~]$
```

IP adresini öğrendim. 

SSH servisinin aktif olup olmadığını da kontrol edelim. Zira bağlanacağımız Rocky Linux sisteminde ssh aktif olmazsa iletişim kurmamız mümkün olmaz. ssh servisi, Redhat üzerinde “**sshd**” olarak geçiyor.

```bash
[pc@linuxdersleri ~]$ systemctl status sshd.service 
● sshd.service - OpenSSH server daemon
     Loaded: loaded (/usr/lib/systemd/system/sshd.service; enabled; vendor preset: enabled)
     Active: active (running) since Tue 2023-08-22 19:26:40 +03; 2min 26s ago
       Docs: man:sshd(8)
             man:sshd_config(5)
   Main PID: 864 (sshd)
      Tasks: 1 (limit: 23069)
     Memory: 3.1M
        CPU: 37ms
     CGroup: /system.slice/sshd.service
             └─864 "sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 startups"
[pc@linuxdersleri ~]$
```

SSH servisi de aktif olduğuna göre son olarak göndermek istediğim dosyayı Kali Linux üzerinde oluşturmak istiyorum.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ echo "ben kali linux" > kali-linux.txt

┌──(taylan㉿linuxdersleri3)-[~]
└─$ cat kali-linux.txt                                                                                                                                     
ben kali linux
```

Tamamdır, şimdi `scp gönderilecek-dosya kullanıcı-adı@ip:hedef-dosya-yolu` şeklinde komutumuzu girebiliriz. Ben mevcut bulunduğum dizindeki “***kali-linux.txt***” dosyasını, Rocky Linux sistemindeki ***/home/pc/Desktop/*** dizinine göndereceğim.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ scp ./kali-linux.txt pc@192.168.1.12:/home/pc/Desktop/kaliden-gelen.txt                                                                               
The authenticity of host '192.168.1.12 (192.168.1.12)' can't be established.
ED25519 key fingerprint is SHA256:wkc7gaEfQ4X72cDnzhTSg5TX/OsYaeRJCLvLx26HdyA.
This key is not known by any other names
Are you sure you want to continue connecting (yes/no/[fingerprint])?
```

Bağlantı sağlayacağım makinenin şifreleme anahtarı, mevcut makinede kayıtlı olmadığı için bu anahtara güvenilsin mi diye soruluyor. Ben “yes” ile onaylıyorum.

```bash
pc@192.168.1.12's password: 
kali-linux.txt             100%   15     1.3KB/s   00:00
```

Hedefteki kullanıcı hesabının parolasını doğru girdiğim için gördüğünüz gibi ilgili dosya hedefteki makineye taşınmış oldu. Teyit etmek için Rocky Linux üzerinden bu dosyayı okumayı deneyebiliriz. 

```bash
[pc@linuxdersleri ~]$ cat ~/Desktop/kaliden-gelen.txt 
ben kali linux
```

Bakın dosya güvenli şekilde hedefe taşınmış oldu. Bu yaklaşımı dilediğiniz dosya türü ve boyutunda uygulayabilirsiniz. 

Ayrıca mevcut makinden hedef makineye gönderilebileceği gibi, hedefteki makineden mevcut makineye de dosya çekilebilir.

Denemek üzere öncelikle Rocky Linux üzerinde bir dosya oluşturalım.

```bash
[pc@linuxdersleri ~]$ echo "ben rocky linux" > rocky-linux.txt
[pc@linuxdersleri ~]$ cat rocky-linux.txt 
ben rocky linux
[pc@linuxdersleri ~]$ pwd
/home/pc
```

Tamamdır, şimdi bu dosyayı Kali Linux sistemine çekmek üzere komutumuzu girelim. Bunun için; hedefteki kullanıcı adı ve ip adresiyle birlikte hangi dosya alınacaksa tam olarak o dosyanın konumu belirtilir. Ve bu dosyanın mevcut makinede hangi dizine kopyalanacağı da tam dizin yolu olarak belirtilir.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ scp pc@192.168.1.12:/home/pc/rocky-linux.txt /home/taylan/rocky-linuxtan-gelen.txt
pc@192.168.1.12's password: 
rocky-linux.txt                                                                                                          100%   16     4.1KB/s   00:00    

┌──(taylan㉿linuxdersleri)-[~]
└─$ cat /home/taylan/rocky-linuxtan-gelen.txt 
ben rocky linux
```

Gördüğünüz gibi mevcut makineye, hedef makineden dosya çekmeyi başarmış olduk.

# wget

`wget`, “**w**eb **get**” ifadesinin kısaltmasından gelen, URL üzerinden dosya indirmeyi mümkün kulan bir araçtır. Ben örnek olması için Linux Dersleri dokümantasyon kaynağı olan Github reposundaki ***README*** dosyasını bilgisayarıma indirmek istiyorum. Bunun için `wget` komutundan sonra indirmek istediğim dosyayı barındıran URL adresini eklemem yeterli.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ wget https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/README.md                                                                    
--2023-08-22 13:18:30--  https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/README.md
Resolving raw.githubusercontent.com (raw.githubusercontent.com)... 185.199.108.133, 185.199.110.133, 185.199.109.133, ...
Connecting to raw.githubusercontent.com (raw.githubusercontent.com)|185.199.108.133|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 9929 (9.7K) [text/plain]
Saving to: ‘README.md’

README.md                              100%[===========================================================================>]   9.70K  --.-KB/s    in 0.002s  

2023-08-22 13:18:30 (4.89 MB/s) - ‘README.md’ saved [9929/9929]

┌──(taylan㉿linuxdersleri)-[~]
└─$ cat README.md 
# Doküman Hakkında
<img align="left" width="250" height="140" src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/Ana%20Sayfa/linux-logo.webp">Buradaki doküman videolu eğitim olarak ele aldığımız [Kali Linux ile Sıfırdan Temel Linux Eğitimi](https://www.udemy.com/course/kali-linux-ile-sifirdan-temel-linux-egitimi/?referralCode=04ABD09E6ED5DA93F7A2)'nin komut satırı dersleri dokümantasyon kaynağıdır. Bu eğitim serisi, Linux sistemlerini nasıl yönetebileceğimizi sıfırdan başlayarak sıralı şekilde ele aldığımız temel konu anlatımlarından oluşturulmuştur. Müfredat ve daha fazla bilgi için aşağıdaki bilgileri gözden geçirebilirsiniz.
```

Herhangi bir ek seçenek kullanmadığımızda ilgili dosya, çalışmakta olduğumuz mevcut dizine aynı isimle indiriliyor gördüğünüz gibi. Eğer dosyayı farklı bir isimle veya farklı bir dizine kaydetmek istersek `-O` seçeneğini kullanabiliyoruz. Zaten “**o**utput” ifadesinin kısaltmasından geldiği için kolay hatırlanması olası. Ben denemek için aynı dosyayı bu kez “***OKUBENI***” ismi ile ***/home/taylan/Documents/*** dizini altına indirmek istiyorum. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ wget https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/README.md -O /home/taylan/Documents/OKUBENI
--2023-08-22 13:27:49--  https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/README.md
Resolving raw.githubusercontent.com (raw.githubusercontent.com)... 185.199.109.133, 185.199.108.133, 185.199.111.133, ...
Connecting to raw.githubusercontent.com (raw.githubusercontent.com)|185.199.109.133|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 9929 (9.7K) [text/plain]
Saving to: ‘/home/taylan/Documents/OKUBENI’

/home/taylan/Documents/OKUBENI         100%[===========================================================================>]   9.70K  --.-KB/s    in 0.001s  

2023-08-22 13:27:54 (7.49 MB/s) - ‘/home/taylan/Documents/OKUBENI’ saved [9929/9929]

┌──(taylan㉿linuxdersleri)-[~]
└─$ cat /home/taylan/Documents/OKUBENI 
# Doküman Hakkında
<img align="left" width="250" height="140" src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/Ana%20Sayfa/linux-logo.webp">Buradaki doküman videolu eğitim olarak ele aldığımız [Kali Linux ile Sıfırdan Temel Linux Eğitimi](https://www.udemy.com/course/kali-linux-ile-sifirdan-temel-linux-egitimi/?referralCode=04ABD09E6ED5DA93F7A2)'nin komut satırı dersleri dokümantasyon kaynağıdır. Bu eğitim serisi, Linux sistemlerini nasıl yönetebileceğimizi sıfırdan başlayarak sıralı şekilde ele aldığımız temel konu anlatımlarından oluşturulmuştur. Müfredat ve daha fazla bilgi için aşağıdaki bilgileri gözden geçirebilirsiniz.
```

Tam olarak istediğim dizine istediğim isimde kaydedilmiş oldu. 

`wget —help` komutunun çıktılarına göz atarak bizzat görebileceğiniz gibi `wget` aracının pek çok ek  seçeneği mevcut. Fakat tek tek hepsine değinmemiz gerekmiyor. Zira ihtiyaç duydukça zaten yardım sayfasına göz atıyor olacaksınız. Örneğin toplu şekilde dosya indirmek istediğinizde bu dosyaların linklerini bir dosya içinde toplayıp, bu dosyayı `wget` aracına `-i` seçeneği ile “**i**nput” yani girdi olarak verebilirsiniz. Ben denemek için alt alta birden fazla URL barındıran bir input dosyası oluşturuyorum.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ cat > indirilecekler.txt
https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/dok%C3%BCmantasyonlar/linux_nedir.md
https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/dok%C3%BCmantasyonlar/Linux_dosya_sistemi_hiyerar%C5%9Fisi.md
https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/4%20-Linux%20Dosya%20Sistemi%20Hiyerar%C5%9Fisi/1.webp
https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/4%20-Linux%20Dosya%20Sistemi%20Hiyerar%C5%9Fisi/4.gif
https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/4%20-Linux%20Dosya%20Sistemi%20Hiyerar%C5%9Fisi/5.webp
```

Şimdi bu dosyaları tek seferde indirmek üzere `wget -i indirilecekler.txt` şeklinde komutumu girmem yeterli. Eğer harici bir dizin belirtmezsem mevcut bulunduğumuz dizin altına indirileceklerini biliyorsunuz. Ben ***Documents*** dizini altına indirilmesini istediğim için komutuma bir de `-P` seçeneğini de ekliyorum. `P` seçeneği hedef dizini belirtmeyi sağlayan bir seçenek. `-O` seçeneği tek bir dosyanın ismini belirtmeyi sağlarken, `-P` seçeneği sayesinde kaydedilecek dizini belirtebiliyoruz.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ wget -i indirilecekler.txt -P ~/Documents/
--2023-08-22 13:43:37--  https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/dok%C3%BCmantasyonlar/linux_nedir.md
Resolving raw.githubusercontent.com (raw.githubusercontent.com)... 185.199.108.133, 185.199.110.133, 185.199.111.133, ...
Connecting to raw.githubusercontent.com (raw.githubusercontent.com)|185.199.108.133|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 30950 (30K) [text/plain]
Saving to: ‘/home/taylan/Documents/linux_nedir.md’

linux_nedir.md                         100%[===========================================================================>]  30.22K  --.-KB/s    in 0s      

2023-08-22 13:43:41 (124 MB/s) - ‘/home/taylan/Documents/linux_nedir.md’ saved [30950/30950]

--2023-08-22 13:43:41--  https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/dok%C3%BCmantasyonlar/Linux_dosya_sistemi_hiyerar%C5%9Fisi.md
Reusing existing connection to raw.githubusercontent.com:443.
HTTP request sent, awaiting response... 200 OK
Length: 20984 (20K) [text/plain]
Saving to: ‘/home/taylan/Documents/Linux_dosya_sistemi_hiyerarşisi.md’

Linux_dosya_sistemi_hiyerarşisi.md     100%[===========================================================================>]  20.49K  --.-KB/s    in 0.004s  

2023-08-22 13:43:41 (4.67 MB/s) - ‘/home/taylan/Documents/Linux_dosya_sistemi_hiyerarşisi.md’ saved [20984/20984]

--2023-08-22 13:43:41--  https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/4%20-Linux%20Dosya%20Sistemi%20Hiyerar%C5%9Fisi/1.webp
Reusing existing connection to raw.githubusercontent.com:443.
HTTP request sent, awaiting response... 200 OK
Length: 106442 (104K) [image/png]
Saving to: ‘/home/taylan/Documents/1.webp’

1.webp                                  100%[===========================================================================>] 103.95K  --.-KB/s    in 0.03s   

2023-08-22 13:43:41 (3.75 MB/s) - ‘/home/taylan/Documents/1.webp’ saved [106442/106442]

--2023-08-22 13:43:41--  https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/4%20-Linux%20Dosya%20Sistemi%20Hiyerar%C5%9Fisi/4.gif
Reusing existing connection to raw.githubusercontent.com:443.
HTTP request sent, awaiting response... 200 OK
Length: 448808 (438K) [image/gif]
Saving to: ‘/home/taylan/Documents/4.gif’

4.gif                                  100%[===========================================================================>] 438.29K  --.-KB/s    in 0.09s   

2023-08-22 13:43:42 (4.57 MB/s) - ‘/home/taylan/Documents/4.gif’ saved [448808/448808]

--2023-08-22 13:43:42--  https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/4%20-Linux%20Dosya%20Sistemi%20Hiyerar%C5%9Fisi/5.webp
Reusing existing connection to raw.githubusercontent.com:443.
HTTP request sent, awaiting response... 200 OK
Length: 56666 (55K) [image/png]
Saving to: ‘/home/taylan/Documents/5.webp’

5.webp                                  100%[===========================================================================>]  55.34K  --.-KB/s    in 0.01s   

2023-08-22 13:43:42 (5.23 MB/s) - ‘/home/taylan/Documents/5.webp’ saved [56666/56666]

FINISHED --2023-08-22 13:43:42--
Total wall clock time: 5.4s
Downloaded: 5 files, 648K in 0.1s (4.67 MB/s)

┌──(taylan㉿linuxdersleri)-[~]
└─$ ls ~/Documents/
1.webp  4.gif  5.webp  linux-dersleri  Linux_dosya_sistemi_hiyerarşisi.md  linux_nedir.md  OKUBENI
```

İşte toplu dosya indirme işlemi de bu şekilde. Temel kullanım için `wget` aracının bu kadarlık seçeneğini bilmek de gayet yeterli. Yine de dilerseniz `wget` aracının diğer seçenekleri için yardım sayfasına göz atabilirsiniz. 

# DNS Hakkında

Biz özellikle aksini belirtmediğimiz sürece DNS sorguları için router görevini üstelenmiş olan modem cihazının ip adresi kullanılıyor. Bu sayede internet servis sağlayıcısının sunduğu DNS hizmeti vasıtası ile domain adreslerinin ardındaki ip adreslerini öğrenebiliyoruz. Öncelikle bu durumu teyit etmek üzere `nslookup` komutu ile herhangi bir domain için adres çözümlemeyi deneyelim. `nslookup` aracı, ilgili domain adresinin hangi ip adresine işaret ettiğinin bilgisini verirken, bu bilginin hangi DNS sunucusu sayesine alındığını da belirtiyor. Bu sayede mevcut sistemdeki DNS konfigürasyonunu tespit edebiliyoruz. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ nslookup www.google.com
Server:         192.168.1.1
Address:        192.168.1.1#53

Non-authoritative answer:
Name:   www.google.com
Address: 142.251.140.4
Name:   www.google.com
Address: 2a00:1450:4017:80f::2004
```

Gördüğünüz gibi www.google.com adresinin ip adresi çözümlenmiş oldu. Çıktıların başında, bu sorgunun 192.168.1.1 adresindeki DNS hizmeti sayesinde gerçekleştirilmiş olduğunu da görebiliyoruz. Yani DNS hizmetinin de aslında bizim “default getway” olarak kullanılan modemimiz tarafından sağlandığını görmüş olduk. Default getway adresinizi teyit etmek isterseniz `ip route` komutunu girebileceğinizi biliyorsunuz. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ ip route
default via 192.168.1.1 dev eth0 proto dhcp metric 100 
192.168.1.0/24 dev eth0 proto kernel scope link src 192.168.1.11 metric 100
```

Bakın burada “**default via 192.168.1.1 dev eth0**” yazıyor. Yani benim eth0 arayüzümün varsayılan ağ geçidi **192.168.1.1** adresi olarak gözüküyor.

Eğer siz internet servis sağlayıcınızın veya routerınızın DNS hizmetini kullanmak istemiyorsanız, özel DNS adresleri de belirtebilirsiniz. Ben denemek için 8.8.8.8 adresini yeni DNS adresim olarak tanımlamak istiyorum. DNS sorgusu ***/etc/resolv.conf*** dosyasında belirtilen adrese göre gerçekleştiriliyor. Bu sebeple bu dosyada düzenleme yapmamız gerek. Buradaki “**resolv**” ifadesi de zaten “**çözümleme**” anlamına geliyor. Dolayısıyla domain adresi çözümleme işlevi için kullanıldığını anımsamak zor değil. Öncelikle dosyamızın içeriğine bir göz atalım.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ cat /etc/resolv.conf 
# Generated by NetworkManager
search Home
nameserver 192.168.1.1
```

Bakın “nameserver” yani DNS adresi olarak default getway yani router adresim bulunuyor. Ben bunun yerine 8.8.8.8 adresini eklemek için nano ile bu dosyayı açıp düzenleyeceğim. Elbette yetki gerektiren bir işlem olduğu için komutumu `sudo nano /etc/resolv.conf` şeklinde girmem gerek.

```bash
GNU nano 6.0                        /etc/resolv.conf      
# Generated by NetworkManager
search Home
nameserver 8.8.8.8
```

Değişikliğin geçerli olabilmesi için bu çözümleme servisini yeniden başlatmam gerek. Bunun için `systemctl restart systemd-resolved.service` komutunu giriyorum. Ve test etmek için yine www.google.com adresini `nslookup` aracına çözümletiyorum.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ nslookup www.google.com                                                                                                                                 
Server:         8.8.8.8
Address:        8.8.8.8#53

Non-authoritative answer:
Name:   www.google.com
Address: 142.250.184.132
Name:   www.google.com
Address: 2a00:1450:4017:80c::2004
```

Bakın bu kez “8.8.8.8” adresine sorularak, www.google.com domain adresinin ip adresi bulunmuş oldu. Yani DNS değiştirme işlemimiz başarı ile sonuçlanmış oldu.

Ben örnek sırasında tek bir DNS adresi belirttim fakat, birinde bulunamadığında diğerine sorulabilmesi için dilerseniz sırasıyla alt alta birden fazla DNS adresini ***/etc/resolv.conf*** dosyasına ekleyebilirsiniz. 

```bash
┌──(taylan㉿kali-makinesi)-[~]
└─$ cat /etc/resolv.conf                                                                                                                                     
# Generated by NetworkManager
search linuxdersleri.net

nameserver 8.8.8.8
nameserver 8.8.4.4
```

## hostname

Ağ üzerinde ip alabilen cihazlara host denildiğini biliyorsunuzdur. “**hostname**” ifadesi de, lokal ağımızdaki cihazların birbirinden ayrıt edilebilmesini sağlayan isimlendirmedir. Bu isimler sayesine lokal ağdaki cihazların ip adresini hatırlamaya gerek kalmadan doğrudan hostname bilgisi ile, ilgili cihazla iletişime geçebiliyoruz. 

Öncelikle mevcut cihazımızın ağ üzerindeki ismini öğrenmek üzere `hostnamctl` komutunu girebiliriz. 

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ hostnamectl                                                                                                                                             
 Static hostname: linuxdersleri
       Icon name: computer-vm
         Chassis: vm 🖴
      Machine ID: 2f7f9cc088b74a54aaee8cfbc587c6ea
         Boot ID: 93aec4d830474a919b87cfa774110091
  Virtualization: oracle
Operating System: Kali GNU/Linux Rolling
          Kernel: Linux 5.15.0-kali3-amd64
    Architecture: x86-64
 Hardware Vendor: innotek GmbH
  Hardware Model: VirtualBox
```

Gördüğünüz gibi yönetmekte olduğum Kali Linux sisteminin ağ üzerindeki ismi “linuxdersleri” olarak geçiyor. Dilersem bu ismi yeni bir hostname ile değiştirmem mümkün. Bunun için tek yapmam gereken `hostnamctl hostname yeni-hostname` şeklinde komutumu girmek. Ben denemek için ismi “kali-makinesi” olarak değiştiriyorum.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ hostnamectl hostname kali-makinesi                                                                                                                      

┌──(taylan㉿linuxdersleri)-[~]
└─$ hostnamectl 
 Static hostname: kali-makinesi
       Icon name: computer-vm
         Chassis: vm 🖴
      Machine ID: 2f7f9cc088b74a54aaee8cfbc587c6ea
         Boot ID: 93aec4d830474a919b87cfa774110091
  Virtualization: oracle
Operating System: Kali GNU/Linux Rolling
          Kernel: Linux 5.15.0-kali3-amd64
    Architecture: x86-64
 Hardware Vendor: innotek GmbH
  Hardware Model: VirtualBox
```

hostname bilgisi değişti gördüğünüz gibi fakat ek olarak ***/etc/hosts*** dosyasına da bu değişimi eklememiz gerekiyor. Çünkü ***/etc/hosts*** dosyası yerel olarak adres çözümlemesi sağlayan bir konfigürasyon dosyası. Bu dosyada, bizim kendi makinemizi temsil eden 127.0.1.1 lokal ip adresi bizim hostname adresimiz ile eşleştirilmiş durumda. Bu sayede hostname üzerinden doğrudan makinemizin ip adresi temsil edilmiş oluyor. Bu hostname bilgisini sistem üzerinde pek çok yapı kullandığı için de ***/etc/hosts*** dosyasını düzenlemeden sistemi sorunsuzca kullanmamız mümkün değil. Hemen dosya içeriğine göz atalım.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ cat /etc/hosts                                                                                                                                          
127.0.0.1       localhost
127.0.1.1       linuxdersleri

# The following lines are desirable for IPv6 capable hosts
::1     localhost ip6-localhost ip6-loopback
ff02::1 ip6-allnodes
ff02::2 ip6-allrouters
```

Gördüğünüz gibi eski hostname bilgisi hala makinenin kendisini temsil eden 127.0.1.1 adresine yönlendiriliyor. Bu adresi düzeltmek için `sudo nano /etc/hosts` komutu ile dosyamızı açıp, yeni hostname bilgimizi buraya ekleyelim.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ sudo nano /etc/host
sudo: unable to resolve host kali-makinesi: Name or service not known
sudo: error initializing audit plugin sudoers_audit
```

Eklemek üzere dosyamızı açmak istedik fakat `sudo` komutu “kali-makinesi” hostname bilgisini tanımadığını belirterek işleme onay vermedi. İşte tam da bu sebeple ***/etc/hosts*** dosyasını düzenlememiz gerek diyoruz. Aksi halde hostname bilgisi ile işlem yapan araçlar çalışamaz hale gelecekler. Ben dosyayı düzenlemek için root kullanıcı hesabına geçiş yapıp ilgili değişimi gerçekleştireceğim. 

```bash
┌──(root㉿kali-makinesi)-[~]
└─# nano /etc/hosts
                                                                                                                                                            
┌──(root㉿kali-makinesi)-[~]
└─# exit
```

Normalde hostname değiştirilmeden önce ***/etc/hosts*** dosyasında bu değişimin belirtilmesi daha doğru bir yaklaşım olacaktır. Fakat ben önemini bizzat görmeniz için bu şekilde yanlış yoldan uygulamaya gittim. 

Tamamdır artık böylelikle mevcut makinemin hostname bilgisini değiştirmiş oldum.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ cat /etc/hosts                                                                                                                                          
127.0.0.1       localhost
127.0.1.1       kali-makinesi

# The following lines are desirable for IPv6 capable hosts
::1     localhost ip6-localhost ip6-loopback
ff02::1 ip6-allnodes
ff02::2 ip6-allrouters

┌──(taylan㉿linuxdersleri)-[~]
└─$ hostnamectl 
 Static hostname: kali-makinesi
       Icon name: computer-vm
         Chassis: vm 🖴
      Machine ID: 2f7f9cc088b74a54aaee8cfbc587c6ea
         Boot ID: 93aec4d830474a919b87cfa774110091
  Virtualization: oracle
Operating System: Kali GNU/Linux Rolling
          Kernel: Linux 5.15.0-kali3-amd64
    Architecture: x86-64
 Hardware Vendor: innotek GmbH
  Hardware Model: VirtualBox
```

Konsoldaki prompt alanında hala “linuxdersleri” gözüküyor fakat yeni bir konsol ya da kabuk başlattığınızda bu da değişmiş olacak. 

## domainname

Ağ üzerinde birden fazla sunucu mevcutsa bu sunucuları birbirinden ayırmak için hostname bilgisi kullanılıyor. hostname bilgisine ek olarak bu sunucuların aynı ağda olduğunun temsili için domain adresi de tanımlanabiliyor. Örneğin [linuxdersleri.net](http://linuxdersleri.net) adresi için kullanılan bir web sunucusunun hostname bilgisi “web” olabilir. Ayrıca varsa email sunucusu da “email” hostname ile tanımlanmış olabilir. Bu sayede linuxdersleri.net domain adresi altında hangi amaçla hangi sunucunun kullandığını, ip adreslerini hatırlamamıza gerek kalmadan takip edebiliriz. 

hostname ve domain name bilgisinin bir arada bulunduğu bu tanımlamaya da **FQDN** (**f**ully **q**ualified **d**omain **n**ame) deniyor. Gösterimi de **hostname.domainname** şeklinde aralarındaki tek bir nokta ile ayrılmış isimlerden ibaret. 

Ben daha açık bir örnek olması için mevcut “kali-makinesi” hostname adresine sahip cihazın domain adresi olarak linuxdersleri.net adresini almasını istiyorum. Bunun için öncelikle ***/etc/hosts*** dosyasında değişiklik yapmak üzere `sudo nano /etc/hosts` komutunu girip tam alan adını(**FQDN)** tanımlıyorum. Değişiklikleri `cat` komutu ile teyit edebiliriz. 

```bash
┌──(taylan㉿kali-makinesi)-[~]
└─$ cat /etc/hosts
127.0.0.1       localhost
127.0.1.1       kali-makinesi.linuxdersleri.net

# The following lines are desirable for IPv6 capable hosts
::1     localhost ip6-localhost ip6-loopback
ff02::1 ip6-allnodes
ff02::2 ip6-allrouters
```

Şimdi sistem üzerindeki hostname ve domainame bilgisini tanımlamak üzere `hostnamectl hostname kali-makinesi.linuxdersleri.net` şeklinde komutumu giriyorum.

```bash
┌──(taylan㉿kali-makinesi)-[~]
└─$ hostnamectl hostname kali-makinesi.linuxdersleri.net

┌──(taylan㉿kali-makinesi)-[~]
└─$ hostnamectl 
 Static hostname: kali-makinesi.linuxdersleri.net
       Icon name: computer-vm
         Chassis: vm 🖴                                                                                                                                     
      Machine ID: 2f7f9cc088b74a54aaee8cfbc587c6ea                                                                                                         
         Boot ID: 2c2115508125496eaa8692e6325cf58a                                                                                                         
  Virtualization: oracle                                                                                                                                   
Operating System: Kali GNU/Linux Rolling                                                                                                                   
          Kernel: Linux 5.15.0-kali3-amd64                                                                                                                 
    Architecture: x86-64                                                                                                                                   
 Hardware Vendor: innotek GmbH                                                                                                                             
  Hardware Model: VirtualBox
```

Gördüğünüz gibi hostname bilgisi değiştirilmiş oldu. İlk noktadan önceki kısım hostname, daha sonrası domain name olarak geçiyor. Dilerseniz, `dnsdomainname` komutu ile bu durumu kendiniz de teyit edebilirsiniz. 

```bash
┌──(taylan㉿kali-makinesi)-[~]
└─$ dnsdomainname                                                                                                                                          
linuxdersleri.net
```

Böylelikle lokal ağdaki hostname “kali-makinesi” olurken, domain bilgisi de “linuxdersleri.net” oldu. Eğer lokal ağımda birden fazla sunucu varsa her birine benzer şekilde aynı domain bilgisine ek olarak özel bir hostname tanımlayabilirim. Bu sayede DNS sunucusu da bu adresleri tanıyorsa, ilgili ip adresini bilmeme gerek kalmadan ilgili sunucuyu bulabilirim. 

![hostname-domainname.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/network/hostname-domainname.webp)

Yani tıpkı bizim websitelerini ziyaret etmek için DNS yardımıyla, domain adresini ip adresine dönüştürüyor olmamız gibidir. Fakat bu işlem lokal ağdaki cihazları birbirinden ayırt etmek ve isimleri üzerinden kolayca onlara ulaşabilmek için kullanılıyor. Örneğin yukarıdaki gibi bir ağda, kali-makinem isimli host, mail hostu ile iletişime geçmek istediğinde [mail.linuxdersleri.net](http://mail.linuxdersleri.net) adresinin ip adresini ağdaki DNS sunucusuna sorar. 

![DNS-request.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/network/DNS-request.webp)

DNS sunucusu ise, eğer bu adres kendi tablosunda kayıtlı ile ilgili ip adresini yanıt olarak gönderir.

![DNS-response.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/network/DNS-response.webp)

Bu sayede doğrudan ip adresini bilmemize gerek kalmadan lokal ağdaki tüm hostlar ile, hostname bilgisi üzerinden iletişim kurabiliriz.

Bu yaklaşımın kullanılabilmesi için elbette lokal ağdaki cihazların ortak olarak aynı DNS hizmetini kullanıyor olması ve bu DNS hizmetinin de bu hostname ve ip adreslerini biliyor olması gerek. Bunun için dilerseniz routerınız üzerinden konfigürasyon tanımlayabilir ya da DNS için harici olarak bir sunucu kurabilirsiniz. Bu sayede bu DNS hizmetine sorgu yollayan tüm lokal ağdaki cihazlar, birbirilerinin ip ve hostname bilgilerine de kolayca erişmiş olur. Hatta eğer birbirine bağlı birden fazla ağ bulunuyorsa bu ağlardaki cihazlar ile iletişime geçmek üzere de benzer yaklaşım kullanılır. 

![DNS-multi-network.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/network/DNS-multi-network.webp)

İşte hostname sayesinde ağ içindeki cihazları birbirinden ayırmak mümkün iken, domain sayesinde de gerektiğinde ağları birbirinden ayırt etmemiz mümkün oluyor. Bu sayede ip adreslerini doğrudan bilmeye gerek kalmadan kısayoldan ilgili cihazı ayırt etmemiz mümkün oluyor.

Biz bu temel eğitimde DNS sunucusunun nasıl kurulacağını ele almayacağız. Çünkü bu eğitimin amacı herkes için temel Linux bilgisi sağlamak. Fakat merak ediyorsanız kısa bir araştırma ile öğrenebilirsiniz. Burada önemli olan hostname ve domain bilgisinin neden kullanıldığını anlayabilmek. 

## /etc/hosts

***/etc/hosts*** , sistemimizdeki lokal DNS görevini üstlenen bir konfigürasyon dosyasıdır. hostname değişimi sırasında bu dosyadan bahsetmiştik. Şimdi ayrıca ele alarak biraz daha anlamlı hale getirebiliriz. 

***/etc/hosts*** dosyasının temel amacı, IP adreslerini doğrudan host isimleriyle eşleştirmektir. Bu sayede harici bir DNS sorgusuna gerek kalmadan yerel olarak IP çözümlemesi sağlanabilir. Bu yaklaşım, özellikle ağdaki cihazlar arasındaki iletişimde veya belirli servislere erişimde IP adreslerini belirlemek amacıyla kullanılabiliyor. Örneğin lokal ağımızdaki hostların isimleri ile ip adreslerini bu listeleye ekleyerek, yalnızca hostname bilgileri sayesinde ilgili hostlar ile kolayca iletişim kurabiliriz. 

Ben denemek için lokal ağımdaki Windows ve Rocky Linux sistemlerinin ip adreslerinin hostname bilgisini, `nano` yardımıyla ***/etc/hosts*** dosyasına ekliyorum.

```bash
GNU nano 6.0                                           /etc/hosts *                                                  
127.0.0.1       localhost
127.0.1.1       kali-makinesi.linuxdersleri.net
192.168.1.2     windows
192.168.1.12    rocky-linux

# The following lines are desirable for IPv6 capable hosts
::1     localhost ip6-localhost ip6-loopback
ff02::1 ip6-allnodes
ff02::2 ip6-allrouters
```

Şimdi değişimi test etmek için örneğin hostname bilgisi üzerinden ilgili hostlara `ping` ile kontrol paketleri gönderebiliriz.

```bash
┌──(taylan㉿kali-makinesi)-[~]
└─$ ping windows                                                                                                       
PING windows (192.168.1.2) 56(84) bytes of data.
64 bytes from windows (192.168.1.2): icmp_seq=1 ttl=128 time=0.478 ms
64 bytes from windows (192.168.1.2): icmp_seq=2 ttl=128 time=0.518 ms
64 bytes from windows (192.168.1.2): icmp_seq=3 ttl=128 time=0.486 ms
^C
--- windows ping statistics ---
3 packets transmitted, 3 received, 0% packet loss, time 2054ms
rtt min/avg/max/mdev = 0.478/0.494/0.518/0.017 ms

┌──(taylan㉿kali-makinesi)-[~]
└─$ ping rocky-linux                                                                                                   
PING rocky-linux (192.168.1.12) 56(84) bytes of data.
64 bytes from rocky-linux (192.168.1.12): icmp_seq=1 ttl=64 time=2.72 ms
64 bytes from rocky-linux (192.168.1.12): icmp_seq=2 ttl=64 time=0.967 ms
64 bytes from rocky-linux (192.168.1.12): icmp_seq=3 ttl=64 time=0.831 ms
^C
--- rocky-linux ping statistics ---
3 packets transmitted, 3 received, 0% packet loss, time 2026ms
rtt min/avg/max/mdev = 0.831/1.506/2.722/0.861 ms
```

Gördüğünüz gibi ***/etc/hosts*** dosyasına eklemiş olduğum “hostname ip” eşleşmesi sayesinde, ben hostname yazdığımda bu hostname ip adresine çözümlenip ilgili ip adresi üzerinden işlem gerçekleştiriliyor. 

Yani harici olarak DNS hizmetine sorulmadan önce sistem kendi içinde bu sorguyu gerçekleştirildiği için, lokal olarak dilediğim ip için dilediğim hostname veya domain bilgisi ekleyebiliyorum. 

Örneğin spesifik domain veya hostname adresini engellemek istersem bu dosya üzerinden geçersiz bir ip adresi ile tanımlayabilirim. Ben denemek için google.com adresini 127.0.0.1 adresi ile eşleştiriyorum. 

```bash
┌──(taylan㉿kali-makinesi)-[~]
└─$ cat /etc/hosts                                                                                                     
127.0.0.1       localhost
127.0.1.1       kali-makinesi.linuxdersleri.net
192.168.1.2     windows
192.168.1.12    rocky-linux
127.0.0.1       google.com
```

Bu sayede ben google.com domain bilgisini talep ettiğimde bana 127.0.0.1 adresi döndürüleceği için bu domainin arkasındaki gerçek ip ile iletişime geçemeyeceğim. Dolayısıyla ilgili domain adresinin çözümlenmesini de engellemiş olacağım. Bu noktada kullanıcı yalnızca doğrudan ilgili domain arkasındaki ip adresini tam olarak girerek iletişim kurabilir.

Denemek için google.com adresine ping gönderelim.

```bash
┌──(taylan㉿kali-makinesi)-[~]
└─$ ping google.com
PING google.com (127.0.0.1) 56(84) bytes of data.
64 bytes from localhost (127.0.0.1): icmp_seq=1 ttl=64 time=0.018 ms
64 bytes from localhost (127.0.0.1): icmp_seq=2 ttl=64 time=0.031 ms
^C
--- google.com ping statistics ---
2 packets transmitted, 2 received, 0% packet loss, time 1012ms
rtt min/avg/max/mdev = 0.018/0.024/0.031/0.006 ms
```

Gördüğünüz gibi google.com adresi, localhost adresi olan 127.0.0.1 adresine işaret ediyor. Dolayısıyla gerçek adres ile iletişim kuramıyorum. 

Yani neticede ***/etc/hosts*** dosyası lokal DNS görevi gören bir konfigürasyon dosyasıdır. Harici DNS hizmetine gidilmeden önce her seferinde işletim sistemi tarafından ilk olarak bu dosya kontrol edildiği için işletim sistemi bazında domain veya hostname çözümlemeleri tanımlamak için bu dosya kullanılabiliyor. 

# DHCP Hakkında

DHCP hizmetinin, ağdaki tüm cihazlara gerekli olan “ip”, “subnet”, “getway”, “dns” bilgisini otomatik olarak sunduğunu biliyorsunuz. Bu sayede client cihazlara tek tek tanımlamakla uğraşmadan ağ içindeki iletişimi sorunsuz hale getirebiliyoruz. Fakat her zaman otomatik tanımlama yapılmasını istemeyeceğimiz durumlar olabilir. Örneğin sunucuların sabit ip adreslerine sahip olmasını da isteyebiliriz. Biz aksini belirtmediğimiz sürece “default getway” yani “varsayılan ağ geçidi” olarak kullanılan router aslında **DHCP** görevini üstelenerek ağdaki cihazlara benzersiz ip tanımlamaları yapıyor. Bu durumu teyit etmek için `ip route` komutunu girebiliriz.

![DHCP.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/network/DHCP.webp)

Gördüğünüz gibi **eth0** arayüzü için “**default getway**” olarak tanımlı olan “**192.168.1.1**” adresi aynı zamanda “**dhcp**” olarak kullanılıyormuş. Yani eth0 arayüzünün dhcp üzerinden dinamik(dynamic) olarak değişken ip adresleri aldığını öğrenmiş olduk.

Eğer ip adresinin değişken olmasını istemiyorsak, `nmtui` üzerinden “automatic” seçeneğini devredışı bırakıp manuel olarak kendimiz sabit bir ip adresi tanımlayabiliriz. Tek yapmanız gereken, statik ip adresi tanımlamak istediğiniz ağ arayüzünü seçip, dhcp yerine elle ip tanımlaması yapmak. Daha önce ele aldığımız için ben hızlıca gif resmi üzerinden adımları gösteriyorum.

![static-ip.gif](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/network/static-ip.gif)

![static-ip.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/network/static-ip.webp)

Gördüğünüz gibi `ip r` komutunu çıktısında da ip adresinin “static” yani “sabit” olarak eklenmiş olduğu açıkça belirtiliyor. Bu şekilde statik ip tanımlamasını kolayca gerçekleştirebiliyoruz. 

Fakat tabii ki dhcp yerine elle tanımlama yaptığınızda ip çakışması gibi yanlış konfigürasyonların sebep olabileceği sorunlar ile karşılaşmanız da olası. Bu sebeple static yani sabit ip adresini yalnızca gerekli durumlarda uygulamanız tavsiye edilir. Örneğin client yerine genellikle ip adresinin sabit olması gereken server cihazlarında ip sabitlemesi yapılır. Bu sayede bu server ile iletişime geçmek isteyen tüm yapılar değişmeyen tek bir ip adresi sayesine zahmetsizce iletişim kurabilir. 

Bunun dışında default getway üzerinden dhcp hizmeti almak istemiyorsanız, harici olarak dhcp sunucusu kurup bu sunucunun ağdaki tüm cihazlara ip tanımlaması yapmasını da sağlayabilirsiniz. Bu sayede geniş ağlarda merkezi bir dhcp yönetimi mümkün oluyor. DHCP sunucusu üzerinden, hostların MAC adresi ile ip sabitlemesi gibi çeşitli işlemler de yapılabildiği için karmaşık ağlarda ağ yönetimini kolaylaştırmak adına harici DHCP sunucusu tercih edilebiliyor. 

## arp

Ağ üzerindeki hostların, iletişime geçtiği hostların IP-MAC bilgisini kendi arp tablolarında tuttuğunu biliyorsunuzdur. Linux üzerinde, mevcut makinenin arp tablosunu görmek için `arp` komutunu girmemiz yeterli oluyor.

```bash
┌──(taylan㉿kali-makinesi)-[~]
└─$ arp

┌──(taylan㉿kali-makinesi)-[~]
└─$
```

Eğer daha önce herhangi bir host ile iletişim kurmamış bir cihaz üzerinden bu komutu girecek olursanız, bende olduğu şekilde arp tablosu boş olacaktır. Bu tablonun, hostlar ile iletişim kurdukça dolduğunu teyit etmek için ağımızdaki bir hosta `ping` ile icmp paketi yollayabiliriz. Ben “192.168.1.2” ip adresine sahip olduğunu bildiğim Windows makinesine `ping -c 3 192.168.1.2` komutu ile 3 paket gönderiyorum.

```bash
┌──(taylan㉿kali-makinesi)-[~]
└─$ ping -c 3 192.168.1.2
PING 192.168.1.2 (192.168.1.2) 56(84) bytes of data.
64 bytes from 192.168.1.2: icmp_seq=1 ttl=128 time=1.41 ms
64 bytes from 192.168.1.2: icmp_seq=2 ttl=128 time=0.858 ms
64 bytes from 192.168.1.2: icmp_seq=3 ttl=128 time=0.606 ms

--- 192.168.1.2 ping statistics ---
3 packets transmitted, 3 received, 0% packet loss, time 2012ms
rtt min/avg/max/mdev = 0.606/0.956/1.406/0.333 ms

┌──(taylan㉿kali-makinesi)-[~]
└─$ arp
Address                  HWtype  HWaddress           Flags Mask            Iface
192.168.1.2              ether   4c:cc:6a:4a:58:f6   C                     eth0
```

Gördüğünüz gibi Windows makinesi ile aramda sorunuzca paket alışverişi gerçekleştirildiği için Windows hostunun IP ve MAC bilgisi de alınıp ARP tablosuna eklenmiş. Zaten arp tablosu da bu amaçla kullanılıyor. Zaman içinde biz iletişim kurdukça ARP protokolü sayesinde taraflar arasında IP-MAC adresi paylaşımı yapılıyor ve taraflar da kendi ARP tablolarında bu bilgileri tutuyorlar. 

Bu çıktılara dikkat edecek olursanız router cihazının ip adresi arp tablosunda bulunmuyor. Çünkü biz lokal ağda iletişim kurarken, modemimizin switch özelliği sayesinde bu paketleri hedeflerine ulaştırıyoruz. Router özelliği, harici ağlara paket yönlendirmek istediğimizde kullanılıyor. Bu durumu teyit etmek için “1.1.1.1” adresine yani lokal ağımız dışındaki internet üzerinde yer alan public bir ip adresine ping gönderelim ve arp tablosunu tekrar kontrol edelim.

```bash
┌──(taylan㉿kali-makinesi)-[~]
└─$ ping 1.1.1.1
PING 1.1.1.1 (1.1.1.1) 56(84) bytes of data.
64 bytes from 1.1.1.1: icmp_seq=1 ttl=56 time=9.64 ms
64 bytes from 1.1.1.1: icmp_seq=2 ttl=56 time=7.69 ms
64 bytes from 1.1.1.1: icmp_seq=3 ttl=56 time=8.25 ms
64 bytes from 1.1.1.1: icmp_seq=4 ttl=56 time=8.50 ms
^C
--- 1.1.1.1 ping statistics ---
4 packets transmitted, 4 received, 0% packet loss, time 3131ms
rtt min/avg/max/mdev = 7.687/8.519/9.640/0.710 ms

┌──(taylan㉿kali-makinesi)-[~]
└─$ arp
Address                  HWtype  HWaddress           Flags Mask            Iface
192.168.1.1              ether   c8:3a:35:7d:46:18   C                     eth0
192.168.1.2              ether   4c:cc:6a:4a:58:f6   C                     eth0
```

Bakın bu kez hedef dış ağdaki bir adres olduğu için, router ile bu paketin bu ağa yönlendirilmesi gerekiyor. Bu sebeple bu paket router cihazına teslim ediliyor. Bu teslim sırasında router cihazı ile benim aramda ARP protokolü ile IP-MAC adresi paylaşımı gerçekleşiyor. Bu sebeple benim arp tabloma router cihazının ip adresi ve MAC adresi ekleniyor. 

Lokal ağdayken modemimizin switch özelliği sayesinde paketler “fiziksel port-MAC”adresi bilgisiyle iletiliyor. Dolayısıyla router ile işimiz olmuyor. Fakat söz konusu harici bir ağa paket iletmek olduğunda, router “yönlendirici” görevinde olduğu için router cihazının IP ve MAC bilgisine ihtiyacımız oluyor. 

Eğer buradaki anlatımlar yeterince açık değilse, ağ temellerini ele aldığımız eğitimi tamamlayıp tekrar döndüğünüzde daha anlamlı hale gelebilir. 

Ayrıca arp tablosu mevcut ağ arayüzüne(network interface) özel olarak tutuluyor. Dolayısıyla bir ağ arayüzü kapatıldığında veya farklı bir ağ arayüzü kullanıldığında bu arp tablosu da sıfırlanmış oluyor. Ben denemek için eth0 arayüzünü kapatıp tekrar açacağım ve arp tablosunu tekrar kontrol edeceğim.

```bash
┌──(taylan㉿kali-makinesi)-[~]
└─$ arp
Address                  HWtype  HWaddress           Flags Mask            Iface
192.168.1.1              ether   c8:3a:35:7d:46:18   C                     eth0
192.168.1.2              ether   4c:cc:6a:4a:58:f6   C                     eth0
┌──(taylan㉿kali-makinesi)-[~]
└─$ sudo ip link set eth0 down
┌──(taylan㉿kali-makinesi)-[~]
└─$ sudo ip link set eth0 up
┌──(taylan㉿kali-makinesi)-[~]
└─$ arp
┌──(taylan㉿kali-makinesi)-[~]
└─$
```

Gördüğünüz gibi eth0 arayüzünü kapatıp tekrar açtığımda arp tablosu da sıfırlanmış oldu. Benzer şekilde örneğin ben Wi-Fi bağlantısı gerçekleştirecek olursam, bu kez Wi-Fi arayüzü için ayrı bir arp tablosu tutuluyor olacak. 

## route

Mevcut ağ arayüzünün, dış ağlar ile iletişim kurmak üzere kullandığı routerın bilgisini “default getway” adresi üzerinden öğrenebiliyoruz. Bunun için `ip r` komutunu girmemiz yeterli.

```bash
┌──(taylan㉿kali-makinesi)-[~]
└─$ ip r                                                                                                               
default via 192.168.1.1 dev eth0 proto static metric 100 
192.168.1.0/24 dev eth0 proto kernel scope link src 192.168.1.15 metric 100
```

Doğrudan yönlendirme tablosunu görmek istersek `route` komutunu da kullanabiliyoruz. 

```bash
┌──(taylan㉿kali-makinesi)-[~]
└─$ route                                                                                                                                                
Kernel IP routing table
Destination     Gateway         Genmask         Flags Metric Ref    Use Iface
default         192.168.1.1     0.0.0.0         UG    100    0        0 eth0
192.168.1.0     0.0.0.0         255.255.255.0   U     100    0        0 eth0
```

Burada varsayılan ağ geçici(default getway) 192.168.1.1 olarak gözüküyor. Yani bir paket harici bir ağa gönderilecekse bu adrese teslim ediliyor. İsim çözümlemesi yapmadan yalnızca sayısal verileri görmek için `route -n` komutunu girelim. 

```bash
┌──(taylan㉿kali-makinesi)-[~]
└─$ route -n
Kernel IP routing table
Destination     Gateway         Genmask         Flags Metric Ref    Use Iface
0.0.0.0         192.168.1.1     0.0.0.0         UG    100    0        0 eth0
192.168.1.0     0.0.0.0         255.255.255.0   U     100    0        0 eth0
```

Bakın bu kez ilk satırda “Destination” yani hedef olarak “**0.0.0.0**” adresi yazıyor. Genmask değeri de ağın büyüklüğünün herhangi bir değer olabileceğini belirten “**0.0.0.0**” subnetmask değeri aslında. Bunun anlamı, hedefi herhangi bir ağ olan tüm istekleri getway olan “192.168.1.1” adresine yönlendirilecek olduğu. Bu sayede internet üzerindeki herhangi bir ip adresi ile iletişim kurmak istediğimizde ilgili paket, “default getway” adresindeki cihaza teslim ediliyor. Bu cihaz da router aygıtımız olduğu için bu aygıt ilgili paketin hedef ulaşabilmesi için gerekli yönlendirmenin yapılmasını sağlıyor.

İkinci satırda ise “Destination” yani hedef olarak “192.168.1.0” adresi yazıyor. Genmask adresi ise “255.255.255.0” yani bu bilgiler ışığında **tam olarak “192.168.1.0”** ağı içindeki ip adreslerinin hedeflendiği durumlar kapsanmış oluyor. Gateway adresindeki “**0.0.0.0**” değeri ise bu ağa erişim için bir ağ geçidi kullanılmasına gerek olmadığını belirtiyor. Dolayısıyla 192.168.1.0 ağı içindeki ip adresleri, birbiri ile iletişim kurarlarken default getway adresindeki router cihazına veri göndermeleri gerekmiyor. Bu sebeple biz lokal ağımızdaki bir hosta veri gönderirken, bu veri paketi router cihazına uğramadan-switch vasıtası ile-ilgili host cihazına teslim ediliyor.

Eğer temel ağ eğitimine katıldıysanız, orada benzeri durumdan bahsetmiştik. İnternet gibi geniş bir ip aralığını temsil etmek üzere “**0.0.0.0/0**” adresi tanımlanıyordu. Ayrıca lokal ağdaki iletişim için de ayrıca lokal ağ adresi belirtiliyordu. Bu sayede ip adresi lokal ağdaki bir adres ise, ilgili paket doğrudan lokal ağdaki hosta iletiliyorken, lokal ağında dışındaki adreslerin hepsi default getway olarak bilinen yönlendirici router cihazına iletiliyordu. 

Mevcut cihazımızdaki routing table bilgisini `route` aracı üzerinden düzenlememiz mümkün. Fakat günümüzde yönlendirme tablosunu düzenlemek için `ip` aracı daha sık kullanılıyor. Örneğin ben 10.0.0.0/24 ağındaki ip adresleri hedeflendiğinde, verilerin 192.168.1.2 adresine yönlendirilmesini istiyorum. Bunun için `sudo ip route add 10.0.0.0/24 via 192.168.1.2` komutunu girmem yeterli.

```bash
┌──(taylan㉿kali-makinesi)-[~]
└─$ sudo ip route add 10.0.0.0/24 via 192.168.1.2                                                                                                          
[sudo] password for taylan: 

┌──(taylan㉿kali-makinesi)-[~]
└─$ route -n                                                                                                                                               
Kernel IP routing table
Destination     Gateway         Genmask         Flags Metric Ref    Use Iface
0.0.0.0         192.168.1.1     0.0.0.0         UG    100    0        0 eth0
10.0.0.0        192.168.1.2     255.255.255.0   UG    0      0        0 eth0
192.168.1.0     0.0.0.0         255.255.255.0   U     100    0        0 eth0
```

Gördüğünüz gibi "10.0.0.0” ağındaki herhangi bir ip adresinin hedeflendiği durumda, bu veriler “192.168.1.2” adresine yönlendiriliyor olacak. Bu adreste de muhtemelen bir router olacağı için bu router konfigüre edildiği şekilde bu paketlerin uygun yerlere ulaşmasını sağlayacak. Bu yaklaşım sayesinde özellikle birden fazla şirket ağının olduğu işletmelerde, hangi ağdaki cihazların hangi ağlara veya hostlara erişebileceğini yönetmek mümkün oluyor.

Eğer bu tanımlamayı silmek isterseniz “`add`” yerine “`del`” seçeneğini aynı şekilde belirtmeniz yeterli.

```bash
┌──(taylan㉿kali-makinesi)-[~]
└─$ sudo ip route del 10.0.0.0/24 via 192.168.1.2                                                                                                          

┌──(taylan㉿kali-makinesi)-[~]
└─$ route -n                                                                                                                                               
Kernel IP routing table
Destination     Gateway         Genmask         Flags Metric Ref    Use Iface
0.0.0.0         192.168.1.1     0.0.0.0         UG    100    0        0 eth0
192.168.1.0     0.0.0.0         255.255.255.0   U     100    0        0 eth0
```

Elbette bu değişimleri ip aracı üzerinden gerçekleştirdiğimiz için kalıcı değiller. Kalıcı olmasını istiyorsanız, sistem başlangıcında çalışacak bir servis tanımlayabilir ya da `nmtui` aracı üzerinden yönlendirme ekleyebilirsiniz. `nmtui` üzerinden yönlendirmeye dair örnek için aşağıdaki görsellere bakabilirsiniz.

![nmtui-routing-table.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/network/nmtui-routing-table.webp)

![nmtui-routing-table-add.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/network/nmtui-routing-table-add.webp)

Anlatım sırasında bahsetmiş olduğumuz lokal ve harici ağlardaki yönlendirme durumu bizzat teyit etmek üzere `traceroute` aracı yardımıyla yönlendirme adımlarını takip edebiliriz. 

## traceroute

Paketlerin ağdaki yönlendirilme yolculuğunu takip etmek için `traceroute` aracı ile icmp paketi yollayabiliyoruz. Ben denemek için dış ağdaki “**8.8.8.8**” adresine giden yönlendirme yolcuğunu test etmek istiyorum.

```bash
┌──(taylan㉿linuxdersleri)-[~]
└─$ traceroute 8.8.8.8                                                                                                                                      
traceroute to 8.8.8.8 (8.8.8.8), 30 hops max, 60 byte packets
 1  Tenda.Home (192.168.1.1)  8.050 ms  7.560 ms  7.497 ms
 2  172.17.1.81 (172.17.1.81)  7.485 ms  12.420 ms  12.383 ms
 3  69.125.223.31.srv.turk.net (31.223.125.69)  12.289 ms  12.231 ms  12.149 ms
 4  70.125.223.31.srv.turk.net (31.223.125.70)  12.124 ms  12.116 ms  12.081 ms
 5  73.125.223.31.srv.turk.net (31.223.125.73)  12.163 ms  12.126 ms  12.046 ms
 6  77.100.146.159.srv.turk.net (159.146.100.77)  22.134 ms  18.165 ms  17.565 ms
 7  72.14.210.191 (72.14.210.191)  16.364 ms  16.167 ms  17.343 ms
 8  72.14.210.190 (72.14.210.190)  17.182 ms  16.920 ms  16.747 ms
 9  * * *
10  dns.google (8.8.8.8)  16.045 ms  16.473 ms  16.853 ms
```

Gördüğünüz gibi adım adım yönlendirmeler hakkında bilgi sunulmuş oldu. Çıktılarda yer alan “* * *” çıktısı bu yönlendiricinin icmp paketlerine yanıt vermeyecek şekilde konfigüre edildiği veya bu yönlendiricinin hizmet vermediği anlamına geliyor olabilir. 

Çıktılara dikkat edecek olursanız ben dış ağdaki bir hedefe paket gönderdiğim için, paket ilk olarak varsayılan ağ geçidim olan 192.168.1.1 adresine uğrayıp oradan internet servis sağlayıcımın yönlendiricilerine uğrayıp hedefe doğru yönlendiriliyor. Çünkü bilgisayarımdaki routing table üzerinde dış ip adreslerine gönderilen verilerin “192.168.1.1” adresine yönlendirilmesi gerektiği belirtiliyor. 

Paket lokal ağdaki bir ip adresine gönderilecek olsaydı, 192.168.1.1 adresindeki default getway görevini gerçekleştiren routera uğramayacaktı.

Bu durumu teyit etmek için lokal ağımızdaki bir hosta gönderdiğimiz paketi de takip edebiliriz. 

```bash
┌──(taylan㉿kali-makinesi)-[~]
└─$ traceroute 192.168.1.12                                                                                                                                
traceroute to 192.168.1.12 (192.168.1.12), 30 hops max, 60 byte packets
 1  rocky-linux (192.168.1.12)  3.128 ms !X  2.008 ms !X  1.989 ms !X
```

Bakın hedef ip lokal ağımdaki bir host olduğu için router ile yönlendirme ihtiyaç duymadığından default getway adresine uğramadan doğrudan ilgili hedefe yönlendirilmiş gözüküyor. 

Neticede böylelikle routing table kullanım amacını ve önemini bizzat teyit etmiş olduk. 

`traceroute` aracını tıpkı burada olduğu şekilde kullanarak, olası ağ sorunlarını tespit etmemiz de mümkün oluyor. 

# Portlar Hakkında

IP adreslerine ek olarak, sistem üzerindeki tüm araçların sorunsuz şekilde veri alışverişinde bulunabilmesi için portların kullandığını biliyorsunuz. 

![transport-port.webp](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/network/transport-port.webp)

Dolayısıyla sistemimizdeki portlar hakkında temel düzeyde bilgi almak ve gerektiğinde portları kontrol edebilmek önemli bir yetkinlik. Bu doğrultuda öncelikle sistemimizdeki aktif portları sorgulayarak başlayabiliriz. 

## ss

`ss`, “**s**ocket **s**tatistic” ifadesinin kısaltmasından gelen, Linux sistemindeki soketleri hakkında bilgi sunan bir araçtır. Soketler, işlemler arasındaki haberleşme için kullanılan özel dosyalardır. Aynı cihaz üzerindeki işlemler veya ağ bağlantısı bulunan farklı hostlardaki işlemler arasındaki haberleşmede kullanılıyorlar. Soketler yardımıyla karşılıklı olarak veri iletimi mümkün oluyor.

Öncelikle sistem üzerindeki tüm soket bilgilerin görmek üzere yalnızca `ss` komutunu girebiliriz. 

```bash
┌──(taylan㉿kali-makinesi)-[~]
└─$ ss
Netid             State              Recv-Q             Send-Q                                                Local Address:Port                              Peer Address:Port             Process             
u_dgr             ESTAB              0                  0                                               /run/systemd/notify 13634                                        * 0                                    
u_dgr             ESTAB              0                  0                                      /run/systemd/journal/dev-log 13658                                        * 0                                    
u_dgr             ESTAB              0                  0                                       /run/systemd/journal/socket 13660                                        * 0                                    
u_str             ESTAB              0                  0                                                /run/user/1000/bus 20625                                        * 19893                                
u_str             ESTAB              0                  0                                                                 * 19912                                        * 20664                                
u_str             ESTAB              0                  0                                                                 * 15515                                        * 15516                                
u_str             ESTAB              0                  0                                              /tmp/dbus-lEUb2kgW9Z 16324                                        * 18943                                
u_str             ESTAB              0                  0                                                                 * 18039                                        * 18040                                
u_str             ESTAB              0                  0                                       /run/systemd/journal/stdout 56040                                        * 55074                                
u_str             ESTAB              0                  0                                       /run/dbus/system_bus_socket 19232                                        * 18410                                
u_str             ESTAB              0                  0                                       /run/systemd/journal/stdout 17133                                        * 17439                                
u_str             ESTAB              0                  0                                       /run/systemd/journal/stdout 15456                                        * 14946                                
u_str             ESTAB              0                  0                                                                 * 19090                                        * 19502                                
u_str             ESTAB              0                  0                                                @/tmp/.X11-unix/X0 19048                                        * 18176                                
u_str             ESTAB              0                  0                                                                 * 18985                                        * 18986                                
u_str             ESTAB              0                  0                                                /run/user/1000/bus 18969                                        * 16327                                
u_str             ESTAB              0                  0                                              /tmp/dbus-lEUb2kgW9Z 16279                                        * 18825
..
..
.
```

Sistem üzerindeki tüm soketleri kapsadığı için çıktı çok uzun, ben kısaltarak ekledim. Bu çıktılar bizim için çok fazla. Genellikle yalnızca açık olan TCP ve UDP portlarına bakmak için `ss` aracına ihtiyacımız oluyor. Açık portları listelemek için `ss -tuln` komutunu girebiliriz. Buradaki `t` seçeneği **TCP**, `u` seçeneği **UDP**, `l` seçeneği “listening” yani “dinlenen” portları listeler, `n` seçeneği port numaralarını verir.

```bash
┌──(taylan㉿kali-makinesi)-[~]
└─$ ss -tuln
Netid             State              Recv-Q             Send-Q                         Local Address:Port                         Peer Address:Port            Process            
tcp               LISTEN             0                  128                                  0.0.0.0:22                                0.0.0.0:*                                  
tcp               LISTEN             0                  128                                     [::]:22                                   [::]:*
```

Şu anda ssh servisi aktif olduğu için 22 portu dinleniyor. Ayrıca yalnızca “dinlenen” portlar yerine tüm port bilgisini almak için `l` seçeneği yerine “**all**” ifadesinden gelen `a` seçeneğini kullanabiliriz. 

```bash
┌──(taylan㉿kali-makinesi)-[~]
└─$ ss -tuna
Netid             State              Recv-Q             Send-Q                         Local Address:Port                         Peer Address:Port            Process            
tcp               LISTEN             0                  128                                  0.0.0.0:22                                0.0.0.0:*                                  
tcp               LISTEN             0                  128                                     [::]:22                                   [::]:*
```

Şu anda yalnızca dinlendiği için harici bir port bilgisi bastırılmadı. Ben test etmek için yeni bir konsol açıp, Rocky Linux sistemine ssh ile bağlanacağım. 

```bash
┌──(taylan㉿kali-makinesi)-[~]
└─$ ssh pc@rocky-linux 
pc@rocky-linux's password: 
Last login: Sat Aug 26 15:13:21 2023 from 192.168.1.15
[pc@linuxdersleri ~]$ whoami
pc
[pc@linuxdersleri ~]$
```

Şimdi kendi konsolumuza dönüp tekrar `ss -tuna` komutunu girelim.

```bash
┌──(taylan㉿kali-makinesi)-[~]
└─$ ss -tuna
Netid            State              Recv-Q             Send-Q                         Local Address:Port                          Peer Address:Port            Process            
tcp              LISTEN             0                  128                                  0.0.0.0:22                                 0.0.0.0:*                                  
tcp              ESTAB              0                  0                               192.168.1.15:44370                         192.168.1.12:22                                 
tcp              LISTEN             0                  128                                     [::]:22                                    [::]:*
```

Bakın bu kez “**LISTEN**” durumuna ek olarak “**ESTAB**” yani “**estab**lished” ifadesinden gelen “bağlantı kuruldu” tanımı da görüyoruz. SSH ile hedef sunucuya bağlandığım için aramızda bağlantı kuruldu. Burada hangi port üzerinden hangi ip adresi ile bağlantı kurulduğu da açıkça yazıyor. 

İşte `ss` aracının en temel kullanımı bu şekilde. Tabii ki `ss —help` komutu ile bizzat teyit edebileceğiniz gibi esasen çok fazla ek seçenek mevcut fakat temel kullanım için bu kadarlık bilgi bize yeterli olacak.

## netcat | nc

netcat aracı, kısaca `nc` komutu ile kullanılan temel ağ araçlarından biridir. `nc` sayesinde TCP ve UDP üzerinden hedefteki sunucu ile veri alışverişinde bulunarak bağlantı testleri gerçekleştirebiliyoruz. En temel kullanımı, hedef ip ve port sayesinde bağlantı kurulmasıdır. Ben denemek için Kali Linux üzerinde `python3 -m http.server 8080` komutu ile 8080 portunda çalışan bir http server oluşturuyorum.

```bash
┌──(taylan㉿kali-makinesi)-[~]
└─$ python3 -m http.server 8080
Serving HTTP on 0.0.0.0 port 8080 (http://0.0.0.0:8080/) ...
```

Şimdi aynı lokal ağdaki Rocky Linux üzerinden bu adrese bağlanmak için hedef sunucu ve ip adresini girmem yeterli.

```bash
[root@linuxdersleri ~]# nc 192.168.1.15 8080

```

Şu anda Rocky Linux, Kali Linux makinesindeki yani 192.168.1.15 adresindeki 8080 portu üzerinden sunulan http sunucusuna bağlı durumda. Bu durumu teyit etmek için `ss -tuna` komutunu girebiliriz. 

```bash
┌──(taylan㉿kali-makinesi)-[~]
└─$ ss -tuna                                                                                                                                                                      
Netid            State              Recv-Q             Send-Q                         Local Address:Port                         Peer Address:Port             Process            
tcp              LISTEN             0                  128                                  0.0.0.0:22                                0.0.0.0:*                                   
tcp              LISTEN             0                  5                                    0.0.0.0:8080                              0.0.0.0:*                                   
tcp              ESTAB              0                  0                               192.168.1.15:8080                         192.168.1.12:37440                               
tcp              LISTEN             0                  128                                     [::]:22                                   [::]:*
```

Bağlantı durumu burada ip ve port detaylarıyla birlikte açıkla gözüküyor. 

Ek olarak aramızdaki bağlantı ve veri iletişimini test etmek için burada “hello” yazıp enter ile sunucuya isteğimiz iletelim.

```bash
[root@linuxdersleri ~]# nc 192.168.1.15 8080
hello
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN"
        "http://www.w3.org/TR/html4/strict.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
        <title>Error response</title>
    </head>
    <body>
        <h1>Error response</h1>
        <p>Error code: 400</p>
        <p>Message: Bad request syntax ('hello').</p>
        <p>Error code explanation: HTTPStatus.BAD_REQUEST - Bad request syntax or unsupported method.</p>
    </body>
</html>
```

Hedefteki sunucunun “hello” ifadesine yanıtı, bir hata mesajı oldu. Neticede böylelikle http sunucusu ile iletişim kurabildiğimizi bizzat teyit etmiş olduk. Hatta emin olmak istersek Kali Linux üzerindeki çıktılara da bakabiliriz. 

```bash
┌──(taylan㉿kali-makinesi)-[~]
└─$ python3 -m http.server 8080
Serving HTTP on 0.0.0.0 port 8080 (http://0.0.0.0:8080/) ...
192.168.1.12 - - [26/Aug/2023 08:33:41] code 400, message Bad request syntax ('hello')
192.168.1.12 - - [26/Aug/2023 08:33:41] "hello" 400 -
```

Bakın python ile başlatılan http sunucusunun “hello” mesajına yanıtı, 400 hata kodu olarak gözüküyor. Böylelikle Rocky Linux ile Kali Linux arasında `nc` aracı yardımıyla bağlantı kurulabildiğini tekrar teyit etmiş olduk.

`nc` aracı genellikle bağlantı kontrolü için kullanılan bir araç fakat benzer yaklaşım kullanılarak alternatif kullanım amaçları da karşılanabiliyor. Örneğin genellikle güvenlik testleri sırasında kullanılan “reverse shell” yaklaşımı için netcat aracı kullanılabiliyor. Bunun için bağlanılmak istenilen hedef sunucuda `nc -l -p 9999 -e /bin/bash` komutu giriliyor. Bu komut `nc` aracının “**9999**” portunu dinlemesini, bağlantı olması halinde ***/bin/bash*** aracını yani bash kabuğunu bu bağlantıdan gelen tarafa sunmasını ifade ediyor. 

```bash
┌──(taylan㉿kali-makinesi)-[~]
└─$ nc -l -p 9999 -e /bin/bash
```

Ben Rocky Linux sisteminden, Kali Linux sistemine reverse shell almak üzere Kali Linux tarafından dinlenmekte olan bu porta, Kali Linux makinesinin ip adresi ile bağlanabilirim.

```bash
[pc@linuxdersleri ~]$ nc 192.168.1.15 9999
whoami
taylan
uname -a
Linux kali-makinesi.linuxdersleri.net 5.15.0-kali3-amd64 #1 SMP Debian 5.15.15-2kali1 (2022-01-31) x86_64 GNU/Linux
```

Gördüğünüz gibi Rocky Linux sisteminden, Kali Linux sisteminde bir kabuğa erişim sağlamış oldum. Girdiğim komutların çıktılarından, bu bağlantının başarılı olduğunu teyit edebiliyoruz. 

Bu yaklaşım genelde, güvenlik testi sırasında sızılan sisteme dışarıdan erişilebileceğini kanıtlamak üzere kullanılıyor.

Benzer şekilde bağlantı kurulmak istenilen ağ ile aramızdaki sorunun hangi taraftan kaynaklandığını tespit etmek için de kullanabiliyoruz. Bunun için bağlanılmak istenilen adreste `nc -l PORT-NUMARASI` komutu ile belirli bir port üzerinden dinleme moduna geçiyoruz. Daha sonra dinleme modundaki hedefe, yine `nc` ile bağlanmaya çalışıyoruz. Eğer bağlanabiliyorsak hedefteki ağa erişmede sorun yoktur. Ama bağlanamıyorsak aramızdaki bağlantı problemlidir. Bu gibi kontroller için `nc` aracı sıklıkla kullanılıyor.

Ayrıca `nc` aracı ile hedef ip adresindeki portları taramamız ya da dosya gönderme gibi işlemler yapmamız da mümkün. Aracın temelde nasıl çalıştığını öğrendiğinize göre kısa bir araştırma ile bu işlemleri nasıl gerçekleştirebileceğinizi de öğrenebilirsiniz. 

# iptables | firewalld Hakkında

IP ve portlar için kural tanımlamamıza olanak sağlayan **iptables** ve **firewalld** yapıları mevcuttur. Her ne kadar biz bu eğitimde değinmeyecek olsak da, sistem yönetimi alanında ilerlemek isteyenler için bu yapıların varlığından haberdar olup araştırabilmeleri adına burada bu açıklamayı eklemek istedim.

Sisteme gelen ve sistemden çıkan tüm paketlerin istenilen koşullara göre filtrelenebilmesi için iptables ve firewalld çözümleri kullanılabiliyor. Dolayısıyla sistem güvenliği konusunda ek araştırma yapmak istiyorsanız bu kavramları araştırarak başlayabilirsiniz. 

Tıpkı iptables ve firewalld gibi elbette bu bölüm içerisinde değinmediğimiz pek çok farklı ağ aracı bulunmasına karşın, temel düzeyde ağ ile ilgili işlerimizi halletmek için yeteri kadar araçtan bahsetmiş olduk. Bizim değinmediğimiz diğer araçlar ve detaylar, ağ üzerinde gerçekleştirmek istediğiniz işlemler özelinde kullanmanız gereken spesifik çözümlerdir. Bu eğitim herkese yönelik temel Linux eğitimi sunmayı amaçladığı için profesyonel Linux sistem yönetimi detay seviyesinde bilgilere değinmedik. Ama bahsetmiş olduğumuz temel bilgiler, hangi yöne doğru gitmek isterseniz kullanabileceğiniz temellerdir. Örneğin ileride sistem yöneticiliği özelinde bir eğitim serisi hazırlayacak olursam, buradaki temelleri bildiğinizi varsayarak bu temeller üzerinden yeni detaylara değiniyor olurum. Dolayısıyla gereken temele sahip olduğunuz için bundan sonrası ihtiyaçlarına göre kendi araştırmanıza kalıyor. 
