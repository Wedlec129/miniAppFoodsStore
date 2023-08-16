//
//  BlockLineModel.swift
//  miniAppFoodsStore
//
//  Created by Борух Соколов on 15.08.2023.
//

import Foundation
import SwiftUI


class SaleLineModel:Identifiable {
    var id :String = UUID().uuidString
  //  var image:Image
    var color:Color
    var title:String
    var dataStart:Int
    var dataEnd:Int
   
    init(color: Color, title: String, dataStart: Int = 0, dataEnd: Int = 0) {
        self.color = color
        self.title = title
        self.dataStart = dataStart
        self.dataEnd = dataEnd
    }
    
}


