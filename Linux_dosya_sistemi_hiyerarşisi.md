Linux Dosya Sistemi Hiyerarşisi
=
Linux’un Windows’dan farklı olan dosya hiyerarşi sistemini kavramak ve ileride ele alacağımız dosya-dizin işlemleri konularında zorluk çekmemek adına bu kısımda “***Linux dosya sistemi hiyerarşisi***” konusunu ele alacağız.


## Nedir bu hiyerarşi ve neden gerekli? ##

Hiyerarşi kelimesinin sözlükteki genel anlamı; “Yunanca yetki, rütbe veya aşama sırası anlamında kullanılan kelime.” şeklindedir.

Linux sistemlerinde de aynı şekilde sınıflandırma yapılarak dosyaların sıraya koyulmasına bunun sonucunda tıpkı bir ağaç misali oluşan dosya sistemlerine genel olarak “**Linux dosya sistemi hiyerarşisi**” deniyor. 

Genellikle bütün dağıtımlarda aynı hiyerarşik düzen vardır.(Genellikle diyorum çünkü küçük farkların dışında tüm dağıtımlar aynı hiyerarşik yapıya sahiptir. Zaten eğer her dağıtımın hiyerarşik dosya sistemi tamamen farklı olsaydı o zaman geliştiriciler için ayrı bir uğraş ve içinden çıkılmaz bir karmaşa olurdu. O yüzden buraya çok takılmayın lütfen, istisnalar kaideyi bozmaz diyerek devam ediyoruz. :) )

Linux **"Tekil Hiyerarşik Klasör Yapısı"**'nı benimsemiştir. Yani bu da şu demek oluyor; her şey <kbd>/</kbd> (slash) simgesiyle ifade edilen <code>root</code> klasöründen başlar, aşağıya doğru iner. Merak edenler için  de söyleyelim “Root” kelimesinin karşılığı da Türkçe olarak “kök” anlamına geliyor. Bu sayede “root” kelimesinin de nereden geldiği ve neden kullanıldığı da az çok açıklığa kavuşuyor sanırım. 

