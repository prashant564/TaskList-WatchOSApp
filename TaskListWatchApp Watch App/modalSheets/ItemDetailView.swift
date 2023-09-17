//
//  ItemDetail.swift
//  TaskListWatchApp Watch App
//
//  Created by PrashantDixit on 14/09/23.
//

import Foundation
import SwiftUI

struct ItemDetailView: View {
    @Binding var item: ListItem
    
    @State var showStressModal = false
    
    var body: some View {
        Form {
                Section("Description"){
                    TextField("Item", text: $item.description, prompt: Text("List Item"))
                }
                Section("Days Required") {
                    Stepper(value: $item.estimatedDaysOfWork,
                            in: (0.0...14.0),
                            step: 0.5,
                            format: .number
                    ) {
                        Text("\(item.estimatedDaysOfWork, specifier: "%.1f") days")
                    }
                }
                
                Toggle(isOn: $item.isComplete) {
                    Text("Completed")
                }
            
                Button("Add Stress Level") {
                    showStressModal = true
                }
                .foregroundColor(.yellow)
                .sheet(isPresented: $showStressModal) {
                    StressStepper(item: $item)
                        .toolbar {
                            ToolbarItem(placement: .confirmationAction) {
                                Button("Add") {
                                    showStressModal = false
                                }
                                .foregroundColor(.yellow)
                            }
                            
                        }
                }
                
        }
    }
}
