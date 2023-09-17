//
//  CoinListModel.swift
//  TaskListWatchApp Watch App
//
//  Created by PrashantDixit on 16/09/23.
//

import Foundation

class CoinListModel: NSObject, ObservableObject {
    @Published var items = coinList
}

var coinList = [
    CoinItem("BTC", isProfit: true, coinPrice: 2569800.0, percentageChange: 0.25, coinFullName: "Bitcoin"),
    CoinItem("ETH", isProfit: false, coinPrice: 180999.99, percentageChange: 0.58, coinFullName: "Ethereum"),
    CoinItem("BNS", isProfit: true, coinPrice: 0.0179, percentageChange: 0.19, coinFullName: "Bns Token"),
]
