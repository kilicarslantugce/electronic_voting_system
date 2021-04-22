# Blockchain Tabanlı Dijital Oy Verme Sistemi:Tasarımı ve Güvenlik Analizi Gelişim Raporu 3

Projenin ilk gelişim raporundan sonraki geçen sürede gantt chartda belirttiğimiz üzere website design üzerine çalışılmıştır.


## Düzeltmeler

-Açılan tek repoya üyelerin katkı yapması ilk repoda düşük alınan konudur.Bu konu 2. repoda düzeltilmiştir. 1. Raporda başka bir eksik görülmediğinden dolayı 2. raporda düzeltmeler belirtilmemiştir.

-Karşılaşılan zorluklar kod kalitesine göre eksikti ve o konuda iyileştirilmiştir.



## Zorluklar

- Karşılaşılan zorluklardan ilki bootstrap yapısını kullanarak tasarım yapmakta yaşanmıştır. Projenin kaydol.aspx dosyasında görüldüğü üzere bir türlü nesneler ortalanamamıştır. Bir sonraki raporda düzeltilecektir.
- Karşılaşılan ikinci problem ise regler eklendikten sonra kod çalıştırılmak istendiğinde "System.InvalidOperationException: WebForms UnobtrusiveValidationMode, 'jquery' için bir ScriptResourceMapping gerektiriyor. Lütfen jquery (büyük/küçük harfe duyarlı) adında bir ScriptResourceMapping ekleyin." hatası alınmıştır. Bu hatanın alınma sebebi  kullandığınız kontrolün exception fırlatmasıdır. Çözümü için UnobtrusiveValidationMode özelliğini None olarak ayarlanmıştır, Web.config dosyasının "appSettings" tag ı altına şu satır eklenmiştir;

```html
<configuration>
  <appSettings>
    <add key="ValidationSettings:UnobtrusiveValidationMode" value="None" />
  </appSettings>
</configuration>

```



## Araçlar

Web site taslağı için Visual Studio kullanılmıştır. 


## Kaynaklar

*[1]* Bootstrap .[online]. Website https://getbootstrap.com/ 

*[2]* W3Schools Online Web Tutorials .[online]. Website https://www.w3schools.com/ 

*[3]* Daltin Kurt .[online]. Website https://www.daltinkurt.com/ASP-Net-te-UnobtrusiveValidationMode-Hatasi-ve-Cozumu

*[4]* RegExr: Learn, Build, & Test RegEx .[online]. Website https://regexr.com/

