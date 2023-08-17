//
//  ItemFoodViewModel.swift
//  miniAppFoodsStore
//
//  Created by Борух Соколов on 17.08.2023.
//

import Foundation
import SwiftUI


class ItemFoodViewModel: ObservableObject {
    
    @Published var itemFood: [ItemFoodModel] = []
    
    init(){
        fetchSale()
    }
    
    func fetchSale(){
        itemFood.append(ItemFoodModel(
            color: .teal,
            price: 99,
            catigory: .recomend
            ))
        itemFood.append(ItemFoodModel(
            color: .pink,
            price: 129,
            catigory: .recomend,
            specialPrice: 119,
            tittleSale: "Удар по ценам"
            ))
        itemFood.append(ItemFoodModel(
            color: .pink,
            price: 99,
            catigory: .recomend,
            specialPrice: 59,
            tittleSale: "Cупер цена"
            ))
        
        itemFood.append(ItemFoodModel(
            color: .indigo,
            price: 259,
            catigory: .suggarHappy,
            specialPrice: 239,
            tittleSale: "Cупер цена"
            ))
        
        itemFood.append(ItemFoodModel(
            color: .teal,
            price: 199,
            catigory: .suggarHappy
            ))
        
        itemFood.append(ItemFoodModel(
            color: .pink,
            price: 179,
            catigory: .suggarHappy,
            specialPrice: 119,
            tittleSale: "Cупер цена"
            ))
        
       
    }
    
    
   
    
    
}

