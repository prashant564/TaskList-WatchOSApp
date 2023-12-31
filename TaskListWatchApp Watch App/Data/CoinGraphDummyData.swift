//
//  CoinGraphDummyData.swift
//  TaskListWatchApp Watch App
//
//  Created by PrashantDixit on 15/09/23.
//

import Foundation

enum Constants {
    static let previewChartHeight: CGFloat = 100
    static let detailChartHeight: CGFloat = 150
}

enum CoinGraphData {
//    static let last100Days = [
//        DataPoint(date: "01:46:42", price: 2923028.43),
//        DataPoint(date: "01:46:21", price: 2923028.43),
//        DataPoint(date: "01:45:59", price: 2900000),
//        DataPoint(date: "01:45:37", price: 2885409.88),
//        DataPoint(date: "01:45:16", price: 2896203.25),
//        DataPoint(date: "01:44:54", price: 2900000),
//        DataPoint(date: "01:44:33", price: 2846662.69),
//        DataPoint(date: "01:44:11", price: 2847359.15),
//        DataPoint(date: "01:43:49", price: 2837454.28),
//        DataPoint(date: "01:43:28", price: 2892192.39),
//        DataPoint(date: "01:43:06", price: 2860216.91),
//        DataPoint(date: "01:42:45", price: 2839391.68),
//        DataPoint(date: "01:42:23", price: 2825522.93),
//        DataPoint(date: "01:42:01", price: 2870000),
//        DataPoint(date: "01:41:40", price: 2838253.07),
//        DataPoint(date: "01:41:18", price: 2780646.86),
//        DataPoint(date: "01:40:57", price: 2782255.97),
//        DataPoint(date: "01:40:35", price: 2831629.88),
//        DataPoint(date: "01:40:13", price: 2808667.14),
//        DataPoint(date: "01:39:52", price: 2807094.29),
//        DataPoint(date: "01:39:30", price: 2840845.77),
//        DataPoint(date: "01:39:09", price: 2807117.11),
//        DataPoint(date: "01:38:47", price: 2807117.09),
//        DataPoint(date: "01:38:25", price: 2808270.94),
//        DataPoint(date: "01:38:04", price: 2859764.92),
//        DataPoint(date: "01:37:42", price: 2857599.93),
//        DataPoint(date: "01:37:21", price: 2858311.64),
//        DataPoint(date: "01:36:59", price: 2862922.35),
//        DataPoint(date: "01:36:37", price: 2848852.62),
//        DataPoint(date: "01:36:16", price: 2815479.27),
//        DataPoint(date: "01:35:54", price: 2898238.7),
//        DataPoint(date: "01:35:33", price: 2900000),
//        DataPoint(date: "01:35:11", price: 2820389.66),
//        DataPoint(date: "01:34:49", price: 2840594.96),
//        DataPoint(date: "01:34:28", price: 2845002.2),
//        DataPoint(date: "01:34:06", price: 2797958.98),
//        DataPoint(date: "01:33:45", price: 2849747.63),
//        DataPoint(date: "01:33:23", price: 2791090.39),
//        DataPoint(date: "01:33:01", price: 2846144.08),
//        DataPoint(date: "01:32:40", price: 2852974.21),
//        DataPoint(date: "01:32:18", price: 2847143.51),
//        DataPoint(date: "01:31:57", price: 2841767.18),
//        DataPoint(date: "01:31:35", price: 2842000),
//        DataPoint(date: "01:31:13", price: 2842000),
//        DataPoint(date: "01:30:52", price: 2850000),
//        DataPoint(date: "01:30:30", price: 2860312.55),
//        DataPoint(date: "01:30:09", price: 2869673.75),
//        DataPoint(date: "01:29:47", price: 2869176.42),
//        DataPoint(date: "01:29:25", price: 2812711.96),
//        DataPoint(date: "01:29:04", price: 2850598.34),
//        DataPoint(date: "01:28:42", price: 2775000.13),
//        DataPoint(date: "01:28:21", price: 2840045.21),
//        DataPoint(date: "01:27:59", price: 2835442.63),
//        DataPoint(date: "01:27:37", price: 2834451.19),
//        DataPoint(date: "01:27:16", price: 2833916.5),
//        DataPoint(date: "01:26:54", price: 2831985.22),
//        DataPoint(date: "01:26:33", price: 2786781.71),
//        DataPoint(date: "01:26:11", price: 2866788.48),
//        DataPoint(date: "01:25:49", price: 2863127.8),
//        DataPoint(date: "01:25:28", price: 2853688.28),
//        DataPoint(date: "01:25:06", price: 2895415.65),
//        DataPoint(date: "01:24:45", price: 2991061.98),
//        DataPoint(date: "01:24:23", price: 2992820.9),
//        DataPoint(date: "01:24:01", price: 2955032.15),
//        DataPoint(date: "01:23:40", price: 2950000),
//        DataPoint(date: "01:23:18", price: 3000351.8),
//        DataPoint(date: "01:22:57", price: 3006868.7),
//        DataPoint(date: "01:22:35", price: 2949627.48),
//        DataPoint(date: "01:22:13", price: 3049864.71),
//        DataPoint(date: "01:21:52", price: 2807083.49),
//        DataPoint(date: "01:21:30", price: 2807082.87),
//        DataPoint(date: "01:21:09", price: 2796353.99),
//        DataPoint(date: "01:20:47", price: 2796347.35),
//        DataPoint(date: "01:20:25", price: 2851376.63),
//        DataPoint(date: "01:20:04", price: 2796500.62),
//        DataPoint(date: "01:19:42", price: 2856211.48),
//        DataPoint(date: "01:19:21", price: 2796347.6),
//        DataPoint(date: "01:18:59", price: 2855903.57),
//        DataPoint(date: "01:18:37", price: 2854005.79),
//        DataPoint(date: "01:18:16", price: 2851002.91),
//        DataPoint(date: "01:17:54", price: 2824357.62),
//        DataPoint(date: "01:17:33", price: 2851556.77),
//        DataPoint(date: "01:17:11", price: 2787802),
//        DataPoint(date: "01:16:49", price: 2800000),
//        DataPoint(date: "01:16:28", price: 2836874.93),
//        DataPoint(date: "01:15:45", price: 2858429.25),
//        DataPoint(date: "01:15:23", price: 2853530.19),
//        DataPoint(date: "01:15:01", price: 2863832.36)
//    ]
    
