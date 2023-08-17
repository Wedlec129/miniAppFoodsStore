//
//  SapsialAdsViewModel.swift
//  miniAppFoodsStore
//
//  Created by Борух Соколов on 16.08.2023.
//

import Foundation
import SwiftUI


class SpesialAdsViewModel: ObservableObject {
    
    @Published var spesialAds: [SpesialAdsModel] = []
    
    init(){
        fetchSale()
    }
    
    func fetchSale(){
        spesialAds.append(SpesialAdsModel(
            color: .pink,
            title: "Абонемент на кофе"
            ))
        spesialAds.append(SpesialAdsModel(
            color: .cyan,
            title: "Мои скидки"
            ))
        spesialAds.append(SpesialAdsModel(
            color: .purple,
            title: "Карты в подарок"
            ))
        spesialAds.append(SpesialAdsModel(
            color: .teal,
            title: "Доставка за 1 час"
            ))
        
        
       
    }
    
    
   
    
    
}

