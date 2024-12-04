# CoreDataExample
# SwiftUI + Core Data Projesi

Bu proje, SwiftUI kullanarak veri yönetimini sağlayan, Core Data ile entegre bir uygulama örneğidir. Core Data, Apple'ın yerel veri yönetim çözümü olup, ilişkisel verilerin yönetimini kolaylaştırır.

---

## Özellikler

- Verilerin yerel olarak saklanması
- SwiftUI ile kolay arayüz tasarımı
- CRUD (Oluşturma, Okuma, Güncelleme ve Silme) işlemleri
- Dinamik liste güncellemeleri

---

## Kullanım

### 1. **Proje Oluşturma ve Core Data Ekleme**

Proje oluştururken **"Use Core Data"** seçeneğini işaretlediğinizden emin olun. Bu, Core Data için gerekli olan `DataModel` dosyasını oluşturur ve AppDelegate'e ilgili kodları ekler.

### 3. **SwiftUI ile Kullanım**

Core Data'yı SwiftUI ile kullanmak için, `@Environment(\.managedObjectContext)` ve `@FetchRequest` özellik sarmalayıcıları kullanılır.

