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
            URLImage(URL(string:  "\(food.image)")!, delay: 0.25) { proxy in
                proxy.image.resizable()
                    .frame(width: 90, height: 120)
                
            }
            
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
