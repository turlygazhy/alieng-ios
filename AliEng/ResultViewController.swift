//
//  ResultViewController.swift
//  AliEng
//
//  Created by Umid on 29/05/21.
//

import UIKit
class ResultViewController: UIViewController, MDRotatingPieChartDelegate, MDRotatingPieChartDataSource{
    
  
    @IBOutlet weak var containerView: UIView!
    
    var slicesData  = [Data]()
    var pieChart:MDRotatingPieChart!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pieChart = MDRotatingPieChart(frame: CGRect(x: 00, y: 0, width: containerView.frame.width, height: containerView.frame.height - 20))
        

        pieChart.delegate = self
        pieChart.datasource = self
    
        containerView.addSubview(pieChart)
        
        /*
        Here you can dig into some properties
        -------------------------------------
        */
        var properties = Properties()

        properties.smallRadius = 50
        properties.bigRadius = 120
        properties.expand = 25
    
        
        properties.displayValueTypeInSlices = .percent
        properties.displayValueTypeCenter = .label
        
        properties.fontTextInSlices = UIFont(name: "Arial", size: 12)!
        properties.fontTextCenter = UIFont(name: "Arial", size: 10)!

        properties.enableAnimation = true
        properties.animationDuration = 0.5
        
        
        let nf = NumberFormatter()
        nf.groupingSize = 3
        nf.maximumSignificantDigits = 2
        nf.minimumSignificantDigits = 2
        
        properties.nf = nf
        
        pieChart.properties = properties
       
       
    }
    
    
    
    @IBAction func okAction(_ sender: UIButton) {
   
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    func didOpenSliceAtIndex(_ index: Int) {
        print("Open slice at \(index)")
    }
    
    func didCloseSliceAtIndex(_ index: Int) {
        print("Close slice at \(index)")
    }
    
    func willOpenSliceAtIndex(_ index: Int) {
        print("Will open slice at \(index)")
    }
    
    func willCloseSliceAtIndex(_ index: Int) {
        print("Will close slice at \(index)")
    }
    
    //Datasource
    func colorForSliceAtIndex(_ index:Int) -> UIColor {
        return slicesData[index].color
    }
    
    func valueForSliceAtIndex(_ index:Int) -> CGFloat {
        return slicesData[index].value
    }
    
    func labelForSliceAtIndex(_ index:Int) -> String {
        return "" //slicesData[index].label
    }
    
    func numberOfSlices() -> Int {
        return slicesData.count
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        refresh()
    }
    
    @objc func refresh()  {
        pieChart.build()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}





    
