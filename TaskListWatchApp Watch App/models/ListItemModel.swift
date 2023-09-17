//
//  ListItemModel.swift
//  TaskListWatchApp Watch App
//
//  Created by PrashantDixit on 14/09/23.
//

import Foundation

class ItemListModel: NSObject, ObservableObject {
    @Published var items = [ListItem]()
}
