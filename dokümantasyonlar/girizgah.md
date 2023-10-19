# Girizgah

Eğitim serisi boyunca GNU/Linux işletim sistemini temel düzeyde tanıyıp yönetme yolculuğunda birlikte ilerliyor olacağız. Eğer eğitimi tekrar etmek için burada değilsen, bu bölümü atlamanı kesinlikle önermiyorum. Çünkü bu bölüm, eğitimden ne beklemen gerektiği ve nasıl maksimum verimi alabileceğini izah ettiğim önemli bir bölüm. Ancak her şeyden önce bu eğitimden alabileceğin verimin senin çabalarınla doğru orantılı olduğunun da farkında ol lütfen.

<p class="yesil">Güzel şeyler çaba, eylem ve tercihlerimizin sonucu olarak ortaya çıkar. <strong>~Epiktetos</strong></p>

Olası soru işaretlerini baştan giderebilmek adına birkaç alt başlıkla temel kavramlara açıklık getirebiliriz. 

### Hedefimiz

Bu eğitim Linux sistemini temel düzeyde anlayıp yönetebilmek için giriş seviyesi bilgi sunmayı amaçlıyor. Kişisel veya profesyonel(devops, siber güvenlik, veri bilimi, yazılım geliştirme, vb..) amaçlarla giriş düzeyinde temel Linux öğrenmek isteyen herkese uygundur.

### Neden Linux Öğrenmeliyiz ?

İronik olarak, Linux'un önemini Linux'u bizzat deneyimleyip öğrendikten sonra kavramanız çok daha olası. Yine de çok kısaca özetlemek gerekirse; açık kaynak ve özgür yazılım ekosisteminin getirdiği yüksek verimli, esnek ve özgür çalışma ortamı dolayısıyla Linux sistemi hem kişisel hem de profesyonel amaçlarla tercih edilen bir işletim sistemi. Dolayısıyla Linux öğrenmek kendinize yapabileceğiniz çok mantıklı bir yatırım.

### Anlatım Biçimi

Eğitim serisi boyunca yazılı ve yer yer resimler ile desteklenen sıralı bir müfredat düzenini takip edeceğiz. Baştan belirteyim; konuları kısa kesmeden, **gerekeni gerektiği kadar(ne az ne çok)** açıklayarak ve bizzat uygulamalar yaparak ilerliyor olacağız. Doğrudan "***bu komut şu işe yarar***" gibi bir anlatımdan ziyade Linux sisteminin temel işleyişini kavramamızı sağlayacak düzeyde tüm konuları birbiri ile bağlantılı şekilde ele alıyor olacağız. Yani komutları açıklamadan önce gereken temeli oluşturmak üzere kavram açıklamaları gerçekleştiriyor olacağız. Bu yaklaşım yeni başlayan kullanıcılara biraz sıkıcı veya gereksiz detaylı gelebiliyor olsa da kalıcı ve etkili şekilde Linux öğrenmek için doğru bir yaklaşım olduğuna inanıyorum. Özetle buradaki anlatımlar birbiri ile bağlantılı olan pek çok konu ve kavramın sırasıyla açıklanması şeklinde ele alınıyor. Yani tüm eğitim birbiri ile ilişkili olan bir bütünün parçalarından ibaret. Eğitim sonunda zaten bu durumu bizzat kendiniz de görmüş olacaksınız.

### Öğreneceklerimiz

