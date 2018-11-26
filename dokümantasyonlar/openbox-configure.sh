## Depoları Güncelleme
echo -e '\e[31m!!! Konsolda gerçekleşen her adımı takip edin ve konsolun sizlerden istediği tüm onayları verin. Kırmızı ile belirtilmiş yazılar önemli kısımlardır unutmayın !!\e[0m'

sleep 10

echo -e '\e[93mGüncelleme kontrol ediliyor..\e[0m'
echo -e '\e[32mBu işlemleri sonlandırmak/durdurmak isterseniz "CTRL + Z"  ya da "CTRL + C" tuş kombinasyonunu kullanabilirsiniz.\e[0m
'
apt-get update && apt-get upgrade
echo -e '\e[32mGüncelleme kontrolü tamamlandı, sistem şu an güncel durumda.\e[0m
'
echo -e '\e[93mOpenbox ve menu araçları kuruluyor..\e[0m
'
apt-get install openbox obconf obmenu gmrun geany -y

echo -e '\e[93Openbox dizini oluşturuluyor..\e[0m
'
mkdir -p ~/.config/openbox/ && cd ~/.config/openbox/
echo -e '\e[34mautostart dosyası kopyalanıyor..\e[0m
'
wget https://raw.githubusercontent.com/randalltuxarc/openbox-installer-kali-linux/master/misc/autostart
echo -e '\e[34mrc.xml kopyalanıyor..\e[0m
'
wget https://raw.githubusercontent.com/randalltuxarc/openbox-installer-kali-linux/master/misc/rc.xml
echo -e '\e[34mmenu.xml kopyalanıyor..\e[0m
'
wget https://raw.githubusercontent.com/randalltuxarc/openbox-installer-kali-linux/master/misc/menu.xml
echo -e '\e[32mKopyalama işlemeleri başarılı!\e[0m
'

echo -e '\e[93mOpenbox varsayılan pencere yöneticisi olarak ayarlanıyor...\e[0m
'

echo '
#!/bin/sh



if test -n "$1"; then

    echo "Syntax: openbox-session"

    echo

    echo "See the openbox-session(1) manpage for help."

  exit

fi



# Clean up after GDM

xprop -root -remove _NET_NUMBER_OF_DESKTOPS \

      -remove _NET_DESKTOP_NAMES \

      -remove _NET_CURRENT_DESKTOP 2> /dev/null



# Set up the environment

A="/etc/xdg/openbox/environment"

test -r $A && . $A

A="${XDG_CONFIG_HOME:-"$HOME/.config"}/openbox/environment"cd 

test -r $A && . $A


# Run Openbox, and have it run the autostart stuff

exec /usr/bin/openbox --startup "/usr/lib/x86_64-linux-gnu/openbox-autostart OPENBOX" "$@"
' > /usr/bin/x-session-manager
echo -e "\e[101m!!! Bir adım sonra çıkan seçeneklerden mutlaka lightdm  seçeneğini seçin aksi takdirde sistem doğru şekilde çalışmaz.\e[0m"
apt-get install lightdm -y

echo -e '\e[32mİşlem tammalandı!\e[0m'

## Tint2 panelini, temaları ve simgeleri numix ile yapılandırma.
echo -e '\e[93mTemasal uyum için gereklilikler indiriliyor..\e[0m
'
mkdir ~/.themes && cd ~/.themes && wget https://launchpad.net/~numix/+archive/ppa/+files/numix-gtk-theme_1.9~precise.tar.gz && tar xvfz numix-gtk-theme_1.9~precise.tar.gz && cd numix-gtk-theme && mv Numix ~/.themes && cd /root && rm -rf ~/.themes/numix-gtk-theme && rm ~/.themes/numix-gtk-theme_1.9~precise.tar.gz
echo -e '\e[32mTemalar kuruldu.\e[0m
'
echo -e '\e[93mİconlar(simgeler) indiriliyor..\e[0m
'
mkdir ~/.icons && cd ~/.icons && wget https://www.dropbox.com/s/8uoe1wx1zbez27f/Numix-icon.tar.gz && tar xvfz Numix-icon.tar.gz && rm Numix-icon.tar.gz
echo -e '\e[32mİconlar(simgeler) kuruldu !\e[0m
'
echo -e '\e[93mAlt görev çubuğu eklentisi tint2 kuruluyor..\e[0m
'
apt-get install tint2 -y

mkdir ~/.config/tint2 && cd ~/.config/tint2 && wget https://raw.githubusercontent.com/randalltuxarc/openbox-installer-kali-linux/master/misc/tint2rc && cd /root

echo -e '\e[32mTint2 kuruldu !\e[0m
'

echo -e '\e[93mMasaüstü arkaplanını değiştirebilmek için nitrogen kuruluyor..\e[0m
'
apt-get install nitrogen -y

echo -e '\e[32mnitrogen kuruldu !\e[0m
'

echo -e '\e[93mMenü yeniden yapılandırılıyor.......\e[0m'
echo -e '\e[93mKali Linux Uyumlu Menü Aracı İndiriliyor..\e[0m'
git clone git://github.com/trizen/obmenu-generator
echo -e '\e[93mMenü aracını indi, şimdi konfigure edelim...\e[0m'
cp obmenu-generator/obmenu-generator /usr/bin
cp -r obmenu-generator/schema.pl ~/.config/obmenu-generator
rm ~/.config/obmenu-generator
mv obmenu-generator/ ~/.config/obmenu-generator
cd .config/
chmod -R u=rwx obmenu-generator
echo -e '\e[32mİşlem tamamlandı..! Doğru şekilde çalışması için son birkaç ayarlama daha yapalım..\e[0m'
cpan Linux::DesktopFiles
cpan Data::Dump
chmod 777 /usr/bin/obmenu-generator
echo -e '\e[32mAyarlamalar tamam, şimdi sistemi konfigure ederek ayarların geçerli olmasını sağlayalım.\e[0m'
openbox --reconfigure && openbox --restart
obmenu-generator -p -i

echo -e '\e[32mTamamdır, artık sağ tıklayıp Kali Linux uyumlu güncellenmiş listeyi görebilirsiniz.\e[0m
'

echo -e '\e[31mYapılan tüm değişikliklerin geçerli olabilmesi için sistemi reboot ya da init 6 komutu ile yeniden başlatın.
Tüm uyumluluk işlemi bu kadardı..\e[0m'
