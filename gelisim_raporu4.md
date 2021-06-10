# Blockchain Tabanlı Dijital Oy Verme Sistemi:Tasarımı ve Güvenlik Analizi Gelişim Raporu 4

Projenin bu aşamasında arkaplanda çalışacak olan python ve Solidity dosyaları hazırlanmıştır.

- backend.py dosyasında : Web framework olarak Flask ve Web3 semantik web altyapısı kullanılmıştır. Microsoft Azure bulut depolama sistemi ile kullanıcı bilgileri depolanmıştır.
Oy verme ile ilgili bilgiler de bu dosyada saklanmıştır.
- Election.sol dosyasında : Election(Seçim) contractı içerisinde, aday ve oy işlemileri ile ilgili işlemler oluşturulmuştur.
- Migrations.sol dosyasında : Data migration işlemleri geçekleştirilmiştir. Bu işlemler; Veri taşıma, verileri seçme, hazırlama, çıkartma ve dönüştürme ve bir bilgisayar depolama sisteminden diğerine kalıcı olarak aktarma işlemidir.
Ayrıca, taşınan verilerin tamlık için doğrulanması ve eski veri depolamasının hizmetten çıkarılması, tüm veri taşıma sürecinin bir parçası olarak kabul edilir.

# İş Akışı Şeması



