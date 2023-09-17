//
//  StressStepper.swift
//  TaskListWatchApp Watch App
//
//  Created by PrashantDixit on 14/09/23.
//

import Foundation
import SwiftUI

struct StressStepper: View {
    @Binding var item: ListItem
    
    private let stressLevels = [
        "😱", "😡",  "🙁", "🫤", "😳", "🙂", "🥳"
    ]
    
    var body: some View {
        VStack {
            Text("Task Difficulty")
                .font(.system(.footnote, weight: .bold))
                .foregroundStyle(.tint)
            
            Stepper(value: $item.emojiIndex, in: (0...stressLevels.count - 1)) {
                Text(stressLevels[item.emojiIndex])
            }
        }
    }
}
