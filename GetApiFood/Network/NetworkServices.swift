//
//  NetworkServices.swift
//  GetApiFood
//
//  Created by Zidni on 28/04/21.
//

import Alamofire
import Foundation
import Combine


class NetworkServices: ObservableObject {
    @Published var foods: [Food] = []
    @Published var loading = false
    @Published var error = false
    
    private let base_url: String = "http://34.101.86.157:7000/foods"
    
    init() {
        loading = true
        getDataFood()
    }
    
    private func getDataFood() {
        AF.request("\(base_url)")
            .responseDecodable(of: [FoodResponse].self) { response in
                switch response.result{
                case .success(let value):
                    let foodList = value.map {  data in
                        Food(
                            name: data.name,
                            image: data.image,
                            desc: data.desc
                        )
                    }
                    self.foods = foodList
                    self.loading = false
                    self.error = false
                case .failure(_):
                    self.loading = false
                    self.error = true
                    
                }
                
            }
    }
    
    
}

