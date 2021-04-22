# Blockchain Tabanlı Dijital Oy Verme Sistemi:Tasarımı ve Güvenlik Analizi Gelişim Raporu 2

Projenin ilk gelişim raporundan sonraki geçen sürede gantt chartda belirttiğimiz üzere website design üzerine çalışılmıştır.


## Düzeltmeler



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

