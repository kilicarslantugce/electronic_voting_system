# Blockchain Tabanlı Dijital Oy Verme Sistemi:Tasarımı ve Güvenlik Analizi Gelişim Raporu 4

Projenin bu aşamasında arkaplanda çalışacak olan python ve Solidity dosyaları hazırlanmıştır.

- backend.py dosyasında : Web framework olarak Flask ve Web3 semantik web altyapısı kullanılmıştır. Microsoft Azure bulut depolama sistemi ile kullanıcı bilgileri depolanmıştır.
Oy verme ile ilgili bilgiler de bu dosyada saklanmıştır.
- Election.sol dosyasında : Election(Seçim) contractı içerisinde, aday ve oy işlemileri ile ilgili işlemler oluşturulmuştur.
- Migrations.sol dosyasında : Data migration işlemleri geçekleştirilmiştir. Bu işlemler; Veri taşıma, verileri seçme, hazırlama, çıkartma ve dönüştürme ve bir bilgisayar depolama sisteminden diğerine kalıcı olarak aktarma işlemidir.
Ayrıca, taşınan verilerin tamlık için doğrulanması ve eski veri depolamasının hizmetten çıkarılması, tüm veri taşıma sürecinin bir parçası olarak kabul edilir.

# İş Akışı Şeması

![oyVerme](https://user-images.githubusercontent.com/74213293/121674384-aa034180-caba-11eb-8e96-7d47090cff9d.jpeg)


# Oylama Sistemi İş Akışı

Seçim süresi boyunca yönetici seçimi başlatacaktır. Seçim başlatıldığında, aday listesi portalın ön ucuna gönderilir (bu, resmi makamların yetkili yerlerinde kurulur).Frontend, aday hakkında faydalı bilgiler görüntüleyebilir ve karar vermelerine yardımcı olabilir. Kullanıcı bilgileriyle birlikte şifrelenmiş oy, backend oylamayı başlatma yöntemine gönderilir. Bu oylama başlatma yöntemi, kullanıcıyı ID kullanarak doğrulayan ve kullanıcının henüz oy kullanmadığından emin olan hesap doğrulama yöntemini çağırır. Kullanıcı doğrulaması başarılı olursa, oyu Azure Blok Zinciri Hizmetine bir sözleşme olarak gönderen oy kullanma yöntemi çağrılır. Seçim sonunda en çok oyu alan aday seçilir.




## Teknolojiler

- Azure Blockchain
- Python (Blockchain ile iletişim kurmak ve backend ve front end API çağrıları için)
- Truffle (Akıllı sözleşmeler oluşturmak ve test etmek için araçlar sağlar)
- Ganache (Localhost'ta test edebilmek üzere özel blockchain ağı oluşturma)
- Flask (Web framework)
- Docker (Portalın bulutta devreye alınması)
