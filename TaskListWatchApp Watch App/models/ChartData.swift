//
//  ChartData.swift
//  TaskListWatchApp Watch App
//
//  Created by PrashantDixit on 14/09/23.
//

import Foundation

struct ChartData {
    
    struct DataElement: Identifiable {
        var id: Date { return date }
        let date: Date
        let itemsComplete: Double
    }
    
    
    static func createData(_ items: [ListItem]) -> [DataElement] {
        return Dictionary(grouping: items, by: \.completionDate)
            .compactMap {
                guard let date = $0 else { return nil }
                return DataElement(date: date, itemsComplete: Double($1.count))
            }
            .sorted {
                $0.date < $1.date
            }
    }
}
