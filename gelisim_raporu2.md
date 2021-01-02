# Blockchain Tabanlı Dijital Oy Verme Sistemi:Tasarımı ve Güvenlik Analizi Gelişim Raporu 2

Projenin ilk gelişim raporundan sonraki geçen sürede gantt chartda belirttiğimiz üzere literature review ve methodology kısımları üzerine çalışılmıştır.
Literature review için yapılan araştırmaların raporlaması [Literature Review](https://github.com/kilicarslantugce/electronic_voting_system/blob/main/literatureReview.md) dosyasında belirtilmiştir.


## Zorluklar

Solidity programlama dilini ilk kez öğrendiğimiz için sıfırdan syntax ve kurallar ile ilgili bir araştırmamız oldu.
Projenin kodlama kısmına henüz başlamadık fakat solidity nedir nasıl kullanılır öğrenmek için basit bir demo contract hazırladık.
Öğrendiğimiz bir çok şey bizim için yeniydi.


```solidity
pragma solidity ^0.5.17 ; //Yazdığımız kontratın hangi versiyon ile kodlanacağını bildirir.

contract Inbox {         // Kontrat tanımladığımız ve isminin ne olduğunu bildiriyoruz.
    
 string public message;
 
constructor(string memory initialMessage) public {   //Şimdiye kadar bildiğimiz bir çok programlama dilinde constructor oluştururken
                                                    // class ile aynı ismi veriyorduk. Solidity de constructor oluşturmak için constructor kelimesi kullanılıyor.
       
  message = initialMessage;
        
    }
    
function setMessage(string memory newMessage) public {  
        
  message = newMessage;
    }
    
function getMessage() public view returns(string memory) {
        
   return message;
    }
}

```
[1]
## Araçlar

Solidity kodlayabilmek için Visual Studio Code ve online Etherum IDE olan Remix[2] kullanılmıştır. Remix Solidity üzerine kullanımı oldukça kolay bir editör.

## İş Dağılımı

| Kişi        | Saat Yüzdesi         |
| ------------- |:-------------:|
|Çağrıhan  | %40 |
|Tuğçe     |%60 |

## Kaynaklar

**[1]** Hasan Özgür Güçlü (2020).[online]. Website https://www.youtube.com/watch?v=OsWsJEZ9koE&list=PLDq-6McXyzTNlaJ5hCFvLdC_x6zryhl7S [erişim 22 Aralık 2020]. 

**[2]** Remix (2020). [online]. Website https://remix-ide.readthedocs.io/en/latest/solidity_editor.html [erişim 22 Aralık 2020]. 

