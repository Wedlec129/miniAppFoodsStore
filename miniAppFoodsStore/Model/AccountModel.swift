//
//  AccountModelViewModel.swift
//  miniAppFoodsStore
//
//  Created by Борух Соколов on 15.08.2023.
//

import Foundation
import SwiftUI

class AccountModel: Identifiable {
    var id :String = UUID().uuidString
  //  var image:Image
    var ball:Int
    
 
    init(ball: Int = 0) {
        self.ball = ball
    }
    
}

