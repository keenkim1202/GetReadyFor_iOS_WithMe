//
//  BarViewController.swift
//  ChartsEx
//
//  Created by KEEN on 2022/05/08.
//

import UIKit
import Charts

class BarViewController: UIViewController {
  
  @IBOutlet weak var barChartView: BarChartView!
  @IBOutlet weak var dataTextField: UITextField!
  
  var numbers: [Double] = [3.3, 2.4, 11.4, 7.6, 4.4, 8.4, 5.5]
  var months: [String] = ["1월", "2월", "3월", "4월", "5월", "6월", "7월"]
  
  override func viewDidLoad() {
    super.viewDidLoad()
    drawGraph()
  }
  
  func drawGraph() {
    var chartEntry: [ChartDataEntry] = []
    
    for i in 0..<numbers.count {
      let value = BarChartDataEntry(x: Double(i), y: numbers[i])
      chartEntry.append(value)
    }
    
    let lineGraph = BarChartDataSet(entries: chartEntry, label: "숫자 데이터")
    lineGraph.colors = [.systemGreen]
    
    let data = BarChartData()
    data.addDataSet(lineGraph)
    
    barChartView.data = data
    barChartView.chartDescription?.text = "나의 막대 그래프"
    barChartView.xAxis.valueFormatter = IndexAxisValueFormatter(values: months)
    barChartView.xAxis.labelPosition = .bottom
    barChartView.rightAxis.enabled = false
    barChartView.animate(xAxisDuration: 1.5, yAxisDuration: 1.5)
  }
  
  @IBAction func addButtonClicked(_ sender: UIButton) {
    let newData = Double(dataTextField.text!)
    numbers.append(newData!)
    
    drawGraph()
    dataTextField.text = ""
  }
}
