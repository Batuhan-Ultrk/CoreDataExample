//
//  KisilerDao.swift
//  CoreDataExample
//
//  Created by Batuhan Ulutürk on 20.06.2024.
//

import Foundation

class KisilerDao {
    let context = persistentContainer.viewContext
    
    func kaydet(kisiAd : String , kisiTel : String) {
        let kisi = Kisiler(context: context)
        kisi.kisi_ad = kisiAd
        kisi.kisi_tel = kisiTel
        saveContext()
    }
    
    func oku() {
        do{
            let liste = try context.fetch(Kisiler.fetchRequest())
            
            for kisi in liste {
                print("-----------------------------")
                print("Kisi Ad : \(kisi.kisi_ad!)")
                print("Kisi Ad : \(kisi.kisi_tel!)")
            }
        }catch{
            print(error.localizedDescription)
        }
    }
    
    
    func arama(aramaKelimesi : String) {
        do{
            let fr = Kisiler.fetchRequest()
            fr.predicate = NSPredicate(format: "kisi_ad CONTAINS[c] %@", aramaKelimesi)
            
            let liste = try context.fetch(fr)
            
            for kisi in liste {
                print("-----------------------------")
                print("Kisi Ad : \(kisi.kisi_ad!)")
                print("Kisi Ad : \(kisi.kisi_tel!)")
            }
        }catch{
            print(error.localizedDescription)
            
        }
    }
}
