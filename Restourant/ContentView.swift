//
//  ContentView.swift
//  Restourant
//
//  Created by PROG on 26/02/2021.
//

import SwiftUI

struct Restourant: Identifiable {
    let id = UUID()
    let name: String
    let address: String
}

struct RestourantRow:View {
    let restourant: Restourant
    var body: some View{
        VStack(alignment: .leading){
            Text(restourant.name).font(.callout).foregroundColor(Color(#colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)))
            Text(restourant.address).font(.subheadline).foregroundColor(.gray)
        }
    }
}

struct ContentView: View {
    var body: some View {
        NavigationView{
        let restourants = [Restourant(name: "Название первого ресторана", address: "Адресс первого ресторана"),Restourant(name: "Названте второго ресторана", address: "Адресс второго ресторана")]
        
        List(restourants){ restourant in
            RestourantRow(restourant: restourant)
        }
        .navigationBarTitle("Все рестораны")
        .font(.title2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
