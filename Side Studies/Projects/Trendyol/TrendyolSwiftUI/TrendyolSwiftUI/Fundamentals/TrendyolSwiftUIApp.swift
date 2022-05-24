//
//  TrendyolSwiftUIApp.swift
//  TrendyolSwiftUI
//
//  Created by Mehmet Ateş on 5.05.2022.
//

import SwiftUI

@main
struct TrendyolSwiftUIApp: App {
    var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            TabController()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
