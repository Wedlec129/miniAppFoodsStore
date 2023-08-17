//
//  SaleBlockLineView.swift
//  miniAppFoodsStore
//
//  Created by Борух Соколов on 15.08.2023.
//

import SwiftUI

struct SaleBlockLineView: View {
    
    @EnvironmentObject var saleBlockLineView: SaleBlockLineViewModel
    
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false){
            HStack(){
                ForEach(saleBlockLineView.saleBlock, id: \.id) { block in
                    Rectangle()
                        .frame(width: 300,height: 200)
                        .cornerRadius(25)
                        .foregroundColor(block.color)
                        .padding(10)
                        .overlay(content: {
                            VStack(alignment: .center){
                                HStack{
                                    Text(block.title)
                                        .font(.title)
                                        .padding(30)
                                    Spacer()
                                }
                                Spacer()
                                if block.dataStart != 0 && block.dataEnd != 0 {
                                    Text("акция действует с \(block.dataStart) до \(block.dataEnd)")
                                        .font(.headline)
                                        .padding(30)
                                }
                                Spacer()
                            }
                            
                        })
                }
                
            }
            .padding()
            
        }
    }
}

struct SaleBlockLineView_Previews: PreviewProvider {
    static var previews: some View {
        
        SaleBlockLineView()
            .environmentObject(SaleBlockLineViewModel())
    }
}
