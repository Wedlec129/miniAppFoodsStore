//
//  SapsialAdsView.swift
//  miniAppFoodsStore
//
//  Created by Борух Соколов on 16.08.2023.
//

import SwiftUI

struct SpesialAdsView: View {
    
    @EnvironmentObject var spesialAdsViewModel: SpesialAdsViewModel

    var body: some View {
        
        //Text("\(spesialAdsViewModel.spesialAds.count)")
        ScrollView(.horizontal,showsIndicators: false){
            HStack(spacing: 10){
                ForEach(spesialAdsViewModel.spesialAds, id: \.id) { ads in
                    Rectangle()
                        .frame(width: 130,height: 160)
                        .cornerRadius(25)
                        .foregroundColor(ads.color)
                        .overlay(content: {
                            VStack(alignment: .leading){
                                Text("\(ads.title)")
                                    .fontWeight(.bold)
                                
                                Spacer()
                            }
                            .padding()
                        })
                }
                
                
            }
            .padding()
           
        }
       
        
    }
}

struct SpesialAdsView_Previews: PreviewProvider {
    static var previews: some View {
        SpesialAdsView()
            .environmentObject(SpesialAdsViewModel())
    }
}
