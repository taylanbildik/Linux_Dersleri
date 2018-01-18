Ağ(Network) Komutları
=
Ağ ve komutları başlı başına bir kitap konusu o yüzden burada sıkça veya gerekli durumda işimize yarayacak belli başlı komutları ele alıcaz. Eğer detaylı bilgi edinmek istiyorsanız internet aracılığı ile network(ağ) hakkında bir çok güncel kaynağa ulaşabilirsiniz. Lafı daha fazla uzatmadan anlatıma `ifconfig` komutu ile başlayalım.

ifconfig
-

Sistemde bulunan ağ bağlantı ve IP yapılandırması ayarlarını inceleyip değiştirmemize olanak tanır.

Ağ bağlantı kartlarını listelemek için `ifconfig` komutu kullanılır.(Bu çıktıda ip, mac ve broadcats adresi gibi bilgiler yer alıyor.)

![enter image description here](https://i.hizliresim.com/6JZPVl.png)

Çıktıda yer alan eth0 ethernet kartımızı ifade ediyor. Başka ethernet kartları olması durumunda diğer kartlar da eth1 .. eth2 şeklinde belirtilir.

lo bilgisayarın kendisini yani localhost'u ifade ediyor.

wlan0 ise kablosuz ağ kartını ifade eder. Yine başka kartlar olması durumunda wlan1 .. wlan2 şeklide belirtilir.

Ayrıca bütün kart bilgilerini listelemek yerine teker teker de listelemek de mümkün bunun için komutumuzu `ifconfig kart_adı` şeklinde girmemiz yeterli.

Örneğin yalnızca kablosuz kart bilgilerini listelemek istersem `ifconfig wlan0` komutunu vermem yeterli olacaktır.

![enter image description here](https://i.hizliresim.com/W7Vkv4.png)

Yukarıdaki çıktıda yer alan ayarlarda değişiklik yapmamız mümkün. Örneğin kablosuz ağ bağlantısının yerel ip adresini değiştirmek istersek komutumuzu `ifconfig wlan0 yeni_ip_adresi` şeklinde kullanabiliriz.

Ben kablosuz bağlantımın 192.168.1.9 olan adresi 192.168.1.10 olarak değiştirmek istiyorum bunun için `ifconfig wlan0 192.168.1.10` komutunu vermem yeterli.

Gelin bu durumu çıktıları karşılaştırarak test edelim.

![enter image description here](https://i.hizliresim.com/3E9LZ9.png)

Ve son duruma bakarak ip adresimizin istediğimiz şekilde değiştiğini görmüş olduk. Aynı şekilde ağ maskesini(netmask) ve broadcat adreslerini dilediğimiz gibi düzenleyebiliriz. Hatta bu işlemi hepsi birlikte olacak şekilde bile yapabiliriz. Bunun için komutumuzu `ifconfig wlan0 yeni_ip_adresi netmask yeni_ağ_maskesi broadcast yeni_broadcast_adresi`  şeklinde kullanmamız yeterli olacaktır.

Bu duruma bir örnek ile açıklayalım.
Değişiklik yapmak üzere konsola `ifconfig wlan0 192.168.1.15 netmask 255.255.255.255 broadcast 192.168.2.255` komutunu girerek bir önceki durumu ile karşılaştıralım.

![enter image description here](https://i.hizliresim.com/RnJkZY.png)

Çıktıları incelediğimizde istediğimiz doğrultuda değişikliklerin yapılmış olduğunu gördük.

`ifconfig` komutu kullanımı ile ilgili son olarak mevcut kartları açma ve kapatma işlemi görelim.

Örnek olarak kablosuz kartı ele alalım:

Kablosuz kartı kapatmak istersek `ifconfig wlan0 down` komutunu kullanırız.

Kapalı kablosuz kartı açmak istersek ise `ifconfig wlan0 up` komutunu kullanırız.

Ayrıca diğer kartlar için de aynı şekilde komutumuzu `ifconfig kart_adı down` ve `ifconfig kart_adı up` şeklinde kullanabiliriz.


ping
-
Hedef ile bizim sistemimiz arasında iletişimin sağlanıp sağlanmadığını kontrol etmeye yarar. Sonuç olarak hedef sunucunun çalışıp çalışmadığını veya aktarım hızının ne kadar hızlı olduğunu öğrenmemizi sağlar. Bir tür kontrol mekanizması da diyebiliriz. Komutun kullanımı `ping hedef_adresi` şeklindedir.

Örneğin biz www.google.com adresi ile aramızdaki iletişimin hızını sorgulayalım. Bunun için komut satırına `ping www.google.com` yazıyorum. Ancak burada önemli bir nokta var o da bu işlemin biz <kbd>Ctrl + C</kbd> tuş kombinasyonu ile durdurana kadar devam edecek olamasıdır. 

![enter image description here](https://i.hizliresim.com/p6Rz3o.png)

Eğer direk olarak sınırlama getirmek isterseniz komutu `ping -c 4 www.google.com` şeklinde kullanabilirsiniz. Bu sayede www.google.com adresine yalnızca 4 sorgu paketi gönderilir. Elbette buradaki sayı sizin belirlemeniz ile değişebilir.

![enter image description here](https://i.hizliresim.com/kOjBzJ.png)


route
-
Sistemimizde bulunan yönlendirmeleri görmek için kullanabiliriz. En temel kullanımı `route` şeklindedir.

![enter image description here](https://i.hizliresim.com/NZ5ABg.png)

Burada yer alan gateway(ağ geçidi adresi) yerel ağdan internet ağına geçerken kullanılan yönlendirme adresidir.



traceroute
-
Bir önceki kısımda `route` komutu ile gördüğümüz yerel ağda geçerli olan yönlendirme takibini, belirli bir hedef adrese yapabilmemize olanak sağlayan komut `traceroute` komutudur. Yani komutumuz belirli bir hedefe gönderilen paketin hangi host'lardan geçtiğini bizlere gösterir. Bir nevi izlediği yolu yani adımlarını takip etmemizi sağlar. Komutun kullanımı `traceroute hedef_adresi` şeklindedir. Bu sefer hedef adres olarak www.offensive-security.com adresini örnek verelim. Bunun için konsola `traceroute www.offensive-security.com` yazıyorum.

![enter image description here](https://i.hizliresim.com/azo3Q2.png)

Çıktı ile birlikte adresin yönlendirme rotasını görmüş olduk.

whois
-
Whois kavramını bilmeyenler için whois, genel olarak domain bilgilerini içeren bir mekanizmadır. Yani whois domain ne zaman kurulmuş, ne zamana kadar geçerli, kimin üzerine ve bunun gibi diğer tüm bilgileri tutar. Bizler de bu bilgileri konsol ekranından `whois hedef_adresi` şeklinde kullandığımız komut bütünü ile sorgulayabiliriz.

Whois sorgusuna örnek olarak yine offensive-security adresini hedef alalım.

![enter image description here](https://i.hizliresim.com/BLZPkV.png)


host
-
Hedef adres hakkında bilgi almanızı sağlar. Bu komutun alabildiği farklı parametreli bulunmaktadır ancak ben bu kısımda bunlara değinmeden yalnızca temel kullanımına örnek veriyorum. Kullanımı `host adres_adı` şeklindedir.

![enter image description here](https://i.hizliresim.com/YgvkLk.png)

Bu komut hakkında ufak bir araştırma ile çok fazla Türkçe de dahil olmak üzere kaynağa ulaşabilirsiniz.



dig
-

dig(domain information groper/domain bilgi çukuru) DNS kayıtlarına bakmak için kullamımı oldukça kolay olduğundan yaygın olarak kullanılmaktadır.

Bu komutumuz da parametreler alabilmektedir ancak ben burada sizlere yine temel işevinden bahsederek geriye kalan parametreli kullanımların araştırmasını sizlere bırakıyorum. DNS sorgulaması yapmak istediğimiz adresi konsoldan `dig hedef_adresi` şeklinde belirtiyoruz.

Örnek olması açısından ben tekrar offensive-security adresini hedef alıyorum.

![enter image description here](https://i.hizliresim.com/8YlZv1.png)


arp
-
IP-MAC Adresi eşleştirmelerinin tutulduğu tablolardır. Kullanımı `arp` şeklindedir.

![enter image description here](https://i.hizliresim.com/Md6pM9.png)


tcpdump
-
Sistemimizin yaptığı bağlantıları ve sistemimize yapılan bağlantıları anlık olarak görüntülememize olanak sağlar. Kullanımı `tcpdump` şeklindedir.

![enter image description here](https://i.hizliresim.com/QVRBdg.png)

Ayrıca adres çözümlemesi yapmadan direk olarak bağlantıları takip etmek istersek `tcpdump -n` komutunu kullanabiliriz.

![enter image description here](https://i.hizliresim.com/XPBkzD.png)


DNS Ayarları
-
Komut satırından DNS ayarlarımızı değiştirmek istersek DNS bilgilerinin tutulduğu <kbd>/etc/resolv.conf/</kbd> dosyasında değişiklik yapmamız gerekiyor. İşlemeleri adım adım açıklayarak ilerletiyorum.

İlk olarak DNS ayarlarının bulunduğu dosya içeriğine göz atıyorum. Çünkü daha sonra değişiklik yaptığımızda ilk hali ile kıyaslamamız gerekecek. Bu işlemi `cat` komutu yardımı ile gerçekleştireceğiz.

![enter image description here](https://i.hizliresim.com/bBlDoj.png)


Şimdi eski DNS(nameserver) yerine bizim eklemek istediğimiz adresleri `echo` komutu yardımı ile girelim.

![enter image description here](https://i.hizliresim.com/dOn3Vn.png)

Komutları kısaca açıklayacak olursak ilk olarak `echo "nameserver 8.8.8.8" > resolv.conf` komut bütününde `>` karakteri ile birlikte dosya içerisinde var olan ifadeleri sildik ve dosya içerisine `nameserver 8.8.8.8` ifadesini ekledik.

Daha sonra `echo "nameserver 8.8.4.4" >> resolv.conf` komut bütünü ile de daha önce eklediğimiz ifadeye ek olarak diğer bir DNS adresi olan 8.8.4.4 adresini `>>` karakteri yardımı ile ekledik.

Son olarak da eklediğimiz yeni DNS adreslerinin belgeye eklenme durumunu `cat /etc/resolv.conf` komutu ile teyit ettik.

Ayrıca yapılan ayarların kalıcı olmasını istiyorsak konsola `update-rc.d networking deffaults` komutunu girmemiz gerekiyor.


hosts Dosyası
-
Yerel bir alan adı sunucusu işlevindedir. Sistemde alan adı çözümlemesi yapılırken bu dosyaya bakılır. Dosyanın konumu <kbd>/etc/hosts</kbd> şeklindedir. Hemen dosya içeriğine `cat` komutu yardımı ile bir göz atalım.

![enter image description here](https://i.hizliresim.com/5D87Od.png)
