//
//  ContentView.swift
//  GetApiFood
//
//  Created by Zidni on 28/04/21.
//

import SwiftUI
import Foundation

struct ContentView: View {
    @ObservedObject var networkServices = NetworkServices()
    
    var body: some View {
        NavigationView {
            VStack{
                if networkServices.loading{
                    Text("Loading")
                        .foregroundColor(.blue)
                        .lineLimit(nil)
                        .font(.system(size: 16, weight: .bold))
                }
                else if(networkServices.error){
                    Text("Terjadi Kegagalan Saat Memuat Data.").foregroundColor(.red)
                    font(.system(size: 16, weight:.bold))
                }
                else {
                    List(networkServices.foods) { food in
                        NavigationLink(destination: FoodDetailListView(food: food)){
                            FoodRowView(food: food)
                        }
                    }
                }
            }
            .navigationBarTitle(Text("Foods"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

