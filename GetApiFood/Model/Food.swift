//
//  Food.swift
//  GetApiFood
//
//  Created by Zidni on 28/04/21.
//

import Foundation

struct Food: Decodable, Identifiable{
    var id: UUID = UUID()
    var name: String
    var image: String
    var desc: String
}
