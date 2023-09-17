//
//  ItemList.swift
//  TaskListWatchApp Watch App
//
//  Created by PrashantDixit on 14/09/23.
//

import SwiftUI

struct ItemList: View {
    @EnvironmentObject private var model: ItemListModel
    
    var body: some View {
        VStack {
            TextFieldLink(prompt: Text("New Item")) {
                Label(
                    "Add", systemImage: "plus.circle.fill"
                )
                .foregroundColor(.yellow)
                
            } onSubmit: {
                model.items.append(ListItem($0))
            }
            .foregroundColor(.yellow)
            
            List {
                ForEach($model.items) { $item in
                   ItemRow(item: $item)
                }
                
                if model.items.isEmpty {
                    Text("No items to do!")
                        .foregroundStyle(.gray)
                }
            }
        }
        .navigationTitle(Text("Simplify"))
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ItemList_Previews: PreviewProvider {
    static var previews: some View {
        ItemList()
    }
}
