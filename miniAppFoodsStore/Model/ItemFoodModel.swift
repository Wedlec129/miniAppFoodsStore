//
//  ItemFood.swift
//  miniAppFoodsStore
//
//  Created by Борух Соколов on 17.08.2023.
//
import SwiftUI
import Foundation

class ItemFoodModel:Identifiable {
    var id :String = UUID().uuidString
  //  var image:Image
    var color:Color
    var price:Int
    var specialPrice:Int
    var tittleSale:String   //типо заголовок скидки ультра ласт шанс)
    
    //рекоминдаци или сладкое настроение))))))))))))
    
   
    
    var catigory:CatigoryFoods
    
    init(color: Color, price: Int, catigory:CatigoryFoods, specialPrice: Int = 0, tittleSale: String = "" ) {
        self.color = color
        self.price = price
        self.catigory = catigory
        self.specialPrice = specialPrice
        self.tittleSale = tittleSale
    }
    
}
enum CatigoryFoods{
    case all, recomend, suggarHappy
}
