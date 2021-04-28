//
//  FoodDetailListView.swift
//  GetApiFood
//
//  Created by Zidni on 28/04/21.
//

import SwiftUI
import URLImage

struct FoodDetailListView: View {
    var food: Food
    var body: some View {
        VStack {
            
//            URLImage(URL(string:  "\(food.image)")!, delay: 0.25) {proxy in
//                proxy.image.resizable()
            URLImage(URL(string:  "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/chorizo-mozarella-gnocchi-bake-cropped-9ab73a3.jpg")!, delay: 0.25) {proxy in
                proxy.image.resizable()
                    
                    .frame(width: UIScreen.main.bounds.height/2*1, height: UIScreen.main.bounds.height/3)
            }
            HStack {
                Text("NAME").foregroundColor(.gray)
                Spacer()
            }
            Text(food.name).lineLimit(nil)
            Spacer()
            HStack {
                Text("Description").foregroundColor(.gray)
                Spacer()
            }
            Text(food.desc).lineLimit(nil)
            Spacer()
        }.navigationBarTitle(Text(food.name), displayMode: .inline)
            .padding()
    }
}
