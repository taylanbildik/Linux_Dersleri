Joker Karakterler(wildcards)
=

Bu kavram sizlere kesinlikle yabancı değil daha önceki kısımlarda defaatle kullanmış ve joker(wildcard) karakterlerinin az da olsa işlevini görmüştük. Bu kısımda da bu konu hakkında bilgi sahibi olacağız.

joker (wildcard)
-
Linux kullanımında işimizi konsoldan yürüteceğimiz zaman bir komutun tek seferde birden fazla nesneyi etkilemesini yani kapsamasını isteyebiliriz. Örneğin bir dizindeki dosyaların tamamını silmek istiyoruz bu iş için aşağıdaki gibi tüm dosya adlarını komut satırına yazmak çok zahmetli ve gereksiz olacaktır.

![enter image description here](https://i.hizliresim.com/bBgYg8.png)

Yukarıdaki kullanımın yerine joker karakter(wildcard)desteğini kullanmak bizlere çok fazla avantaj sağlar. Ayrıca gördüğünüzde şaşırmayın, joker karakterler(wildcards) "globbing" olarak da adlandırılmakatadır.

Bahsi geçen joker karakterler ve kullanım alanları aşağıdaki gibidir;

**`*`** : Anlamı `*` olan yere herhangi bir şey gelebileceğidir.

Örneğin "dosya" ismiyle başlayan tüm belgeleri tek seferde silmek için komutu `rm  dosya*` şeklinde kullanabilirim.

![enter image description here](https://i.hizliresim.com/dOW0W4.png)

Ayrıca bu yıldız (asterix)<kbd>*</kbd> işaretinin farklı kullanım şekilleri de var. Farklı kullanımların açıklaması ile devam edelim.

Herhangi bir komutu, örneğin listeleme işlevinde olan `ls` komutunu `ls dosya*` şeklinde kullanırsak komut yıldız (asterix) `*` işaretinden önce yazmış olduğumuz "dosya" ismi ile başlayanları kapsar.

![enter image description here](https://i.hizliresim.com/5Do2oR.png)

Aynı şekilde yıldız (asterix) * işaretinden sonra bir ifade belirtirsek de komut o ifade ile bitenleri kapsayacak şekilde çalışır.

![enter image description here](https://i.hizliresim.com/A10g00.png)

**? :** Herhangi bir tek karakterle eşleşir

Karakterin kullanımına örnek olarak. Diyelim ki dizin içerisinde hem "index_page" hem de "index-page" şeklinde isimlere sahip dosyalarınız var. Yani başlangıç ve bitiş isimleri aynı ancak aradaki işaretler farklı. İşte böyle bir durumda hem <kbd> _ </kbd> işaretini hem de <kbd> - </kbd> işaretini karşılayacak olan soru işareti <kbd>?</kbd> joker karakterini kullanabiliriz.

![enter image description here](https://i.hizliresim.com/0E4L48.png)

Çıktılarda da görüldüğü gibi <kbd>?</kbd> karakteri dosya isimlerinin arasında yer alan <kbd>-</kbd> ve <kbd>_</kbd> işaretini de karşılayarak `ls -l index?page` şeklindeki komut ile çıktıya her ikisini de bastı.

**[] :** <kbd>?</kbd> karakterine benzer olmakla birlikte daha çok hedefe odaklı çalışır.

<kbd>[]</kbd> karakterinin kullanımı, iki köşeli parantez arasına ulaşmak istediğiniz hedefteki ayırıcı karakterli yazmak üzerinedir.

Örnek olaması açısında "dosya" isimli belgelerden sadece sonunda 2,3,4 olanları kapsayacak bir komut olması için konsola `ls -l [234]` komutunu verdim.

![enter image description here](https://i.hizliresim.com/4aZ8ZL.png)

Bir örnek daha verelim.

[Dd]osya[Aa]dı şeklinde bir belirtme; DosyaAdı, Dosyaadı, dosyaAdı, dosyaadı şeklindeki bütün isimleri kapsayacaktır. Bu sayede ilgili dosya için küçük büyük harf kombinasyonu yakalanmış olur.

Ayrıca kullanım şekillerine çok fazla örnek verilebilir ancak burada birkaç örnek daha vererek keşfi size bırakıyorum.

Burada belirtilen **x y z** temsili değerleri ifade etmektedir !

**[0-9] :** 0'dan 9'a kadar olan rakamları kapsar.

![enter image description here](https://i.hizliresim.com/JQ767Y.png)

**[x,y,z] :** belirtilen değerlerle eşleşenleri basar.

![enter image description here](https://i.hizliresim.com/Oo3B3Z.png)

**[x-z] :** x ile z değerleri arasındaki karakterlerle eşleşir.

![enter image description here](https://i.hizliresim.com/z02Y2Y.png)

**[xyz] :** belirtilen değerlerle eşleşenleri basar.

![enter image description here](https://i.hizliresim.com/G9p5p2.png)

**[!xyz] :** Belirtilen karakterlerin dışındakileri ile eşlenir.

![enter image description here](https://i.hizliresim.com/LbYE2o.png)

**[!x-z] :** Verilen x ile z değeri arasındakiler haricindeki karakterler ile eşlenir.

![enter image description here](https://i.hizliresim.com/rOmRjm.png)
