//
//  ContentView.swift
//  Restourant
//
//  Created by PROG on 26/02/2021.
//

import SwiftUI

struct Restaurant: Identifiable {
    let id = UUID()
    let name: String
    let address: String
}

struct RestaurantRow:View {
    let restaurant: Restaurant
    var body: some View{
        VStack(alignment: .leading){
            Text(restaurant.name).font(.callout).foregroundColor(Color(#colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)))
            Text(restaurant.address).font(.subheadline).foregroundColor(.gray)
        }
    }
}

struct ContentView: View {
    var body: some View {
        NavigationView{
        let restaurants = [Restaurant(name: "Название первого ресторана", address: "Адресс первого ресторана"),Restaurant(name: "Название второго ресторана", address: "Адресс второго ресторана")]
        
        List(restaurants){ restaurant in
            RestaurantRow(restaurant: restaurant)
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
