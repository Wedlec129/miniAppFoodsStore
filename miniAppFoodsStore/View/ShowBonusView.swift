//
//  showBonusView.swift
//  miniAppFoodsStore
//
//  Created by Борух Соколов on 16.08.2023.
//

import SwiftUI

struct ShowBonusView: View {
    @EnvironmentObject var accountViewModel: AccountViewModel
    
    
    
    var body: some View {
        
        //Text(" \(accountViewModel.saleBlock.ball)")
        Rectangle()
            .frame(height: 150)
            .cornerRadius(20)
            .foregroundColor(.mint)
            .overlay(content: {
                HStack{
                    VStack{
                        Text(" \(accountViewModel.saleBlock.ball)")
                            .font(.title)
                            .fontWeight(.bold)
                        + Text(" бонусов")
                        Spacer()
                        Text("# i love foods ")
                    }
                    Spacer()
                    Rectangle()
                        .frame(width: 100,height: 100)
                        .cornerRadius(10)
                        .foregroundColor(.indigo)
                        .padding()    
                }
                .padding()
            })
            .padding()
            
        
    }
}

struct ShowBonusView_Previews: PreviewProvider {
    static var previews: some View {
        ShowBonusView()
            .environmentObject(AccountViewModel())
        
    }
}
