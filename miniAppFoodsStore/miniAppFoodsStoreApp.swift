//
//  miniAppFoodsStoreApp.swift
//  miniAppFoodsStore
//
//  Created by Борух Соколов on 15.08.2023.
//

import SwiftUI

@main
struct miniAppFoodsStoreApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(storisViewModel:StorisViewModel())
               // .environmentObject(StorisViewModel())
        }
    }
}
