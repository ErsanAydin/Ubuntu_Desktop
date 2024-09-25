# Ubuntu Desktop Kurulumu
> Bu repo mevcut ubuntu reponuza ubuntu desktop kurulumu için hazırlanmıştır

#

> Öncelikle root klasöründe yeni bir klasör oluşturalım:

```ruby
mkdir ubuntu-desktop
```

> Klasöre girelim ve aşağıdaki komutu çalıştıralım.

```ruby
cd ubuntu-desktop
```
```ruby
wget https://raw.githubusercontent.com/ErsanAydin/Ubuntu_Desktop/refs/heads/main/setup_ubuntudesktop.sh
```
```ruby
chmod +x setup_ubuntudesktop.sh
```

Şimdi scripti çalıştıralım.

```ruby
./setup_ubuntudesktop.sh
```
Port Açalım
```ruby
ufw allow 3389
```



Kurulum bu kadar. Şimdi Windows uzak Masaüstü programı ile sunucumuca bağlanalım. Sunucumuzun IP adresini giriyoruz.

![image](https://github.com/ruesandora/Rivalz/assets/101149671/f7d00889-b44e-48bb-b98f-cab38b3cc7a8)


Script içine yazdığımız kullanıcı adı ve şifresini giriyoruz.

![image](https://github.com/ruesandora/Rivalz/assets/101149671/75ad52bd-2bfe-427a-9204-b7844b8a4219)


![image](https://github.com/ruesandora/Rivalz/assets/101149671/6c0939f7-a592-46a2-81c7-c376b2fa2a73)

**```NOT 1:``` Sunucunuzun özelliklerine göre masaüstündeki tıklamalar biraz geç algılanabilir, lütfen sabırlı olun.**

**```NOT 2:``` Masaüstünde yaptığınız tüm işlemler sunucunun tamamında etkili olabileceği ve içerisinde çalışan diğer nodelara etki edebileceği için lütfen sadece gerekli işlemleri yapın.**

**```NOT 3:``` Kurulumla ilgili tüm sorumluluk kuran kişiye aittir. Oluşabilecek herhangi bir hatadan veya kayıptan kuran kişi tamamen kendisi sorumludur.**

**```NOT 4:``` Kurulumdan sonra uzak masaüstüne bağlanırken sorun yaşayanlar aşağıdaki kodu deneyebilirler.(Login failed ve siyah ekranda kalma problemleri)**
```ruby
sysctl -a | grep disable_ipv6
```
Yukarıdaki kodun çıktısında **net.ipv6.conf.lo.disable_ipv6** değeri **1** olarak dönüyorsa aşağıdaki kodu çalıştırın.
```ruby
sysctl -w net.ipv6.conf.lo.disable_ipv6=0
```
Şimdi bağlanmayı tekrar deneyebilirsiniz.
