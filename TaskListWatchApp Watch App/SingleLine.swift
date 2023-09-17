//
//  SingleLine.swift
//  TaskListWatchApp Watch App
//
//  Created by PrashantDixit on 15/09/23.
//

import Foundation
import SwiftUI
import Charts


struct SingleLine: View {
    
    @EnvironmentObject private var dataModel: CoinListModel
    var item: CoinItem
        
    @State var data: [DataPoint] = CoinGraphData.bitCoinData
    @State var minYRange: Double = CoinGraphData.bitCoinData.map { $0.price }.min() ?? 0
    @State  var maxYRange: Double = CoinGraphData.bitCoinData.map { $0.price }.max() ?? 1000
    @State  var lineWidth = 2.0
    @State private var interpolationMethod: ChartInterpolationMethod = .cardinal
    @State private var showSymbols = false
    
//    init(item: CoinItem){
//
//        self.data = CoinGraphData.last100Days
//        let prices = CoinGraphData.last100Days.map { $0.price }
//        self.minYRange
//        self.maxYRange
//    }
//
    
    var body: some View {
        Section {
            VStack(alignment: .leading)  {
                HStack {
                    Text(item.coinName)
                        .foregroundColor(.primary)
                        .font(.subheadline)
                        .padding(.top)
                    Text(item.coinFullName)
                        .foregroundColor(.gray)
                        .font(.caption2)
                        .padding(.top)
                }

                Text("₹\(item.coinPrice, specifier: "%.2f")")
                    .foregroundColor(.primary)
                    .font(.subheadline)
                Text("\(item.isProfit ? "+" : "-")\(item.percentageChange, specifier: "%.2f")%")
                    .foregroundColor(item.isProfit ? .green : .red)
                    .font(.subheadline)
                Spacer()
                chart
            }
        }
        .background(Color.black)
    }

    private var chart: some View {
        Chart(data, id: \.price) {
            LineMark(
                x: .value("Date", $0.date),
                y: .value("Price", $0.price)
            )
            .lineStyle(StrokeStyle(lineWidth: lineWidth))
            .foregroundStyle(item.isProfit ? .green : .red)
            .interpolationMethod(interpolationMethod.mode)
            .symbol(Circle().strokeBorder(lineWidth: lineWidth))
            .symbolSize(showSymbols ? 20 : 0)
        }
        // LineMarks do not seem to verbalize accessibilityLabel/Value as of Beta 2
        // Using a representation fixes the above, keeping screen coordinates
        .accessibilityRepresentation {
            Chart(data, id: \.price) { dataPoint in
                Plot {
                    PointMark(
                        x: .value("Date", dataPoint.date),
                        y: .value("Prices", dataPoint.price)
                    )
                }

                .accessibilityValue("\(dataPoint.price) sold")
                .accessibilityHidden(false)
            }
        }
//        .accessibilityChartDescriptor(self)
        .chartXAxis(.automatic)
//        .chartXAxis {
//            AxisMarks(values: .automatic(desiredCount: 3))
//            }
        .chartYAxis {
            AxisMarks(values: .automatic(desiredCount: 4)) {
                let value = $0.as(Double.self)!
                AxisGridLine()
                AxisValueLabel {
                    Text("\(self.abbreviateAxisValue(string: "\(value)"))")
                }
            }
        }
        .chartYScale(domain: minYRange - (maxYRange/100)...(maxYRange + (minYRange/100)))
        .frame(height: 60)
        .onAppear {
            for index in data.indices {
                DispatchQueue.main.asyncAfter(deadline: .now() + Double(index) * 0.02) {
                    withAnimation(.interactiveSpring(response: 0.8, dampingFraction: 0.8, blendDuration: 0.8)) {
                        data[index].price = CoinGraphData.bitCoinData[index].price
                    }
                }
            }
        }
    }
    
    func abbreviateAxisValue(string: String) -> String {
            let decimal = Decimal(string: string)
            if decimal == nil {
                return string
            } else {
                if abs(decimal!) > 100000.0 {
                    return "\(decimal! / 100000.0)L"
                } else if abs(decimal!) > 1000.0 {
                    return "\(decimal! / 1000.0)K"
                } else {
                    return "\(decimal!)"
                }
            }
    }

    //round up to x significant digits
    func roundUp(_ num: Double, to places: Int) -> Double {
            let p = log10(abs(num))
            let f = pow(10, p.rounded(.up) - Double(places) + 1)
            let rnum = (num / f).rounded(.up) * f
            return rnum
        }

    private var customisation: some View {
        Section {
            VStack(alignment: .leading) {
                Text("Line Width: \(lineWidth, specifier: "%.1f")")
                Slider(value: $lineWidth, in: 1...20) {
                    Text("Line Width")
                } minimumValueLabel: {
                    Text("1")
                } maximumValueLabel: {
                    Text("20")
                }
            }

            Picker("Interpolation Method", selection: $interpolationMethod) {
                ForEach(ChartInterpolationMethod.allCases) { Text($0.mode.description).tag($0) }
            }

//            ColorPicker("Color Picker", selection: $chartColor)

            Toggle("Show Symbols", isOn: $showSymbols)
        }
    }
}

// MARK: - Accessibility

//extension SingleLine: AXChartDescriptorRepresentable {
//    func makeChartDescriptor() -> AXChartDescriptor {
//        AccessibilityHelpers.chartDescriptor(forSalesSeries: data, isContinuous: true)
//    }
//}

// MARK: - Preview

//struct SingleLine_Previews: PreviewProvider {
//    static var previews: some View {
//        SingleLine(isOverview: false)
//    }
//}
