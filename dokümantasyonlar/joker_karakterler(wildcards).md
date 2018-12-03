
Joker Karakterler(wildcards)
=

Bu kavram sizlere kesinlikle yabancı değil, daha önceki kısımlarda defaatle kullanmış ve **joker(wildcard) karakterlerinin** az da olsa işlevini görmüştük. Bu kısımda da bu konu hakkında bilgi sahibi olacağız.

joker (wildcard)
-
Linux kullanımında işimizi konsoldan yürüteceğimiz zaman bir komutun tek seferde birden fazla nesneyi etkilemesini yani kapsamasını isteyebiliriz. Örneğin bir dizindeki dosyaların tamamını silmek istiyoruz diyelim; bu iş için aşağıdaki gibi tüm dosya adlarını komut satırına yazmak çok zahmetli ve gereksiz olacaktır.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/15-%20Joker%20Karakterler/1.png" width="875">


Yukarıdaki kullanımın yerine joker karakter(wildcard) desteğini kullanmak bizlere çok fazla avantaj sağlar. Ayrıca gördüğünüzde şaşırmayın, kimi kaynaklarda **joker karakterler(wildcards)** "**globbing**" olarak da adlandırılmaktadır.

Bahsi geçen joker karakterler ve kullanım alanları aşağıdaki gibidir;

**`*`** : Anlamı `*` olan yere herhangi bir şey gelebileceğidir.

Örneğin "**dosya**" ismiyle başlayan tüm belgeleri tek seferde silmek için komutu `rm  dosya*` şeklinde kullanabilirim.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/15-%20Joker%20Karakterler/2.png" width="875">

Ayrıca bu yıldız (asterix)<kbd>*</kbd> işaretinin farklı kullanım şekilleri de var. Farklı kullanımların açıklaması ile devam edelim.

Herhangi bir komutu, örneğin listeleme işlevinde olan `ls` komutunu `ls dosya*` şeklinde kullanırsak komut yıldız (asterix) `*` işaretinden önce yazmış olduğumuz "**dosya**" ismi ile başlayan tüm her şeyi kapsar.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/15-%20Joker%20Karakterler/3.png" width="875">

Aynı şekilde yıldız (asterix) <kbd>*</kbd> işaretinden sonra bir ifade belirtirsek de komut o ifade ile bitenleri kapsayacak şekilde çalışır.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/15-%20Joker%20Karakterler/4.png" width="875">

**? :** Herhangi bir tek karakterle eşleşir.

Karakterin kullanımına örnek olarak. Diyelim ki dizin içerisinde hem "**index_page**" hem de "**index-page**" şeklinde birbirine yakın yazılışlara sahip iki dosyamız var. Yani başlangıç ve bitiş isimleri aynı ancak aradaki işaretler farklı. İşte böyle bir durumda hem <kbd> _ </kbd> işaretini hem de <kbd> - </kbd> işaretini karşılayacak olan soru işareti <kbd>?</kbd> joker karakterini kullanabiliriz.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/15-%20Joker%20Karakterler/5.png" width="875">

Çıktılarda da görüldüğü gibi <kbd>?</kbd> karakteri dosya isimlerinin arasında yer alan <kbd>-</kbd> ve <kbd>_</kbd> işaretini de karşılayarak `ls -l index?page` şeklindeki komut ile çıktıya her ikisini de basmış oldu.

**[] :** <kbd>?</kbd> karakterine benzer olmakla birlikte daha çok hedefe odaklı çalışır.

<kbd>[]</kbd> karakterinin kullanımı, iki köşeli parantez arasına ulaşmak istediğiniz hedefteki ayırt edici karakterli yazmak üzerinedir.

Örnek olması açısında "**dosya**" isimli belgelerden sadece sonunda **2,3,4** olanları kapsayacak bir komut olması için konsola `ls -l [234]` komutunu verdim.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/15-%20Joker%20Karakterler/6.png" width="875">

Bir örnek daha verelim.

**[Dd]osya[Aa]dı** şeklinde bir belirtme; **DosyaAdı, Dosyaadı, dosyaAdı, dosyaadı** şeklindeki bütün isimleri kapsayacaktır. Bu sayede ilgili dosyalar için tüm küçük büyük harf kombinasyonu kolaylıkla sağlanmış olur.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/15-%20Joker%20Karakterler/7.png" width="875">

Ayrıca kullanım şekillerine çok fazla örnek verilebilir ancak burada birkaç örnek daha vererek keşfi size bırakıyorum.

**Not** : Burada belirtilen **x y z** temsili değerleri ifade etmektedir !

**[0-9] :** 0'dan 9'a kadar olan rakamları kapsar.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/15-%20Joker%20Karakterler/8.png" width="875">

**[x,y,z] :** belirtilen değerlerle eşleşenleri basar.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/15-%20Joker%20Karakterler/9.png" width="875">

**[x-z] :** x ile z değerleri arasındaki karakterlerle eşleşir.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/15-%20Joker%20Karakterler/10.png" width="875">

**[xyz] :** belirtilen değerlerle eşleşenleri basar.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/15-%20Joker%20Karakterler/11.png" width="875">

**[!xyz] :** Belirtilen karakterlerin dışındakileri diğer tüm karakterleri basar.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/15-%20Joker%20Karakterler/12.png" width="875">

**[!x-z] :** Verilen x ile z değeri arasındaki değerler haricindeki karakterler basar.

<img src="https://raw.githubusercontent.com/taylanbildik/Linux_Dersleri/master/img/15-%20Joker%20Karakterler/13.png" width="875">

Temel ve en çok başvurulan joker karakterler bu şekildedir. Sizler de joker karakterler sayesinde konsoldan çalışırken oldukça pratik şekilde işlemlerinizi yerine getirebilirsiniz. Konuyu daha iyi anlamak adına mutlaka ama mutlaka kendiniz de örnek denemeler yapın.
