//
//  ResultSectionViewController.swift
//  Plants_test1
//
//  Created by 이진휘 on 01/10/2019.
//  Copyright © 2019 MyAppDevelopment. All rights reserved.
//

import UIKit
import Charts

class ResultViewController: UIViewController {
        
    var iosDataEntry = PieChartDataEntry(value: 0)
    var macDataEntrys = PieChartDataEntry(value: 0)
    
    var numberOfDownloadsDataEntries = [PieChartDataEntry]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //pieChart.chartDescription?.text = ""
        iosDataEntry.value = 3
        macDataEntrys.value = 3
        numberOfDownloadsDataEntries = [iosDataEntry]
        
        updateChartData()

    }
    
    func updateChartData() {
        
        let chartDataSet = PieChartDataSet(entries : numberOfDownloadsDataEntries, label : nil)
        let chartData = PieChartData(dataSet: chartDataSet)
        
        pieChart.data = chartData
        let colors = [UIColor(named: "ability1"), UIColor(named: "ability2")]
        chartDataSet.colors = colors as! [NSUIColor]
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        }
    }
    */
}
