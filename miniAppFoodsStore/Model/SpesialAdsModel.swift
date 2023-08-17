//
//  SpesialAdsModel.swift
//  miniAppFoodsStore
//
//  Created by Борух Соколов on 16.08.2023.
//

import SwiftUI
import Foundation


class SpesialAdsModel:Identifiable {
    var id :String = UUID().uuidString
  //  var image:Image
    var color:Color
    var title:String
    
   
    init(color: Color, title: String) {
        self.color = color
        self.title = title
    }
    
}


