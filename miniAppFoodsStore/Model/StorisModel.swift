//
//  StorisModel.swift
//  miniAppFoodsStore
//
//  Created by Борух Соколов on 15.08.2023.
//

import SwiftUI
import Foundation

class StorisModel:Identifiable {
    var id :String = UUID().uuidString
  //  var image:Image
    var color:Color
    var title:String
    @Published var pressed:Bool
   
    
 
    
    init(color: Color, title: String) {
        self.color = color
        self.title = title
        self.pressed = false
    }
    
    
    
   
    
}


