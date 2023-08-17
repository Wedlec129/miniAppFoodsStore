//
//  ContentView.swift
//  miniAppFoodsStore
//
//  Created by Борух Соколов on 15.08.2023.
//

import SwiftUI

struct MainView: View {
    
    @State var searchPlaceString: String = "Москва, Москва и московская область"
    
    @StateObject var storisViewModel: StorisViewModel
    @StateObject var saleBlockLineViewModel: SaleBlockLineViewModel
    @StateObject var accountViewModel: AccountViewModel
    @StateObject var spesialAdsViewModel: SpesialAdsViewModel
    @StateObject var itemFoodViewModel: ItemFoodViewModel
    
    var body: some View {
        
        TabView{
            
            NavigationView(){
                ScrollView(.vertical,showsIndicators: false){
                    VStack{
                        StorisLineView()
                            .environmentObject(storisViewModel)
                        SaleBlockLineView()
                            .environmentObject(saleBlockLineViewModel)
                        ShowBonusView()
                            .environmentObject(accountViewModel)
                        SpesialAdsView()
                            .environmentObject(spesialAdsViewModel)
                        
                       
                        VStack(alignment: .leading){
                            Text("Рекомендуем")
                                .font(.title)
                                .padding()
                            ItemFoodView(onlyCategory: .recomend)
                                .environmentObject(itemFoodViewModel)
                            
                            Text("Сладкое настроение")
                                .font(.title)
                                .padding()
                            ItemFoodView(onlyCategory: .suggarHappy)
                                .environmentObject(itemFoodViewModel)
                        }
                       
                           
                           
                    }
                    
                }
                
                
                
                .toolbar{
                    
                    ToolbarItem(placement: .navigationBarLeading) {
                        HStack{
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.secondary, lineWidth: 1)
                                .frame(width: 361,height: 25)
                                .overlay(content: {
                                    HStack{
                                        Image(systemName: "location.fill")
                                            .frame(width: 1,height:1)
                                            .padding(.horizontal,5)
                                        
                                        TextField(" Москва, Москва и Московская область", text: $searchPlaceString)
                                    }
                                    .padding()
                                })
                            Button(action: {
                                
                            }, label: {
                                Image(systemName: "line.3.horizontal")
                                    .frame(width: 40,height: 40)
                                    .foregroundColor(.green)
                                    .fontWeight(.bold)
                            })
                            
                            
                        }
                    }
                    
                    
                    
                }
                
                
            }
            .tabItem {
                VStack{
                    Image(systemName: "house")
                   Text("Главная")
                        
                        
                }
               
            }
            
            
            
            
            
            
            //empty
            VStack{
                
            }
            .tabItem {
                VStack{
                    Image(systemName: "doc.text.magnifyingglass")
                   Text("Каталог")
                }
            }
            
            VStack{
                
            }
            .tabItem {
                VStack{
                    Image(systemName: "basket")
                   Text("корзина")
                }
            }
            VStack{
                
            }
            .tabItem {
                VStack{
                    Image(systemName: "person")
                   Text("профиль")
                    
                }
                
            }
           
           
            
            
            
            
        }
        .accentColor(.green)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(
            storisViewModel: StorisViewModel(),
            saleBlockLineViewModel: SaleBlockLineViewModel(),
            accountViewModel: AccountViewModel(),
            spesialAdsViewModel: SpesialAdsViewModel(),
            itemFoodViewModel: ItemFoodViewModel()
        )
        
    }
}
