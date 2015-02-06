//
//  ViewController.swift
//  TipCalculator
//
//  Created by iStudents on 2/6/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        refreshUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBOutlet weak var tTextField: UITextField!
    @IBOutlet weak var taxPctSlider: UISlider!
    @IBOutlet weak var resultTextView: UITextView!
    @IBOutlet weak var taxPctLabel: UILabel!
    
    @IBAction func calculateTapped(sender: AnyObject) {
        tipCalc.total = Double((tTextField.text as NSString).doubleValue)
        let possibleTips = tipCalc.returnPossibleTip()
        var results = ""
        
        for (tipPct, tipValue) in possibleTips {
            results += "\(tipPct)%: \(tipValue)\n"
        }
        resultTextView.text = results
    }
    @IBAction func taxPercentageChanged(sender: AnyObject) {
        tipCalc.taxPct = Double(taxPctSlider.value) / 100.0
        refreshUI()
    }
    @IBAction func viewTapped(sender: AnyObject) {
        tTextField.resignFirstResponder()
    }
    let tipCalc = TipCalculatorModel(total: 33.25, taxPct: 0.06)
    func refreshUI(){
        tTextField.text = String(format: "%0.2f", tipCalc.total)
        taxPctSlider.value = Float(tipCalc.taxPct) * 100
        taxPctLabel.text = "Tax Percentage (\(Int(taxPctSlider.value))%)"
        resultTextView.text = ""
    }
}

