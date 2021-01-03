# Blockchain Tabanlı Dijital Oy Verme Sistemi:Tasarımı ve Güvenlik Analizi Gelişim Raporu 2

Projenin ilk gelişim raporundan sonraki geçen sürede gantt chartda belirttiğimiz üzere literature review ve methodology kısımları üzerine çalışılmıştır.
Literature review için yapılan araştırmaların raporlaması [Literature Review](https://github.com/kilicarslantugce/electronic_voting_system/blob/main/literatureReview.md) dosyasında belirtilmiştir.


## Zorluklar

Solidity programlama dilini ilk kez öğrendiğimiz için sıfırdan syntax ve kurallar ile ilgili bir araştırmamız oldu. Projenin kodlama kısmına henüz başlamadık fakat solidity nedir nasıl kullanılır öğrenmek için basit bir demo contract hazırladık. Öğrendiğimiz bir çok şey bizim için yeniydi.


```solidity
pragma solidity ^0.5.17 ; --> Yazdığımız kontratın hangi versiyon ile kodlanacağını bildirir.

contract Inbox {         -->  Kontrat tanımladığımız ve isminin ne olduğunu bildiriyoruz.
    
 string public message;
 
constructor(string memory initialMessage) public {   --> Şimdiye kadar bildiğimiz bir çok programlama dilinde constructor oluştururken
                                                     -->  class ile aynı ismi veriyorduk. Solidity de constructor oluşturmak için constructor kelimesi kullanılıyor.
       
  message = initialMessage;
        
    }
    
```
[1]

Kontrata ek olarak bir de basit bir blockchain (blokzincir) nasıl oluşturulur öğrendik. Python da bir blockchain inşaa ettik. Bu kavramı da ilk kez öğrendiğimiz için hazır kodlardan faydalandık. Yeni karşılaşıp öğrendiğimiz kavramlardan bahsetmek gerekirse;

```python
import hashlib --> Şifreleme için hashlib kullanılır. Haslib, verileri farklı algoritmalar kullanarak şifrelemeyi sağlayan bir kütüphanedir. En basitten en karmaşığa kullandığı şireleme algoritmaları şunlardır:md5, sha1, sha224, sha256, sha384, sha512.
import json -->  Blokları biçimlendirmek için JSON kullanılır
from time import time --> Her bloğun zaman damgası için time import edilir.

class Blockchain(object): 
    def __init__(self):
        self.chain = []                                 --> Blokların ekleneceği boş liste. Blokchain burda oluşur.
        self.pending_transactions = []                  --> Kullanıcılar veri akışı yaptığında işlem onaylayıp yeni bir bloğa eklenene kadar işlemler bu dizide saklanır.

        self.new_block(previous_hash="The Times 03/Jan/2009 Chancellor on brink of second bailout for banks.", proof=100) --> İleride tanımlanacak bir yöntem. Her bloğu zincire                                                                                                                               eklemek için kullanılır. 
                                                        --> Boş bir zincir kullanıma hazır. Zincire eklenecek bloklar tanımlanır.

    def new_block(self, proof, previous_hash=None):
        block = { --> Aşağıdaki özelliklere sahip bir JSON nesnesini açıklayan bir blok değişkeni tanımlanır.
            'index': len(self.chain) + 1,               --> Blok zincirin uzunluğunna 1 eklenir. Bu ilkem tek bir bloğu referans almak için kullanılır.
            'timestamp': time(),                        --> time () import edilerek, blok oluşturulduğunda damgalanır. Bu sayede kullanıcılar işlemlerinin zincir üzerinde ne                                                               zaman onaylandığını kontrol edebilir.
            'transactions': self.pending_transactions,  --> "pending" listesinde bulunan tüm işlemler yeni bloğa dahil edilir.
            'proof': proof,                             --> Geçerli bir "nonce" veya "proof" bulduğunu düşünen madenciden gelir. 
            'previous_hash': previous_hash or self.hash(self.chain[-1]), --> En son onaylanan bloğun karma bir versiyonunu tutar.
        }
        self.pending_transactions = []
        self.chain.append(block)

        return block

                                                        --> Artık oluşturulan her blok bu özellikleri taşıyacak. Bu oluşturulan blokları zincire eklemek için;

    def last_block(self):
 
        return self.chain[-1]



    def new_transaction(self, sender, recipient, amount):
        transaction = {
            'sender': sender,
            'recipient': recipient,
            'amount': amount
        }
        self.pending_transactions.append(transaction)
        return self.last_block['index'] + 1



    def hash(self, block):
        string_object = json.dumps(block, sort_keys=True)
        block_string = string_object.encode()

        raw_hash = hashlib.sha256(block_string)
        hex_hash = raw_hash.hexdigest()

        return hex_hash


blockchain = Blockchain()
t1 = blockchain.new_transaction("Satoshi", "Mike", '5 BTC')
t2 = blockchain.new_transaction("Mike", "Satoshi", '1 BTC')
t3 = blockchain.new_transaction("Satoshi", "Hal Finney", '5 BTC')
blockchain.new_block(12345)

t4 = blockchain.new_transaction("Mike", "Alice", '1 BTC')
t5 = blockchain.new_transaction("Alice", "Bob", '0.5 BTC')
t6 = blockchain.new_transaction("Bob", "Mike", '0.5 BTC')
blockchain.new_block(6789)

print("Genesis block: ", blockchain.chain)


```
[3]


## Araçlar

Solidity kodlayabilmek için Visual Studio Code ve online Etherum IDE olan Remix[2] kullanılmıştır. Remix Solidity üzerine kullanımı oldukça kolay bir editördür. Blockchain oluşturmak için ise Jupyter Notebook kullanılmıştır.

## İş Dağılımı

| Kişi        | Saat Yüzdesi    |
| ------------- |:-------------:|
|Tuğçe       | %60           |
|Çağrıhan       | %40           |

## Kaynaklar

**[1]** Hasan Özgür Güçlü (2020).[online]. Website https://www.youtube.com/watch?v=OsWsJEZ9koE&list=PLDq-6McXyzTNlaJ5hCFvLdC_x6zryhl7S [erişim 22 Aralık 2020]. 

**[2]** Remix (2020). [online]. Website https://remix-ide.readthedocs.io/en/latest/solidity_editor.html [erişim 22 Aralık 2020]. 

**[3]** Michael Chrupcala (2020). [online]. Website https://medium.com/coinmonks/python-tutorial-build-a-blockchain-713c706f6531 [erişim 30 Aralık 2020]
