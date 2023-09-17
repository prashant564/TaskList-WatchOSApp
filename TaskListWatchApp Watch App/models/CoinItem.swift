//
//  CoinItem.swift
//  TaskListWatchApp Watch App
//
//  Created by PrashantDixit on 16/09/23.
//

import Foundation

struct CoinItem: Identifiable, Hashable {
    let id = UUID()
    var coinName: String
    var coinFullName: String
    var isProfit: Bool
    var coinPrice: Double
    var percentageChange: Double
    
    init(_ coinName: String, isProfit: Bool, coinPrice: Double, percentageChange: Double, coinFullName: String) {
        self.coinName = coinName
        self.coinFullName = coinFullName
        self.isProfit = isProfit
        self.coinPrice = coinPrice
        self.percentageChange = percentageChange
    }
    
}

