## Gerekli compton kuruluyor ve cb-compositor configure ediliyor..
echo "compton indirme & kurulum devam ediyor.."

cd /root && wget https://www.dropbox.com/s/r8rqh26ixazgt10/compton-git_20120926-1_i386.deb && dpkg -i compton-git_20120926-1_i386.deb && apt-get install -f
wget https://raw.githubusercontent.com/randalltuxarc/openbox-installer-kali-linux/master/misc/compton.conf && mv compton.conf /root/.config/
cd /usr/bin && wget https://raw.githubusercontent.com/randalltuxarc/openbox-installer-kali-linux/master/misc/cb-compositor && wget https://raw.githubusercontent.com/randalltuxarc/openbox-installer-kali-linux/master/misc/cb-include.cfg && cd /root
echo "compton indirme & kurulum başarılı !"
apt-get install gmrun
apt-get install geany
## Konfigure ediliyor openbox , autostart , menu
echo "Openbox dizini oluşturuluyor.."
mkdir -p ~/.config/openbox/ && cd ~/.config/openbox/
echo "autostart dosyası kopyalanıyor.."
wget https://raw.githubusercontent.com/randalltuxarc/openbox-installer-kali-linux/master/misc/autostart
echo "rc.xml kopyalanıyor.."
wget https://raw.githubusercontent.com/randalltuxarc/openbox-installer-kali-linux/master/misc/rc.xml
echo "menu.xml kopyalanıyor.."
wget https://raw.githubusercontent.com/randalltuxarc/openbox-installer-kali-linux/master/misc/menu.xml
echo "Kopyalama işlemeleri başarılı!"

## Tint2 panelini, temaları ve simgeleri numix ile yapılandırma.
echo "Temalar indiriliyor.."
mkdir ~/.themes && cd ~/.themes && wget https://launchpad.net/~numix/+archive/ppa/+files/numix-gtk-theme_1.9~precise.tar.gz && tar xvfz numix-gtk-theme_1.9~precise.tar.gz && cd numix-gtk-theme && mv Numix ~/.themes && cd /root && rm -rf ~/.themes/numix-gtk-theme && rm ~/.themes/numix-gtk-theme_1.9~precise.tar.gz
echo "Temalar kuruldu."
echo "İconlar(simgeler) indiriliyor.."
mkdir ~/.icons && cd ~/.icons && wget https://www.dropbox.com/s/8uoe1wx1zbez27f/Numix-icon.tar.gz && tar xvfz Numix-icon.tar.gz && rm Numix-icon.tar.gz
echo "İconlar(simgeler) kuruldu !"
echo "tint2 paneli kuruluyor.."
mkdir ~/.config/tint2 && cd ~/.config/tint2 && wget https://raw.githubusercontent.com/randalltuxarc/openbox-installer-kali-linux/master/misc/tint2rc && cd /root
echo "Tint2 kuruldu !"
wget https://raw.githubusercontent.com/randalltuxarc/openbox-installer-kali-linux/master/misc/gtkrc-2.0
echo "Artık Openbox pencere yöneticisi daha kullanışlı olmuş olmalı :)"
echo "Lütfen bekleyin... İşlem devam ediyor.."
echo "10"
echo "9"
echo "8"
echo "7"
echo "6"
echo "5"
echo "4"
echo "3"
echo "2"
echo "1"
echo "0"
echo "Lütfen bekleyin..."
echo "Openbox menüsü oluşturulacaktır ( ancak kali araçları bu menüde yer almaz bunu düzeltmek için şimdi güncelleyelim!)"
echo "Menü yeniden yapılandırılıyor......."
echo "Menü aracını indirelim.."
git clone git://github.com/trizen/obmenu-generator
echo "Menü aracını indi, şimdi ilgili dosyaları ilgili konumlara taşıyalım.."
cp obmenu-generator/obmenu-generator /usr/bin
cp -r obmenu-generator/schema.pl ~/.config/obmenu-generator
rm ~/.config/obmenu-generator
mv obmenu-generator/ ~/.config/obmenu-generator
cd .config/
chmod -R u=rwx obmenu-generator
echo "Taşıma tamamlandı..! Doğru şekilde çalışması için son birkaç ayarlama daha yapalım.."
cpan Linux::DesktopFiles
cpan Data::Dump
chmod 777 /usr/bin/obmenu-generator
echo "Ayarlamalar tamam, şimdi sistemi konfigure ederek ayarların geçerli olmasını sağlayalım."
openbox --reconfigure && openbox --restart
obmenu-generator -p -i
echo "Tamamdır, artık sağ tıklayıp güncellenmiş listeyi görebilirsiniz."