    static let bitCoinData = [
        DataPoint(date: Date(timeIntervalSince1970: 1694988800), price: 2881715.9),
        DataPoint(date: Date(timeIntervalSince1970: 1694745600), price: 2941365.48),
        DataPoint(date: Date(timeIntervalSince1970: 1694582400), price: 2932481.74),
        DataPoint(date: Date(timeIntervalSince1970: 1694419200), price: 2930223.0),
        DataPoint(date: Date(timeIntervalSince1970: 1694256000), price: 2883256.41),
        DataPoint(date: Date(timeIntervalSince1970: 1694092800), price: 2930334.03),
        DataPoint(date: Date(timeIntervalSince1970: 1693929600), price: 2907167.07),
        DataPoint(date: Date(timeIntervalSince1970: 1693766400), price: 2939297.0),
        DataPoint(date: Date(timeIntervalSince1970: 1693603200), price: 2909323.4),
        DataPoint(date: Date(timeIntervalSince1970: 1693438400), price: 2923028.43),
        DataPoint(date: Date(timeIntervalSince1970: 1693275200), price: 2900000.0),
        DataPoint(date: Date(timeIntervalSince1970: 1693112000), price: 2885409.88),
        DataPoint(date: Date(timeIntervalSince1970: 1692948800), price: 2896203.25),
        DataPoint(date: Date(timeIntervalSince1970: 1692785600), price: 2900000.0),
        DataPoint(date: Date(timeIntervalSince1970: 1692622400), price: 2846662.69),
        DataPoint(date: Date(timeIntervalSince1970: 1692459200), price: 2847359.15),
        DataPoint(date: Date(timeIntervalSince1970: 1692296000), price: 2837454.28),
        DataPoint(date: Date(timeIntervalSince1970: 1692132800), price: 2892192.39),
        DataPoint(date: Date(timeIntervalSince1970: 1691969600), price: 2860216.91),
        DataPoint(date: Date(timeIntervalSince1970: 1691806400), price: 2839391.68),
        DataPoint(date: Date(timeIntervalSince1970: 1691643200), price: 2825522.93),
        DataPoint(date: Date(timeIntervalSince1970: 1691477600), price: 2870000.0),
        DataPoint(date: Date(timeIntervalSince1970: 1691314400), price: 2838253.07),
        DataPoint(date: Date(timeIntervalSince1970: 1691151200), price: 2780646.86),
        DataPoint(date: Date(timeIntervalSince1970: 1690988000), price: 2782255.97),
        DataPoint(date: Date(timeIntervalSince1970: 1690824800), price: 2831629.88),
        DataPoint(date: Date(timeIntervalSince1970: 1690661600), price: 2808667.14),
        DataPoint(date: Date(timeIntervalSince1970: 1690498400), price: 2807094.29),
        DataPoint(date: Date(timeIntervalSince1970: 1690335200), price: 2840845.77),
        DataPoint(date: Date(timeIntervalSince1970: 1690172000), price: 2807117.11),
        DataPoint(date: Date(timeIntervalSince1970: 1690008800), price: 2807117.09),
        DataPoint(date: Date(timeIntervalSince1970: 1689845600), price: 2808270.94),
        DataPoint(date: Date(timeIntervalSince1970: 1689682400), price: 2859764.92),
        DataPoint(date: Date(timeIntervalSince1970: 1689519200), price: 2857599.93),
        DataPoint(date: Date(timeIntervalSince1970: 1689356000), price: 2858311.64),
        DataPoint(date: Date(timeIntervalSince1970: 1689192800), price: 2862922.35),
        DataPoint(date: Date(timeIntervalSince1970: 1689029600), price: 2848852.62),
        DataPoint(date: Date(timeIntervalSince1970: 1688866400), price: 2815479.27),
        DataPoint(date: Date(timeIntervalSince1970: 1688703200), price: 2898238.7),
        DataPoint(date: Date(timeIntervalSince1970: 1688536800), price: 2900000.0),
        DataPoint(date: Date(timeIntervalSince1970: 1688373600), price: 2820389.66),
        DataPoint(date: Date(timeIntervalSince1970: 1688210400), price: 2840594.96),
        DataPoint(date: Date(timeIntervalSince1970: 1688047200), price: 2845002.2),
        DataPoint(date: Date(timeIntervalSince1970: 1687884000), price: 2797958.98),
        DataPoint(date: Date(timeIntervalSince1970: 1687720800), price: 2849747.63),
        DataPoint(date: Date(timeIntervalSince1970: 1687557600), price: 2791090.39),
        DataPoint(date: Date(timeIntervalSince1970: 1687394400), price: 2846144.08),
        DataPoint(date: Date(timeIntervalSince1970: 1687231200), price: 2852974.21),
        DataPoint(date: Date(timeIntervalSince1970: 1687068000), price: 2847143.51),
        DataPoint(date: Date(timeIntervalSince1970: 1686904800), price: 2841767.18),
        DataPoint(date: Date(timeIntervalSince1970: 1686741600), price: 2842000.0),
        DataPoint(date: Date(timeIntervalSince1970: 1686578400), price: 2842000.0),
        DataPoint(date: Date(timeIntervalSince1970: 1686415200), price: 2850000.0),
        DataPoint(date: Date(timeIntervalSince1970: 1686252000), price: 2860312.55),
        DataPoint(date: Date(timeIntervalSince1970: 1686088800), price: 2869673.75),
        DataPoint(date: Date(timeIntervalSince1970: 1685925600), price: 2869176.42),
        DataPoint(date: Date(timeIntervalSince1970: 1685762400), price: 2812711.96),
        DataPoint(date: Date(timeIntervalSince1970: 1685599200), price: 2850598.34),
        DataPoint(date: Date(timeIntervalSince1970: 1685436000), price: 2775000.13),
        DataPoint(date: Date(timeIntervalSince1970: 1685272800), price: 2840045.21),
        DataPoint(date: Date(timeIntervalSince1970: 1685109600), price: 2835442.63),
        DataPoint(date: Date(timeIntervalSince1970: 1684946400), price: 2834451.19),
        DataPoint(date: Date(timeIntervalSince1970: 1684783200), price: 2833916.5),
        DataPoint(date: Date(timeIntervalSince1970: 1684620000), price: 2831985.22),
        DataPoint(date: Date(timeIntervalSince1970: 1684456800), price: 2786781.71),
        DataPoint(date: Date(timeIntervalSince1970: 1684293600), price: 2866788.48),
        DataPoint(date: Date(timeIntervalSince1970: 1684130400), price: 2863127.8),
        DataPoint(date: Date(timeIntervalSince1970: 1683967200), price: 2853688.28),
        DataPoint(date: Date(timeIntervalSince1970: 1683804000), price: 2895415.65),
        DataPoint(date: Date(timeIntervalSince1970: 1683640800), price: 2991061.98),
        DataPoint(date: Date(timeIntervalSince1970: 1683477600), price: 2992820.9),
        DataPoint(date: Date(timeIntervalSince1970: 1683314400), price: 2955032.15),
        DataPoint(date: Date(timeIntervalSince1970: 1683151200), price: 2950000.0),
        DataPoint(date: Date(timeIntervalSince1970: 1682988000), price: 3000351.8),
        DataPoint(date: Date(timeIntervalSince1970: 1682824800), price: 3006868.7),
        DataPoint(date: Date(timeIntervalSince1970: 1682661600), price: 2949627.48),
        DataPoint(date: Date(timeIntervalSince1970: 1682498400), price: 3049864.71),
        DataPoint(date: Date(timeIntervalSince1970: 1682335200), price: 2807083.49),
        DataPoint(date: Date(timeIntervalSince1970: 1682172000), price: 2807082.87),
        DataPoint(date: Date(timeIntervalSince1970: 1682008800), price: 2796353.99),
        DataPoint(date: Date(timeIntervalSince1970: 1681845600), price: 2796347.35),
        DataPoint(date: Date(timeIntervalSince1970: 1681682400), price: 2851376.63),
        DataPoint(date: Date(timeIntervalSince1970: 1681519200), price: 2796500.62),
        DataPoint(date: Date(timeIntervalSince1970: 1681356000), price: 2856211.48),
        DataPoint(date: Date(timeIntervalSince1970: 1681192800), price: 2796347.6),
        DataPoint(date: Date(timeIntervalSince1970: 1681029600), price: 2855903.57),
        DataPoint(date: Date(timeIntervalSince1970: 1680866400), price: 2854005.79),
        DataPoint(date: Date(timeIntervalSince1970: 1680703200), price: 2851002.91),
        DataPoint(date: Date(timeIntervalSince1970: 1680537600), price: 2824357.62),
        DataPoint(date: Date(timeIntervalSince1970: 1680374400), price: 2851556.77),
        DataPoint(date: Date(timeIntervalSince1970: 1680211200), price: 2787802.0),
        DataPoint(date: Date(timeIntervalSince1970: 1680048000), price: 2800000.0),
        DataPoint(date: Date(timeIntervalSince1970: 1679884800), price: 2836874.93),
        DataPoint(date: Date(timeIntervalSince1970: 1679721600), price: 2858429.25),
        DataPoint(date: Date(timeIntervalSince1970: 1679558400), price: 2853530.19),
        DataPoint(date: Date(timeIntervalSince1970: 1679395200), price: 2863832.36),
        DataPoint(date: Date(timeIntervalSince1970: 1679232000), price: 2853134.64),
        DataPoint(date: Date(timeIntervalSince1970: 1679068800), price: 2869239.0),
        DataPoint(date: Date(timeIntervalSince1970: 1678905600), price: 2819370.96),
        DataPoint(date: Date(timeIntervalSince1970: 1678742400), price: 2900416.96)
    ]


}

struct DataPoint: Equatable {
    let date: Date
    var price: Double
}
