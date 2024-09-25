#!/bin/bash
echo "Yeni bir kullanıcı adı ve şifre oluşturacağız. Komutların üzerinde ne işe yaradığı yazıyor. Şifre ve kullanıcı adı için şu karakterleri kullanmayın: ; | & $ ` \ ' “ < > ( ) * ? [ ] { } # ~ % !"
echo "Kullanıcı adınızı giriniz (root kullanmayınız) :"
read kullanici_adi

echo "Parolanızı giriniz: "
read parola
# Uzak masaüstü için kullanıcı ve şifre değişkenlerini tanımlayın
# Root kullanmayın
USER="$kullanici_adi"
PASSWORD="$parola"

# Paket listesini günceller
apt update && apt upgrade -y

# GNOME Masaüstünü yükler
sudo apt install -y ubuntu-desktop

# Uzak masaüstü sunucusunu (xrdp) kurar
sudo apt install -y xrdp

# USER kullanıcısını şifreyle ekler
sudo useradd -m -s /bin/bash $USER
echo "$USER:$PASSWORD" | sudo chpasswd

# USER kullanıcısını yönetim hakları için sudo grubuna ekler
sudo usermod -aG sudo $USER

# xrdp'yi GNOME masaüstünü kullanacak şekilde yapılandırır
echo "gnome-session" > ~/.xsession

# xrdp hizmetini yeniden başlatır
sudo systemctl restart xrdp

# Başlangıçta xrdp'yi etkinleştirir
sudo systemctl enable xrdp

# Eğer mevcut değilse Belgeler dizinini oluşturur
sudo -u $USER mkdir -p /home/$USER/Documents

#Chorme Kurulumu
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb 

echo "Kurulum tamamlandi. GNOME Desktop, xrdp ve Chorme kuruldu. Girişi Yapmak için ilk girişte tanımladığınız kullanıcı adı ve parolayı kullanın"