Eğitim içerisinde pek çok farklı konu başlığı ve bölümlendirme bulunuyor olsada aslında pek çok konu birbiri ile yakından ilişkili. Bu sebeple eğitimin bazı bölümlerinde geçmişte bahsedilen kavramlara atıfta bulunuyor ya da aynı konuyu, yeni konuyla birlikte tekrar ele alıyor olacağız. Bu gibi durumlara eğitimin düştüğü tekrarlardan ziyade, öğrenilen bilgilerin sentezlenmesi olarak bakmak çok daha doğru bir yaklaşım olacaktır. Bu eğitimdeki amacımız GNU/Linux sisteminin sahip olduğu temel özellikleri kavrayıp, sistemi komut satırı üzerinden yönetebilecek becerileri kazanabilmektir. Zaten temeli doğru biçimde kavradıktan sonra sistemi çok daha etkili kullanma ve gerektiğinde hakkında çok daha fazla bilgiyi edinebilme kabiliyetimizin önü açılacaktır. Bizler de bu eğitimde Linux üzerinde kendimizi geliştirebilecek kadar temel bilgi düzeyine erişmeyi hedefliyoruz. Eğer bir sertifika sınavına hazırlanıyorsanız tek yapmanız gereken sertifika müfredatındaki bilmediğiniz konuları araştırıp öğrenmek. Bizim ele alacağımız konuları görmek isterseniz [buradan]({{ site.url }}/temel-linux){:target="_blank"} tüm genel başlıklara göz atabilirsiniz.

Ayrıca henüz eğitimin başındayken belirteyim, biz bu eğitimde **grafiksel arayüze odaklanmayacağız**, öncelikli hedefimiz komut satırı üzerinde sistemi rahatlıkla yönetebilme becerisi kazanmak. Ancak merak etmeyin komut satırı üzerinden sistemi tanımaya başladığınızda zaten grafiksel arayüz üzerinde de son derece rahat şekilde hareket edebiliyor olacaksınız.

Sizlerden tek ricam tüm eğitimi sabırla ve uygulama yaparak sıralı şekilde takip etmeniz. Ayrıca benim anlatımlar sırasında örnek olarak sunduğum uygulamalar dışında da mutlaka harici olarak kendiniz de çeşitli alıştırmalar ve araştırmalar yapın lütfen. Zira her konu için çoklu örnekler vermemiz konuyu gereksiz uzatacağı için bu eğitimde yalnızca konuyu kavramanıza yetecek düzeyde örnekler bulunuyor. **Yani eğitimden alacağınız fayda düzeyi aslında tamamen sizlerin gayretine bağlı.** 

### Gereksinimler

Bu eğitim serisini takip etmek için kararlılık, merak ve mümkünse internet erişimine sahip bir bilgisayara sahip olmanız yeterli. Eğitime başlamak için daha önceden GNU/Linux sistemlerini kullanmış olmanız şart değil, çünkü sıfırdan başlayacağız.

<p class="mavi"><strong>ℹ️ Not:</strong> Eğer sürekli internet erişiminiz yoksa, ilgili sayfa içeriklerini tarayıcınız üzerinden pdf olarak kaydedip çevrimdışı şekilde takip edebilirsiniz.</p>


Girizgah olarak söylemek istediklerim bunlar. Böylelikle, eğitimin amacından ve genel ilerleyiş biçiminden kısaca bahsetmiş olduk.

<p class="sari"><strong>⚠️ Dikkat:</strong> Eğitim boyunca ele alınan tüm bilgiler eğitim amaçlı olup, kendi test ortamımda test edip size sunduğum bilgilerden oluşuyor. Eğitim içerinde ele alınan bilgilerin ve komutların kullanımı sonucu doğabilecek hata ve sorunlardan kendiniz sorumlu olacağınız için, özellikle canlı olarak servis sunan sistemler yerine öncelikle test ortamlarında bu komutları kullanmanızı öneriyorum. Mevcut eğitim serisinin amacı yeni öğrenmeye başlayan kişilere Linux sistemini temel düzeyde tanıtmak olduğu için, profesyonel amaçlarla kullanılan sunucular üzerinde deneyimsiz kullanıcılar tarafından uygulanması beklenmiyor. Dolayısıyla buradan öğrendiğiniz bilgileri uygulama ve sonuçları ile yüzleşme noktasında sorumluluk tamamen sizlere ait.</p>
