//
//  FoodRowView.swift
//  GetApiFood
//
//  Created by Zidni on 28/04/21.
//

import URLImage
import SwiftUI

struct FoodRowView : View {
    var food: Food
    
    var body: some View {
        HStack {
//            Use this is error karena sertifikat gambarnya sudah expired
//            URLImage(URL(string: "\(food.image)")!, delay: 0.25) { proxy in
//                proxy.image.resizable()
//                    .frame(width: 90, height: 120)
//
//            }
            
            URLImage(URL(string:  "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/chorizo-mozarella-gnocchi-bake-cropped-9ab73a3.jpg")!, delay: 0.25) { proxy in
                proxy.image.resizable()
                    .frame(width: 120, height: 100)

            }
            
//            ImageWithURL("https://cintaihidup.com/wp-content/uploads/2017/03/prawns-1050638_1920-768x576.jpg")
            
            
            
            VStack {
                Spacer()
                HStack {
                    Text(food.name)
                        .foregroundColor(.blue)
                        .lineLimit(nil)
                    Spacer()
                }

                Spacer()
            }
        }.frame(height: 130)
    }
}

extension Float {
    func format() -> String {
        return String(format: "%.2f",self)
    }
}
