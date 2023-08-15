//
//  ContentView.swift
//  miniAppFoodsStore
//
//  Created by Борух Соколов on 15.08.2023.
//

import SwiftUI

struct ContentView: View {
    
    
    @StateObject var storisViewModel: StorisViewModel
    
    var body: some View {
        
        
        
        NavigationView(){
            ScrollView(.vertical){
                StorisLine()
                    .environmentObject(storisViewModel)
            }
            
            
        }
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(storisViewModel: StorisViewModel())
        // .environmentObject(StorisViewModel())
    }
}
