//
//  SaleBlockLineViewModel.swift
//  miniAppFoodsStore
//
//  Created by Борух Соколов on 15.08.2023.
//

import Foundation
import SwiftUI


class SaleBlockLineViewModel: ObservableObject {
    
    @Published var saleBlock: [SaleLineModel] = []
    
    init(){
        fetchSale()
    }
    
    func fetchSale(){
        saleBlock.append(SaleLineModel(
            color: .indigo,
            title: "скидки до 30%",
            dataStart: 12,
            dataEnd: 19
            ))
        saleBlock.append(SaleLineModel(
            color: .red,
            title: "копите бонусы"
            ))
        
        saleBlock.append(SaleLineModel(
            color: .brown,
            title: "сырки 1+1 ",
            dataStart: 15,
            dataEnd: 22
            ))
        saleBlock.append(SaleLineModel(
            color: .blue,
            title: "свежие мясо"
            ))
       
    }
    
    
   
    
    
}

