//
//  ItemRow.swift
//  TaskListWatchApp Watch App
//
//  Created by PrashantDixit on 14/09/23.
//

import Foundation
import SwiftUI

struct ItemRow: View {
    @EnvironmentObject private var items: ItemListModel
    
    private let stressLevels = [
        "😡", "😱", "🙁", "🫤", "😳", "🙂", "🥳"
    ]
    
    @Binding var item: ListItem
    @State private var showDetail = false
    
    
    var body: some View {
        Button {
            showDetail = true;
        } label: {
                HStack {
                    Text("\(item.description)")
                        .strikethrough(item.isComplete)
                    Text(stressLevels[item.emojiIndex])
                        .fontWeight(.heavy)
                    Spacer()
                    Image(systemName: "checkmark").opacity(item.isComplete ? 100 : 0).foregroundColor(.green)
                }
        }
        .sheet(isPresented: $showDetail) {
            ItemDetailView(item: $item)
                .toolbar {
                    ToolbarItem(placement: .confirmationAction) {
                        Button("Done") {
                            showDetail = false;
                        }
                        .foregroundColor(.yellow)
                    }
                }
        }
    }
}