![enter image description here](https://i.hizliresim.com/OoEvq3.png)

Linux, `/` (root) klasöründen başlayarak, boot işlemindeki önem sırasına göre klasörleri ilgili konumlara yerleştirir. Bu yerleştirme işleminde yani klasörler arası geçişlerde klasörler arasını ayırmak için <kbd>/</kbd>(slash) işareti kullanılır. Herhangi bir dizin ya da dosyanın sistemdeki adresi önce kök dizinden başlar sonra o dosya ya da dizine ulaşmak için geçilmesi gereken dizinler arasına yine <kbd>/</kbd> yazılarak elde edilir. Örneğin `/home/burak` yolu, kök dizininde(/), home isimli dizin içindeki burak dizininin konumunu belirtir. Bu ifadede en baştaki `/` işareti kök dizini belirtmektedir.

<img src="https://i.hizliresim.com/azXYRR.gif" width="875">

Ayrıca belirtmekte fayda var, Linux küçük büyük harf duyarlılığına sahiptir. Yani Linux'ta `DOSYA_ADI`,`Dosya_Adı`,`dosya_adı`,`DoSyA_aDı`..vb. gibi ismlendirilmiş dosyaların hepsi **ayrı/farklı** bir dosya olarak tanınır. Windows'ta ise aynı isimli dosyalar, küçük büyük harf ayrımı gözetilmeksizin aynı olarak tanınır. Hemen bu durumu teyit etmek için Windows ve Linux sistemlerinde dosya oluşturma işlemi gerçekleştirelim.

**#Windows**
<img src="https://i.hizliresim.com/XPd6mk.gif" width="875">
Gördüğünüz gibi Windows işletim sisteminde büyük küçük harf duyarlılığı bulunmuyor. 

Gelin bu durumu birde Linux sisteminde test edelim.

**#Linux**
<img src="https://i.hizliresim.com/QVQLXv.gif" width="875">
Test sonucundan da anlaşılacağı gibi Linux işletim sisteminde küçük büyük harf duyarlılığı bulunuyor. 
O yüzden işlemlerimizi yaparken özellikle de ileride konsol(terminal/komut penceresi) ekranından işlem yaparken bu küçük büyük harf duyarlılığı son derece önem kazanacak. Bu önemli detayı da öğrendikten sonra gelin anlatıma devam edelim.

Daha iyi anlaşılması adına anlatımları Windows ile karşılaştırma yaparak gerçekleştiriyorum. Ve yine bir karşılaştırma daha; Windows işletim sistemine bir program eklediğimizde programın dosyaları `Program Files`(Program Dosyaları) dizini içerisine programın kendi adındaki bir klasöre eklenir.(Örneğin `C:\Program Files\program_adı` şeklinde.) Programın dosyaları tek bir dosya içerisindedir yani.(Anlatımda kast edilen program dosyalarının tek dosya içerisinde bulunma durumuna harici sistem kayıt dosyaları ve benzeri dosyalar dahil değildir.) Ancak Linux'ta bir program eklenme durumunda programın tüm dosyaları programın isminin yer aldığı bir klasöre gitmez. 

Örneğin; sistem otomatik olarak program dökümanlarını `/usr/share/doc/program_ad/` altına koyarken, eğer varsa info dosyaları da,`/usr/share/info` dizini içerisine atar. Yani kısacası programı kurduğunuzda programın dosyaları ilgili konumlara otomatik olarak dağılır. Tek bir klasör içerisinde yer almaz.

Özetle Linux sisteminde her şey bir dosya(root-kök dosyası(`/`)) içerisinde yer alır. Ve bu dosya sistemi hiyerarşik bir yapıda bulunur. Tüm bu tek kök dosya sistemi ve hiyerarşik yapılanmanın amacı **çok kullanıcılı ve dağıtık bir sistemi güvenli ve kolay bir şekilde kurup yönetebilmektir**. Buradaki "**dağıtık**" kavramı ne diyecek olursanız; Örneğin birden çok bilgisayarın olduğu bir ağda bilgisayarlardan birisindeki bir ağ dizinine(neden ağ üzerinden bağlanıyor? neden ağ dizini aracılı ile yapılıyor ? gibi sorularınız varsa buradaki ağ kavramı bilgisayarları birbirine bağlayan bağlantı ağı anlamında. Yani buradaki esas önemli nokta bilgisayarların birbirine bağlanmasıdır.) kök dosyası altındaki dosyalar istenildiği gibi dağıtılarak bölünebilir. Örneğin x_bilgisayarı'na `/bin` dizini bağlanır, bir diğer bilgisayara `/var` dizini içerisindeki e-posta sunucusunun dosyalarının olduğu dizin, bir diğerine de `/home` dizini bağlanabilir.

Bu sayede fiziksel olarak pek çok bilgisayara dağılmış olan bir sunucu tek bir kök dosya sisteminden sanki tek bir bilgisayarmış gibi yönetilerek kullanılabilir. Bu sayede hem iş yükü dağılımı yapılarak sistem performansı arttırılmış olur hem de yetkilendirme ve yönetim kısıtlamaları dahilinde sistemin ayrı ayrı parçalara dağılımı ile sisteme ekstra güvenlik önlemi katılmış olunur.
Biraz daha net anlamak adına aşağıdaki görseli inceleyebilirsiniz.

![](https://i.hizliresim.com/VrEB1B.png)

Her ne kadar bu durum tek kullanıcı ve tek bilgisayardan oluşan masaüstü kullanımı için gereksiz gibi görünsede Linux'un sunucular için sağladığı bu güvenlik özellikleri masaüstünde de aynen kullanılmaktadır.
Yani örneğin sistemde "burak" isimli kullanıcı hesabı var diyelim. Burak kullanıcısının sistemi kullanması için gereken sistem dosyalarını çalıştırma yetkisi var yani sistemi normal bir şekilde kullanabiliyor. Ancak eğer burak kullanıcısının dosyaları değiştirme yetkisi yoksa /home/burak dizininden önceki dizinlerde değişiklik(dosyaları silme, üzerine veri yazma-okuma vs..) yapamaz. Bu sistem sayesinde bütün kullanıcılar yetkileri dahilinde işlemlerini güvenli şekilde yerine getirebilir.
