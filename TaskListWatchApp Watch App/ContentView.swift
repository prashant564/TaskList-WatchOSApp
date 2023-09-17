//
//  ContentView.swift
//  TaskListWatchApp Watch App
//
//  Created by PrashantDixit on 14/09/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var itemListModel = ItemListModel()
    
    var body: some View {
        TabView {
            NavigationStack {
                ItemList()
                    .environmentObject(itemListModel)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
