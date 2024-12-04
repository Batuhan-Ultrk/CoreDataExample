//
//  ContentView.swift
//  CoreDataExample
//
//  Created by Batuhan Ulutürk on 20.06.2024.
//

import SwiftUI

struct ContentView: View {
    var kisi = Kisiler()
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        .onAppear{
            let kisilerDao = KisilerDao()
            //kisilerDao.kaydet(kisiAd: "Ali", kisiTel: "321")
            //kisilerDao.oku()
            kisilerDao.arama(aramaKelimesi: "i" )
        }
    }
}

#Preview {
    ContentView()
}
