//
//  ListItem.swift
//  TaskListWatchApp Watch App
//
//  Created by PrashantDixit on 14/09/23.
//

import Foundation

struct ListItem: Identifiable, Hashable {
    let id = UUID()
    var description: String
    var estimatedDaysOfWork: Double = 1.0
    var creationDate: Date = Date()
    var completionDate: Date?
    var emojiIndex: Int = 5
    
    init(_ description: String) {
        self.description = description
    }
    
    var isComplete: Bool {
        get {
            completionDate != nil
        }
        set {
            if(newValue) {
                guard completionDate == nil else { return }
                completionDate = Date()
            } else {
                completionDate = nil
            }
        }
    }
}
