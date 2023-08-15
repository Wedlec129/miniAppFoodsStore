//
//  StorisViewModel.swift
//  miniAppFoodsStore
//
//  Created by Борух Соколов on 15.08.2023.
//

import SwiftUI
import Foundation

class StorisViewModel: ObservableObject {
    
    @Published var storis: [StorisModel] = []
    
    init(){
        fetchStoris()
    }
    
    func fetchStoris(){
        storis.append(StorisModel(color: .red, title: "Привелегии 'Мой SPAR'"))
        storis.append(StorisModel(color: .cyan, title: "Мы в соцсетях"))
        storis.append(StorisModel(color: .brown, title: "3 рецепта коктейлелй"))
        storis.append(StorisModel(color: .indigo, title: "Дегустации в SPAR"))
        storis.append(StorisModel(color: .blue, title: "Новинки недели"))
    }
    
    
    func tooglePressed(for stori: StorisModel) {
        if let index = storis.firstIndex(where: { $0.id == stori.id }){
            storis[index].pressed.toggle()
            objectWillChange.send() //в ручную обновляем изменения
        }
    }
    
   
    
    
}

