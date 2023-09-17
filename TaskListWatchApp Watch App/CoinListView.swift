//
//  CoinListView.swift
//  TaskListWatchApp Watch App
//
//  Created by PrashantDixit on 16/09/23.
//

import SwiftUI

struct CoinListView: View {
    @State private var path: [CoinItem] = []
    
    @StateObject private var dataModel = CoinListModel()
    
    var body: some View {
        NavigationStack(path: $path) {
            List(dataModel.items) { item in
                NavigationLink(value: item){
                    VStack(alignment: .leading) {
                        HStack {
                            Text(item.coinName)
                                .font(.caption)
                            Spacer()
                            Text("\(item.isProfit ? "+" : "-")\(item.percentageChange, specifier: "%.2f")%")
                                .foregroundColor(item.isProfit ? .green : .red)
                                .font(.system(size: 12, weight: .light, design: .default))
                        }
                        Text("₹\(item.coinPrice, specifier: "%.2f")")
                            .foregroundColor(item.isProfit ? .green : .red)
                            .font(.subheadline)                    }

                }
                    .padding()
                    .background(item.isProfit ? Color.green.opacity(0.2) : Color.red.opacity(0.2))
                    .foregroundColor(item.isProfit ? Color.green : Color.red)
                    .font(.headline)
                    .cornerRadius(8)
                    .listRowBackground(Color.clear)
                    .frame(maxWidth: .infinity)

            }
            .navigationTitle("BNS")
            .navigationDestination(for: CoinItem.self) { item in
                SingleLine(item: item)
            }
        }
        .environmentObject(dataModel)
    }
}

struct CoinListView_Previews: PreviewProvider {
    static var previews: some View {
        CoinListView()
    }
}


