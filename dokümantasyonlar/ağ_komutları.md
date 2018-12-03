
Ağ(Network) Komutları
=
Ağ ve komutları başlı başına bir kitap konusu o yüzden burada sadece sıkça veya gerekli durumda işimize yarayacak belli başlı komutları ele alacağız. Eğer detaylı bilgi edinmek istiyorsanız internet aracılığı ile network(ağ) hakkında bir çok güncel kaynağa ulaşabilirsiniz. Lafı daha fazla uzatmadan anlatıma `ifconfig` komutu ile başlayalım.

ifconfig
-

Sistemde bulunan ağ bağlantı ve IP yapılandırması ayarlarını inceleyip değiştirmemize olanak tanır.

Ağ bağlantı kartlarını listelemek için `ifconfig` komutu kullanılır.(Bu çıktıda ip, mac ve broadcats adresi gibi bilgiler yer alıyor.)

![enter image description here](https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/16-%20A%C4%9F%20Komutlar%C4%B1/1.png)

Çıktıda yer alan **eth0** **ethernet** kartımızı ifade ediyor. Başka **ethernet** kartları olması durumunda diğer kartlar da **eth1** ..**eth2** şeklinde belirtilir.

**lo** bilgisayarın kendisini yani **localhost**'u ifade ediyor.

**wlan0** ise **kablosuz ağ kartını** ifade eder. Yine başka kartlar olması durumunda **wlan1** ..**wlan2** şeklide belirtilir.

Ayrıca bütün kart bilgilerini listelemek yerine teker teker de listelemek mümkün. Bunun için komutumuzu `ifconfig kart_adı` şeklinde girmemiz yeterli.

Örneğin yalnızca **kablosuz kart bilgilerini listelemek** istersem `ifconfig wlan0` komutunu vermem yeterli olacaktır.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/16-%20A%C4%9F%20Komutlar%C4%B1/2.png" width="875" >

Yukarıdaki çıktıda yer alan ayarlarda değişiklik yapmamız mümkün. Örneğin kablosuz ağ bağlantısının **yerel ip adresini** değiştirmek istersek komutumuzu `ifconfig wlan0 yeni_ip_adresi` şeklinde kullanabiliriz.

Ben kablosuz bağlantımın **192.168.1.9** olan adresi **192.168.1.10** olarak değiştirmek istiyorum bunun için `ifconfig wlan0 192.168.1.10` komutunu vermem yeterli.

Gelin bu durumu çıktıları karşılaştırarak test edelim.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/16-%20A%C4%9F%20Komutlar%C4%B1/3.png" width="875" >

Ve son duruma bakarak ip adresimizin istediğimiz şekilde değiştiğini görmüş olduk. Aynı şekilde **ağ maskesini(netmask)** ve **broadcast** adreslerini dilediğimiz gibi düzenleyebiliriz. Hatta bu işlemi hepsi birlikte olacak şekilde bile yapabiliriz. Bunun için komutumuzu `ifconfig wlan0 yeni_ip_adresi netmask yeni_ağ_maskesi broadcast yeni_broadcast_adresi`  şeklinde kullanmamız yeterli olacaktır.

Bu durumu bir örnek ile açıklayalım.
Değişiklik yapmak üzere konsola `ifconfig wlan0 192.168.1.15 netmask 255.255.255.255 broadcast 192.168.2.255` komutunu girerek bir önceki durumu ile karşılaştıralım.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/16-%20A%C4%9F%20Komutlar%C4%B1/4.png" width="875" >

Çıktıları incelediğimizde istediğimiz doğrultuda değişikliklerin yapılmış olduğunu gördük.

`ifconfig` komutu kullanımı ile ilgili son olarak mevcut kartları açma ve kapatma işlemi görelim.

Örnek olarak kablosuz kartı ele alalım:

**Kablosuz kartı kapatmak** istersek; `ifconfig wlan0 down` komutunu kullanırız.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/16-%20A%C4%9F%20Komutlar%C4%B1/5.png" width="875" >

