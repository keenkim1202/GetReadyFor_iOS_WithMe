//
//  LineViewController.swift
//  ChartsEx
//
//  Created by KEEN on 2022/05/08.
//

import UIKit
import Charts

class LineViewController: UIViewController {
  
  @IBOutlet weak var chartView: LineChartView!
  @IBOutlet weak var numberTextField: UITextField!
  
  var numbers: [Double] = [3.3, 2.4, 11.4, 7.6, 4.4, 8.4, 5.5]
  
  override func viewDidLoad() {
    super.viewDidLoad()
    drawGraph()
  }
  
  func drawGraph() {
    var chartEntry: [ChartDataEntry] = []
    
    for i in 0..<numbers.count {
      let value = ChartDataEntry(x: Double(i), y: numbers[i])
      chartEntry.append(value)
    }
    
    let lineGraph = LineChartDataSet(entries: chartEntry, label: "숫자 데이터")
    lineGraph.colors = [.systemRed]
    lineGraph.circleColors = [.systemOrange]
    
    let data = LineChartData()
    data.addDataSet(lineGraph)
    
    chartView.data = data
    chartView.chartDescription?.text = "나의 꺾은선 그래프"
    chartView.animate(xAxisDuration: 1.5)
  }
  
  @IBAction func addButtonClicked(_ sender: UIButton) {
    let newData = Double(numberTextField.text!)
    numbers.append(newData!)
    drawGraph()
    
    numberTextField.text = ""
  }
  
}
