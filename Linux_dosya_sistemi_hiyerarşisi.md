Linux Dosya Sistemi Hiyerarşisi
=
Linux’un Windows’dan farklı olan dosya hiyerarşi sistemini kavramak ve ileride ele alacağımız dosya-dizin işlemleri konularında zorluk çekmemek adına bu kısımda “***Linux dosya sistemi hiyerarşisi***” konusunu ele alacağız.


## Nedir bu hiyerarşi ve neden gerekli? ##

Hiyerarşi kelimesinin sözlükteki genel anlamı; “Yunanca yetki, rütbe veya aşama sırası anlamında kullanılan kelime.” şeklindedir.

Linux sistemlerinde de aynı şekilde sınıflandırma yapılarak dosyaların sıraya koyulmasına bunun sonucunda tıpkı bir ağaç misali oluşan dosya sistemlerine genel olarak “**Linux dosya sistemi hiyerarşisi**” deniyor. 

Genellikle bütün dağıtımlarda aynı hiyerarşik düzen vardır.(Genellikle diyorum çünkü küçük farkların dışında tüm dağıtımlar aynı hiyerarşik yapıya sahiptir. Zaten eğer her dağıtımın hiyerarşik dosya sistemi tamamen farklı olsaydı o zaman geliştiriciler için ayrı bir uğraş ve içinden çıkılmaz bir karmaşa olurdu. O yüzden buraya çok takılmayın lütfen, istisnalar kaideyi bozmaz diyerek devam ediyoruz. :) )

Linux **"Tekil Hiyerarşik Klasör Yapısı"**'nı benimsemiştir. Yani bu da şu demek oluyor; her şey <kbd>/</kbd> (slash) simgesiyle ifade edilen <code>root</code> klasöründen başlar, aşağıya doğru iner. Merak edenler için  de söyleyelim “Root” kelimesinin karşılığı da Türkçe olarak “kök” anlamına geliyor. Bu sayede “root” kelimesinin de nereden geldiği ve neden kullanıldığı da az çok açıklığa kavuşuyor sanırım. 

![enter image description here](https://i.hizliresim.com/OoEoa5.png)

Linux, `/` (root) klasöründen başlayarak, boot işlemindeki önem sırasına göre klasörleri ilgili konumlara yerleştirir. Bu yerleştirme işleminde yani klasörler arası geçişlerde klasörler arasını ayırmak için /(slash) işareti kullanılır.Herhangi bir dizin ya da dosyanın sistemdeki adresi önce kök dizinden başlar sonra o dosya ya da dizine ulaşmak için geçilmesi gereken dizinler arasına yine / yazılarak elde edilir. Örneğin /home/burak yolu, kök dizininde, home isimli dizin içindeki burak dizininin konumunu belirtir. Bu ifadede en baştaki / işareti kök dizini belirtmektedir.

![enter image description here](https://i.hizliresim.com/azXYRR.gif)