**Kapalı kablosuz kartı açmak istersek** ise; `ifconfig wlan0 up` komutunu kullanırız.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/16-%20A%C4%9F%20Komutlar%C4%B1/6.png" width="875" >

Ayrıca diğer kartlar için de açama-kapama işleminde aynı şekilde komutumuzu `ifconfig kart_adı down` ve `ifconfig kart_adı up` şeklinde kullanabiliriz.


ping
-
Hedef ile bizim sistemimiz arasında iletişimin sağlanıp sağlanmadığını kontrol ederek hedef sunucunun çalışıp çalışmadığını veya aktarım hızının ne kadar olduğunu öğrenmemizi sağlar. Bir tür kontrol mekanizması da diyebiliriz. Komutun kullanımı `ping hedef_adresi` şeklindedir.

Örneğin biz `www.google.com` adresi ile aramızdaki iletişimin hızını sorgulayalım. Bunun için komut satırına `ping www.google.com` yazıyorum. Ancak burada önemli bir nokta var, o da bu işlemin biz <kbd>Ctrl + C</kbd> tuş kombinasyonu ile durdurana kadar devam edecek olmasıdır. 

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/16-%20A%C4%9F%20Komutlar%C4%B1/7.gif" width="875" >

Eğer direk olarak sınırlama getirmek isterseniz komutu `ping -c 4 www.google.com` şeklinde kullanabilirsiniz. Bu sayede `www.google.com` adresine yalnızca **4 sorgu paketi** gönderilir. Elbette buradaki sayı sizin belirlemeniz ile değişebilir.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/16-%20A%C4%9F%20Komutlar%C4%B1/8.png" width="875" >


route
-
Sistemimizdeki IP yönlendirme tablosunun içeriğini görmemizi sağlar. IP yönlendirme tablosunun içeriğini görmek için konsola `route -n` komutunu yazalım.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/16-%20A%C4%9F%20Komutlar%C4%B1/9.png" width="875" >

Burada yer alan gateway(ağ geçidi adresi) yerel ağdan internet ağına geçerken kullanılan yönlendirme adresidir.


traceroute
-
Bir önceki kısımda `route` komutu ile gördüğümüz yerel ağda geçerli olan yönlendirme takibini, belirli bir hedef adrese yapabilmemize olanak sağlayan komut `traceroute` komutudur. Yani komutumuz belirli bir hedefe gönderilen paketin hangi host'lardan geçtiğini bizlere gösterir. Bir nevi izlediği yolu yani adımlarını takip etmemizi sağlar. Komutun kullanımı `traceroute hedef_adresi` şeklindedir. Bu sefer hedef adres olarak `www.offensive-security.com` adresini örnek verelim. Bunun için konsola `traceroute www.offensive-security.com` yazıyorum.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/16-%20A%C4%9F%20Komutlar%C4%B1/10.png" width="875" >

Çıktı ile birlikte adresin yönlendirme rotasını görmüş olduk.

whois
-
**Whois** kavramını bilmeyenler için **whois**, genel olarak domain bilgilerini içeren bir mekanizmadır. Yani **whois**; domain ne zaman kurulmuş, ne zamana kadar geçerli, kimin üzerine kayıtlı ve bunun gibi diğer tüm bilgileri tutar. Bizler de bu bilgileri konsol ekranından `whois hedef_adresi` şeklinde kullandığımız komut bütünü ile sorgulayabiliriz.

Whois sorgusuna örnek olarak yine `www.offensive-security.com` adresini hedef alalım.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/16-%20A%C4%9F%20Komutlar%C4%B1/11.png" width="875" >


host
-
Hedef adres hakkında bilgi almanızı sağlar.`host` komutu ile IP adresinden alan adı(domain name) ve alan adından(domain name) IP adresine ulaşabiliriz. Bu komutun alabildiği farklı parametreleri bulunmaktadır. Ancak ben bu kısımda bunlara değinmeden yalnızca temel kullanımına örnek veriyorum. Kullanımı `host adres_adı` şeklindedir.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/16-%20A%C4%9F%20Komutlar%C4%B1/12.png" width="875" >

