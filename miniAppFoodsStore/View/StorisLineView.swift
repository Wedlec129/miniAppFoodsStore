//
//  StorisLineView.swift
//  miniAppFoodsStore
//
//  Created by Борух Соколов on 15.08.2023.
//

import SwiftUI

struct StorisLineView: View {
    
    @EnvironmentObject var storisViewModel: StorisViewModel
    
    
    var body: some View {
        
        ScrollView(.horizontal,showsIndicators: false){
            HStack(){
                
                ForEach(storisViewModel.storis, id: \.id) { stori in
                    VStack(alignment: .center){
                        Circle()
                            .frame(width: 100, height: 100)
                            .foregroundColor(stori.color)
                            .padding(10)
                            .overlay(content: {
                                    Circle()
                                    .stroke(stori.pressed ? Color.gray : Color.green, style: StrokeStyle(lineWidth: 5, lineCap: .round, lineJoin: .round))
                                        .frame(width: 110, height: 110)
                                })
                        Text(stori.title)
                            .fixedSize(horizontal: false, vertical: true)
                            .frame(width: 100)
                            .lineLimit(nil)
                    }
                    .onTapGesture {
                        //меняем значение нажатия
                        storisViewModel.tooglePressed(for: stori)
                       // print(stori.title)
                        //print(stori.pressed)
                    }
                    
                    
                    
                    
                    
                    
                    
                    
                }
                
            }
            .padding()
        }
        
        
        
    }
    
}

struct StorisLineView_Previews: PreviewProvider {
    static var previews: some View {
        
        StorisLineView()
            .environmentObject(StorisViewModel())
        
        
    }
}
