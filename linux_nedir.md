Linux Nedir ?
=
Başlamadan.. Şunu bilin ki Linux tek başına işletim sistemi değil çekirdektir!

UNIX
-
Burada sizlere çok tarihi veya çok teknik olmayan bir üslupla, linux hakkında genel bilgi sahibi olamanızı sağlayacak şekilde Linux'un ortaya çıkış hikayesini anlatacağım. Zamanında Bell Laboratuvarı'nda geliştirilen UNIX adında bir işletim sistemi vardı. Bu sistem kendi bünyesinde bulundurduğu araçları sayesinde üniversite ve diğer ihtiyaç duyulan yerlerde kullanılıyordu. Buraya kadar her şey gayet güzel ancak Unix lisans ücreti istiyordu ve bu durum çoğu kullanıcının hoşuna gitmedi. Bunun sonucunda "para ödemek yerine bende kendi işletim sistemimi yazarım" diye düşünenler ortaya çıktı ve bu da UNIX'e mecbur olunmadığı eğer istenirse yeni bir sisteminin yazılabileceği düşüncesini ortaya koydu ve bir akımı başlattı. Bunun sonucunda birçok işletim sistemi geliştirme girişimleri oldu ancak sonuçta geliştirilen sistemler stabil şekilde çalışmıyorlardı. Tabi bu durum sonsuza kadar böyle kalmayacaktı..

Linus Torvalds
-
Bir efsanenin doğuşu..

Buraları her ne kadar istemesem de kısaca geçmek durumundayım ama eğer "Linux kullanıyorum" demek istiyorsanız kesinlikle bu konuları araştırın ve ayrıca [Revolution OS](https://www.youtube.com/watch?v=cEhnQN1ZmDI) belgeselini de izlemeden geçmeyin derim.

İnsanların lisans ücretinden kaçmak için kendi işletim sistemini yazma akımı devam ediyorken bu durum [Linus Torvalds](https://www.wikiwand.com/tr/Linus_Torvalds)'ı da etkilemiş olacak ki Linus, [UNIX](https://www.wikiwand.com/tr/UNIX)'ten esinlenerek Helsinki Üniversitesi'ndeyken kendi işletim sistemi çekirdeğini yazdı. UNIX'ten esinlendi ancak bunu hiçbir kod alıntısı yapmadan sıfırdan yazarak başardı. Ve bu geliştirdiği çekirdeğin insanlara(topluluklar vs..) ulaşmasını sağladı ve insanların verdiği dönütlerle düzenlemeler yaparak çekirdeğin daha da kullanışlı hale gelmesini sağladı. Ve bu geliştirdiği çekirdeğe(kernel) "[Linux](https://www.wikiwand.com/tr/Linux)" adını verdi. Ancak Linux bir çekirdekti ve içerisinde UNIX gibi araçları bulundurmuyordu.

Linux cephesinde bunlar yaşanırken [Richard Stallman](https://www.wikiwand.com/tr/Richard_Stallman) , [GNU genel kamu lisansı](https://www.wikiwand.com/tr/GNU_Genel_Kamu_Lisans%C4%B1)nı ortaya atar ve [özgür yazılım](https://tr.wikipedia.org/wiki/%C3%96zg%C3%BCr_yaz%C4%B1l%C4%B1m)ı savunur. Nedir bu genel kamu lisansı ve özgür yazılım diyecek olursanız lütfen okumaya devam edin.

GPL
-

GNU GPL (General Public kısayollar - Genel Kamu Lisansı) açık kaynağı destekleyici bir lisans türü olup, ilk defa açık kaynak kodlu yazılımların kapalı kaynak kodlu hale getirilerek satılmasından rahatsız olunmasıyla öneri olarak geliştirilmiştir.

GPL 4 temel özgürlük üzerine kurulmuştur bunlar:

- **Özgürlük 1:** Programı sınırsız kullanma özgürlüğü.
- **Özgürlük 2:** Programın nasıl çalıştığını inceleme ve amaçlara uygun değiştirme özgürlüğü.
- **Özgürlük 3:** Programın kopyalarını sınırsız dağıtma özgürlüğü.
- **Özgürlük 4:** Programın değiştirilmiş halini dağıtma özgürlüğü.
GPL Richard Stallman tarafından geliştirilmiş çok akıllıca detaylarla bağlayıcılığı bulunan lisans türüdür. Burda herkes kazançlıdır. [Kaynak kodları](https://www.wikiwand.com/tr/A%C3%A7%C4%B1k_kaynak) paylaşılmak zorunda olduğu için her şey şeffaf ve oldukça berraktır . Burada insani bir hizmet vardır. Yani savunulan şey daha fazla rant değil, insanların gönül rahatlığı ile sınır olmadan ihtiyaçlarını karşılamasıdır. Bu konu hakkında ayrıca avantajları ve dezavantajları sıralayabiliriz ancak konuyu çok genişletmemek ve sizlere araştırma kendi kendine bulup öğrenme alışkanlığı kazandırmak adına bu konuyu burada kesiyorum. Ben yazmaktan üşenmiyorum ancak benim burada yazıyı genişletmem sizin araştırıp kendin kendinize öğrenmenizden ve bu araştırma alışkanlığını kazanmanızdan daha yararınıza olmayacak lütfen buna inanın. Birde benim konu içinde veya dışında belirtmiş olduğum kaynaklarla sakın ola sınırlı kalmayın. Ben bir başlangıç noktası ve referans olması adına sizlerle bunları paylaşıyorum. Benden bu yüzden nefret edebilirsiniz ancak, araştırma ve kendi kendine öğrenme ateşi sizi sardığında hak vereceğinizi umuyorum. Sözümü o çok bilindik bir çin ata sözü ile noktalıyorum.

> **"Bir kişiye iyilik yapmak istiyorsan ona balık verme, balık tutmayı öğret." *Konfüçyüs***

GNU
-

GNU, açık kaynak hareketinin doğrultusunda geliştirilen, araçların içinde bulunduğu ücretsiz ve herkes için ulaşılabilir bir işletim sistemidir. Ancak GNU için her şey her daim güllük gülistanlık değildi. GNU içinde kendine ait güçlü araçlarını bulundurmasının yanı sıra kararlı bir çekirdeğe sahip değildi. Çekirdek için denemeler yapılmış ancak kararlı bir çekirdek oluşturulamamıştı.

Tam da bu noktada Linus Torvalds'ın geliştirip topluluğa sunduğu ve topluluk doğrultusunda geliştirdiği çekirdek yazılımı, GNU ile tencere kapak uyumu olacak şekilde bir araya geldi ve ortaya bir GNU/Linux efsanesi çıktı. İşte GNU/Linux devrimi kısaca bu şekilde oldu. Hem GNU'nun hem de Linux'un topluluğa bağlı dönütlerle geliştirilmesi doğrultusunda herkese açık, ücretsiz ve sınırsız geliştirilme potansiyeline sahip gerçek anlamda insana hizmet eden bir işletim sistemi ortaya çıkmış oldu.

Sonuç Olarak
-
Linux bir işletim sistemi değil çekirdektir(kernel) GNU/Linux bütünü bir işletim sistemidir. Ancak genellikle söylenmesi uzun veya zor geldiği için zamanla sadece Linux olarak geçmeye başlamıştır. Ben de yazımda GNU/Linux yerine Linux kullanıyor olacağım. Ancak emin olun çekirdekten(kernel) yani Linux'tan bahsettiğimde ve GNU/Linux(işletim sistemi)'tan bahsettiğimde hangisini kastettiğimi anlıyor olacaksınız.