Bu komut hakkında ufak bir araştırma ile çok fazla Türkçe de dahil olmak üzere kaynağa ulaşabilirsiniz.


dig
-

**dig(domain information groper/domain bilgi çukuru)** DNS kayıtlarına bakmak için kullanımı oldukça kolay olduğundan yaygın olarak kullanılmaktadır.

Bu komutumuz da parametreler alabilmektedir, ancak ben burada sizlere yine temel işlevinden bahsederek geriye kalan parametrelerini araştırmayı sizlere bırakıyorum. DNS sorgulaması yapmak istediğimiz adresi konsoldan `dig hedef_adresi` şeklinde belirtiyoruz.

Örnek olması açısından ben tekrar `www.offensive-security.com` adresini hedef alıyorum.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/16-%20A%C4%9F%20Komutlar%C4%B1/13.png" width="875" >


arp
-
**IP-MAC Adresi** eşleştirmelerinin tutulduğu tablolardır. Kullanımı `arp` şeklindedir.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/16-%20A%C4%9F%20Komutlar%C4%B1/14.png" width="875" >


tcpdump
-
Sistemimizin yaptığı bağlantıları ve sistemimize yapılan bağlantıları anlık olarak görüntülememize olanak sağlar. Kullanımı `tcpdump` şeklindedir.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/16-%20A%C4%9F%20Komutlar%C4%B1/15.png" width="875" >

Ayrıca adres çözümlemesi yapmadan direk olarak bağlantıları takip etmek istersek `tcpdump -n` komutunu kullanabiliriz.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/16-%20A%C4%9F%20Komutlar%C4%B1/16.png" width="875" >


DNS Ayarları
-
Komut satırından DNS ayarlarımızı değiştirmek istersek DNS bilgilerinin tutulduğu <kbd>/etc/resolv.conf/</kbd> dosyasında değişiklik yapmamız gerekiyor. İşlemeleri adım adım açıklayarak ilerleyelim.

İlk olarak DNS ayarlarının bulunduğu dosya içeriğine göz atıyorum. Çünkü daha sonra değişiklik yaptığımızda ilk hali ile kıyaslamamız gerekecek. Bu işlemi `cat` komutu yardımı ile gerçekleştireceğiz.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/16-%20A%C4%9F%20Komutlar%C4%B1/17.png" width="875" >


Şimdi eski DNS(nameserver) yerine bizim eklemek istediğimiz adresleri `echo` komutu yardımı ile girelim.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/16-%20A%C4%9F%20Komutlar%C4%B1/18.png" width="875" >

Komutları kısaca açıklayacak olursak ilk olarak `echo "nameserver 8.8.8.8" > resolv.conf` komut bütününde `>` karakteri ile birlikte dosya içerisinde var olan ifadeleri sildik ve dosya içerisine `nameserver 8.8.8.8` ifadesini ekledik.

Daha sonra `echo "nameserver 8.8.4.4" >> resolv.conf` komut bütünü ile de daha önce eklediğimiz ifadeye ek olarak diğer bir DNS adresi olan **8.8.4.4** adresini `>>` karakteri yardımı ile ekledik.

Son olarak da eklediğimiz yeni DNS adreslerinin belgeye eklenme durumunu `cat /etc/resolv.conf` komutu ile teyit ettik.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/16-%20A%C4%9F%20Komutlar%C4%B1/19.png" width="875" >

hosts Dosyası
-
Yerel bir alan adı sunucusu işlevindedir. Sistemde alan adı çözümlemesi yapılırken bu dosyaya bakılır. Dosyanın konumu <kbd>/etc/hosts</kbd> şeklindedir. Hemen dosya içeriğine `cat` komutu yardımı ile bir göz atalım.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/16-%20A%C4%9F%20Komutlar%C4%B1/20.png" width="875" >

Böylelikle en sık kullanılan ağ komutları hakkında genel bilgi sahibi olmuş olduk. Artık daha fazla bilgi için network konusunda detaylı araştırma yapmak sizlere kalıyor.
