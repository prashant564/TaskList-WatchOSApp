//
//  CoinRow.swift
//  TaskListWatchApp Watch App
//
//  Created by PrashantDixit on 16/09/23.
//

import Foundation
import SwiftUI

struct CoinRow: View {

    @Binding var item: CoinItem
    
    var body: some View {
        Button {
//            SingleLine(item: $item)
        } label: {
                VStack {
                    Text(item.coinName)
                        .foregroundColor(.primary)
                        .font(.subheadline)
                    Text("\(item.coinPrice)")
                        .foregroundColor(.primary)
                        .font(.subheadline)
                }
        }
    }
}
