Gerekli Ortamın Kurulması
=

Linux kurmak veya kurmadan kullanmak için çok fazla metod bulunuyor. Ben sadece içlerinde bilmediğiniz bir alternatif metod olması ihtimaline karşı genel kullanımları aşağıda listeliyorum. 

Kurulum ve Kullanım Metodları
-
 
- Sanal olarak kurulum (Vmware & Virtualbox)
- İkincil işletim sistemi olarak kurmak (Dualboot)
- Live versiyon olarak kullanmak.
- Linux VPS aracılığı ile kullanmak.

Şimdi neden kurulum detaylarını anlatmıyorsun diyecek olursanız, burada izahı dokümantasyonu uzatacak ve çok da verimli olmayacaktır. Siz en iyisi hem bana destek olmak hemde de kurulumları ve diğer tüm içerikleri videolu şekilde takip etmek için [buradan](https://www.udemy.com/kali-linux-ile-sifirdan-temel-linux-egitimi/?couponCode=GITHUB) kursumu **indirimli** olarak satın alıp devam edin. Ancak bu kursu almadan da internet üzerinden araştırarak çok fazla kaynağa ulaşabilirsiniz. Fakat benim videolarımın artısı buraya bağlantılı ve açıklık getirici şekilde ilerliyor olması. Yani tamamen sizlerin isteğine bağlı bir durum. Ben yine de kursa bir göz atmanızı öneririm.


<a href="https://www.udemy.com/kali-linux-ile-sifirdan-temel-linux-egitimi/?couponCode=GITHUB">
  <img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/0-%20Gerekli%20Ortam%C4%B1n%20Kurulmas%C4%B1/1.png">
</a>


Sabit diske kurulum işlemi ile ilgili kısa bir açıklama.
-

***Arkadaşlar Merhaba,***

Kurs içerisinde sık sık sorulan bir soruya tek tek yanıt yazmak yerine buradan tek seferde cevap vermek istedim.

Bana sorulan soru diğer kurulum işlemlerinin aksine asıl olan **sabit diskte kurulum işlemini** neden göstermedim ?

Açıkçası .iso dosyasından yapılan bu tarz kurulumlar **her zaman her bilgisayarda aynı tepkileri vermeyebiliyorlar**, ve daha sonrasında **bir çok sistem sorunu meydana gelebiliyor**. Ben de bu yüzden herkesin rahatlıkla ve hemen elinin altında bulunan stabil işletim sistemi imajları ile kurulum yapmayı tercih ettim. 

Aslına bakarsanız .iso dosyasından Kali Linux kurulumu oldukça kolay bir işlem ancak ben dediğim gibi başlangıç aşamasında insanların sorunlarla boğuşup Linux işletim sisteminden kurulum işlemleri nedeniyle soğumalarını kesinlikle istemedim. 

Zaten kursu bitiren adaylar öğrenme aşamasında hata yapmalarına imkan tanıyan güvenli bir çalışma ortamı sunan sanal ve diğer bağımsız ortamlar(vps, usb üzerinden kullanım) sayesinde sistemi kurcalaya kurcalaya tecrübe edinebiliyor ve kurulan sistem sanal olduğu için çökme ve benzeri hatalı durumlarda öğrenci tekrar basit şekilde bir önceki haline dönebiliyor. 

Yani öğrenme aşamasında sistem tarafından öğrenciyi yıpratabilecek her türlü durumu önlemek adına, öğrencilerin hata yaptıklarında veya herhangi bir hata meydana geldiğinde kolay şekilde hatalarını görüp telafi edebilmeleri için sabit diske kurulumu göstermedim. Hatta, hata durumunda sistemin **yedeğinin alınması ve kullanılması ile ilgili** ayrıca detaylı **"Vmware Temel Kullanım Bilgileri"** videosunu ekledim.

Uzattığım için üzgünüm ancak kursun tanıtım videosunda da dediğim gibi emin olabilirisiniz ki ben bu kursu hazırlarken kendi öğrenme sürecinde yaşadığım tüm problemleri ve durumları göz önünde bulundurarak sıfırdan ilk defa linux öğrenecek kişilere göre en iyi hale getirmeye çalıştım. **Yani ben tüm bu sorunları yaşadım ve sizlerin yaşamaması için gereken kurs müfredatını ve düzenini sağladım.** Temelde disk üzerinden kurulum işlemini .iso dosyası ile anlatmamış olmamın nedeni o videoyu çekmeye üşenmem değil, o kurulum işleminin her yönüyle ele alınıp düşünüldüğünde yeni başlayan kullanıcıları(diske kurulum işlemini tercih edecek olanlar) **her anlamda olumsuz etkileyecek olmasıdır**. Sonuçta bu kurs sadece öğrenciyi en iyi şekilde motive edip linux'u sevmesi(Takdir edersiniz ki yeni başlayan ilk kullanıcılar için bu çok çok önemli) için **güvenli, öğrenciye hata yapma imkanı tanıyan ortamda çalışma imkanı tanıyarak sıfırdan motive şekilde linux'u öğrenmesini hedefliyor**. 

Kursu bitirdiğinizde zaten linux sistemini öğreneceğinizden ve kursun da asıl hedefinin öğrenmeyi öğretmek olduğundan kursun bittiği aşamadan sonra her isteyen kullanıcı linux işletim sistemi ile ilgili her yeni bilgiyi..buna diske kurulum işlemi de dahil.. kendi başına kendine güvenerek deneme-yanılma, hata yapma, araştırma, bulma ve bunun gibi süreçlerden kendi başına geçerek tam bir linux kullanıcısı olmayı kendi kendine öğrenecek. 
Takdir edersiniz ki linux işletim sisteminde her gün yeni şeyler ile karşılaşmak mümkün ve bu yeni şeyleri başkaları sürekli olarak bizlere öğretemez, biz ancak kendi başımıza öğrenebilirsek linux kullanıcısı olarak kalırız. **Eğitim boyunca da söylediğim gibi Linux'un temelinde sorun-araştırma-çözüme ulaşım gibi gerçekleşen sürekli bir döngü var.** Bu yüzden araştırma alışkanlığı kazanmak ve kendi kendine sorunu çözmeye yönelik işlemler yapmak linux kullanıcısı olmanın temelinde var ve ben de eğitim boyunca bunu sizlere aşılamaya çalışıyorum.

Umarım sizlere bahane veya benzeri bir neden gibi gelmemiştir. Kendi naçizane tecrübeme dayanarak .iso dosyası ile diske kurulum işleminin tüm yukarıda yazdıklarımın ve daha yazmadıklarımın da dahilinde, artılarından çok herkes için özellikle de **sıfırdan Linux öğrenmek isteyen herkes** için **eksileri** olduğunu düşünüyorum. **Bu yüzden sabit diske kurulum işlemini bu eğitime dahil etmem herkesin iyiliği için mümkün değil.** Ancak size kurulum ile ilgili video kaynaklar önerebilirim. 
Düşündüğünüzde video çekmem bu kadar yazıyı yazmamdan muhtemelen daha kısa sürecekti ancak ben gerçekten kaliteli öğrenimi savunduğum için üzülerek ve nedenini de size açıkça izah ederek bu talebinizi kursa ekleyemeyeceğimi bildiriyorum.

Bu kurs baştan sağma değil ne yapılmışsa sıfırdan öğrenecek arkadaşlar için en iyisinin ne olacağını, uzun uzun araştırmam ve tecrübelerime dayanarak belirlemem ile ortaya çıkmıştır. ***Artılar ve eksiler hepsi benim nezdimde hesaplandı eminim ki eğitimi tamamladığınızda sizler de bana hak vereceksiniz.***


*Kursumu tercih ettiğiniz ve bana kurs ile ilgili geri bildirimlerde bulunduğunuz için çok teşekkür ederim.*

***Herkese iyi çalışmalar başarılar dilerim..***
