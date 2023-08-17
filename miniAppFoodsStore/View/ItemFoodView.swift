//
//  ItemFoodView.swift
//  miniAppFoodsStore
//
//  Created by Борух Соколов on 17.08.2023.
//

import SwiftUI

struct ItemFoodView: View {
    //передаём обьекты
    @EnvironmentObject var itemFoodViewModel: ItemFoodViewModel
    
    //какую категорию хотим луук
    @State public var onlyCategory: CatigoryFoods = .suggarHappy
    //recomend
    //suggarHappy
    
    var body: some View {
       
  
        ScrollView(.horizontal,showsIndicators: false){
            HStack(){
                ForEach(itemFoodViewModel.itemFood, id: \.id) { itemFood in
                    HStack(){
                        if itemFood.catigory == onlyCategory  || onlyCategory == .all{
                            Rectangle()
                                .frame(width:200 ,height: 250)
                                .cornerRadius(20)
                                .foregroundColor(.white)
                                .overlay(content: {
                                    Rectangle()
                                        .foregroundColor( itemFood.color)
                                        .cornerRadius(10)
                                        .overlay(content: {
                                            VStack(alignment: .leading){
                                                if itemFood.specialPrice != 0 {
                                                    Text("\(itemFood.tittleSale)")
                                                }
                                                Spacer()
                                                
                                                HStack{
                                                    
                                                    if itemFood.specialPrice == 0 {
                                                        
                                                        Text("\(itemFood.price) ₽/шт")
                                                            .fontWeight(.bold)
                                                        
                                                    }
                                                    else {
                                                        VStack{
                                                            
                                                            
                                                            Text("\(itemFood.specialPrice) ₽/шт")
                                                                .fontWeight(.bold)
                                                            Text("\(itemFood.price) ₽/шт")
                                                                .strikethrough()
                                                                .foregroundColor(.secondary)
                                                        }
                                                        
                                                    }
                                                    
                                                    
                                                    Spacer()
                                                    
                                                    Circle()
                                                        .overlay(content: {
                                                            Image(systemName: "cart")
                                                                .foregroundColor(.white)
                                                                .font(.title)
                                                        })
                                                    
                                                        .aspectRatio(contentMode: .fill)
                                                        .frame(width:60 ,height: 60)
                                                        .foregroundColor(.green)
                                                    
                                                    
                                                    
                                                }
                                            }
                                            .padding()
                                            
                                        })
                                    
                                    
                                        .padding()
                                })
                                .padding()
                                .shadow(radius: 10)
                            
                        }
                        
                    }
                }
                
            }
        }
        
    }
}

struct ItemFoodView_Previews: PreviewProvider {
    static var previews: some View {
        ItemFoodView()
            .environmentObject(ItemFoodViewModel())
    }
}
