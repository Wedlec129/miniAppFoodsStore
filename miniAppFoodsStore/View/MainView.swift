//
//  ContentView.swift
//  miniAppFoodsStore
//
//  Created by Борух Соколов on 15.08.2023.
//

import SwiftUI

struct MainView: View {
    
    
    @StateObject var storisViewModel: StorisViewModel
    @StateObject var saleBlockLineViewModel: SaleBlockLineViewModel
    @StateObject var accountViewModel: AccountViewModel
    
    
    var body: some View {
        NavigationView(){
            ScrollView(.vertical){
                VStack{
                    StorisLineView()
                        .environmentObject(storisViewModel)
                    
                    SaleBlockLineView()
                        .environmentObject(saleBlockLineViewModel)
                    
                    ShowBonusView()
                        .environmentObject(accountViewModel)
                }
            }
            
            
        }
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(
            storisViewModel: StorisViewModel(),
            saleBlockLineViewModel: SaleBlockLineViewModel(),
            accountViewModel: AccountViewModel()
        )
        
    }
}
