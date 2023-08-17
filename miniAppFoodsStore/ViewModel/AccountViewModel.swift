//
//  AccountViewModel.swift
//  miniAppFoodsStore
//
//  Created by Борух Соколов on 16.08.2023.
//

import Foundation
import SwiftUI


class AccountViewModel: ObservableObject {
    
    @Published var saleBlock: AccountModel = AccountModel()
    
    init(){
        loginInAccount()
    }
    
    //like login...
    func loginInAccount(){
        self.saleBlock.ball = 10
    }
    
    
   
    
    
}

