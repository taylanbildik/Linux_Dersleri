Bilgi Almak
=

Bilgi alma komutları sistemimizde bulunan herhangi birşey hakkında(programlar,dosyalar vs..) bilgi almamızı sağlayan komutlara verilen genel isimdir. Bu komutlara gerekli durumlarda çok sık başvururuz. Şimdi bilgi alma komutlarının neler olduğunu ve kullanım şekillerine bakalım.

uname
-
Tek başına çekirdek adını verse de aldığı parametreler ile farklı bilgiler de sunabilir. Hangi parametrenin ne iş yaptığını <code>man uname </code> komutu ile öğrenebileceğinizi biliyorsunuz. Kısaca bilmemiz gereken; bu komut genel olarak sistemde kullanılan çekirdek hakkında bilgiler verir.

![enter image description here](https://i.hizliresim.com/EPlXDD.png)

hostname
-
Bilgisayarımızın adını diğer bir adıyla host adını verir. Eğer isterseniz bu adı değiştirebilirsiniz. Örnek veriyorum komut satırına <code>hostname burak </code> yazarsanız hostname yani bilgisayarınızın adı burak olarak değişmiş olacaktır.

![enter image description here](https://i.hizliresim.com/5D9Znq.png)

Ancak bu ayar kalıcı değildir. Oturumu kapatıp tekrar açtığınızda değiştirmiş olduğunuz adın tekrar eski haline döndüğünü görebilirsiniz. Kalıcı olmasını ayarlardan kolaylıkla sağlayabiliriz. Sürümden sürüme değişiklik göstersede sırasıyla; ayarlar>sistem>ayrıntılar>genel aygıt adı: kutusuna istediğiniz ismi yazabilirsiniz. Eğer dediğim yoldan ulaşamadıysanız ayarları biraz kurcalayarak bulabilirsiniz.

![enter image description here](https://i.hizliresim.com/azqVAz.gif)

Ayrıca tamamen komut satırından da kalıcı bir hostname değişikliği yapmak mümkün. Bunun için <kbd> /etc/hostname</kbd> konumunda yer alan <kbd>hostname</kbd> dosyasını açmamız gerek. Dosyamızı açmak için konsola <code> nano -w /etc/hostname</code> komutunu veriyoruz.
Komutumuzun ardından açılan dosyamızda ismimizin yerine istediğimiz ismi yazıyoruz. Ve <kbd>Ctrl + X</kbd> tuş kombinasyonu ile dosyamızdaki değişiklikleri kaydederek çıkıyoruz.

![enter image description here](https://i.hizliresim.com/6JRoL0.png)


Değişikliğin geçerli olması için oturumun kapatılıp tekrar açılması gerek daha sonra hostname yani bilgisayarınızın ismi değişmiş olacaktır.

lsb_release
-
Bu komut kullandığımız dağıtım hakkında farklı bilgiler sunan parametrelere sahiptir. Detaylı bilgi için man kılavuz sayfasını kontrol edebilirsiniz. Ben örnek olası açısından <code>lsb_release -a </code> komutunun çıktısını veriyorum.

![enter image description here](https://i.hizliresim.com/jyJ0LJ.png)

whoami
-
Sinemayı takip eden arkadaşların ilk aklına ne geldi biliyorum :) 
Bu komut kimlik sorgu işlevi görüyor. Komut satırımıza komutumuzu vererek sonucuna bakalım.

![enter image description here](https://i.hizliresim.com/76m9oW.png)

Komut çıktısı bize mevcut kullanıcının <code>root</code> kimliği ile çalıştığını göstermiş oldu.

Yine <code>whoami</code> komutuna benzer ancak çok ufak farkların olduğu birkaç komutu daha peş peşe komut satırına girerek çıkan sonuçlar üzerinden anlatıma devam edelim.

![enter image description here](https://i.hizliresim.com/gOldA3.png)

Sıra sıra bakalım:

**whoami:** mecvut kullanıcının hangi kimlikle çalıştığını gösteriyor.
**who:** sistemde hangi kullanıcının çalıştığını gösteriyor.
**w:** hangi kullanıcı hangi uygulamayı çalıştırıyor bunun bilgisini gösteriyor.
Bunun dışında bu komutlar da parametre alabiliyorlar. Hangi parametreleri aldıklarını nasıl öğrenebileceğinizi zaten biliyorsunuz. Ben yinede aşağıda birkaçının çıktısını bırakıyorum.

![enter image description here](https://i.hizliresim.com/Pl38P5.png)

uptime
-
<code>uptime</code> komutu sistemimizin ne kadar zamandır açık olduğu bilgisini verir.

![enter image description here](https://i.hizliresim.com/lOYJjJ.png)


date
-
İsminden de anlaşılacağı gibi bu komut bize sistemin o anki tarih ve saat bilgisini veriyor.

![enter image description here](https://i.hizliresim.com/y0dY4k.png)

which
-
Herhangi bir komutun tam yol bilgisini öğrenmek için kullanılır.

![enter image description here](https://i.hizliresim.com/D7XzBo.png)

whereis
-
Bu komutunda özel parametreleri vardır man sayfasından kontrol edin lütfen. Bunun dışında parametresiz hali <code>apropos</code> komutuna benzer şekilde bir çıktı verir. Ancak </code> komutundan farklı olarak ilgili komutun man sayfası konumunun tam dizin adresini belirtir.

![enter image description here](https://i.hizliresim.com/dOjQPp.png)

Ayrıca diğer parametrelerini de kesinlikle man sayfasından inceleyin.

locate
-
Bu komut ile aradığımız bir dosyanın nerede olduğunu öğrenebiliriz. Komutun çıktısı bize dosyanın bulunduğu dizin veya dizinleri veriyor. Örneğin daha önce PATH yoluna eklediğim <kbd>komut.sh</kbd> dosyasını <code>locate</code> komutu ile aratıyorum. Sonuç aşağıdaki şekilde:
