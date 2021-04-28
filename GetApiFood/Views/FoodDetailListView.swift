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
            URLImage(URL(string:  "\(food.image)")!, delay: 0.25) {proxy in
                proxy.image.resizable()
                    
                    .frame(width: UIScreen.main.bounds.height/8*3, height: UIScreen.main.bounds.height/2)
            }
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
