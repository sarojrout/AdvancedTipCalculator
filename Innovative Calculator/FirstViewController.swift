//
//  FirstViewController.swift
//  Innovative Calculator
//
//  Created by Saroj Rout on 3/21/15.
//  Copyright (c) 2015 Saroj Rout. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var txtAddFirstNumber: UITextField!
    @IBOutlet weak var txtAddsecNumber: UITextField!
    @IBOutlet weak var txtMultFirstNumber: UITextField!
    @IBOutlet weak var txtMulSecNumber: UITextField!
    @IBOutlet weak var txtDivFirstNumber: UITextField!
    @IBOutlet weak var txtDivSecNumber: UITextField!
    @IBOutlet weak var lblAdditionAnswer: UILabel!
    @IBOutlet weak var lblMulAnswer: UILabel!
    @IBOutlet weak var lblDivAnswer: UILabel!
    
    var additionFirstNumber = ""
    var additionSecNUmber = ""
    var additionAnswer: Float = 0
    
    var multiFirstNumber = ""
    var multiSecNumber = ""
    var multiAnswer: Float=0
    
    var divFirstNumber = ""
    var divSecNumber = ""
    var divAnswer:Float=0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func btnAdditionCalculate(sender: UIButton) {
        additionFirstNumber=txtAddFirstNumber.text
        additionSecNUmber=txtAddsecNumber.text
        
        var fFirstNumber = (additionFirstNumber as NSString).floatValue
        var fSecNumber = (additionSecNUmber as NSString).floatValue
        additionAnswer = fFirstNumber + fSecNumber
        
        lblAdditionAnswer.text = "\(additionAnswer)"
        txtAddFirstNumber.resignFirstResponder()
        txtAddsecNumber.resignFirstResponder()
        
    }
    @IBAction func btnAdditionClear(sender: UIButton) {
        txtAddFirstNumber.text=""
        txtAddsecNumber.text=""
        lblAdditionAnswer.text="Answer"
    }
    
    @IBAction func btnMultiCalculate(sender: UIButton) {
      multiFirstNumber=txtMultFirstNumber.text
      multiSecNumber = txtMulSecNumber.text
      var fFirstNumber = (multiFirstNumber as NSString).floatValue
      var fSecNumber = (multiSecNumber as NSString).floatValue
      multiAnswer = fFirstNumber * fSecNumber
        
      lblMulAnswer.text = "\(multiAnswer)"
      txtMultFirstNumber.resignFirstResponder()
      txtMulSecNumber.resignFirstResponder()
    }
    
    @IBAction func btnMultiClear(sender: UIButton) {
        txtMultFirstNumber.text=""
        txtMulSecNumber.text=""
        lblMulAnswer.text="Answer"
        
    }
    @IBAction func btnDivCalculate(sender: UIButton) {
        divFirstNumber = txtDivFirstNumber.text
        divSecNumber = txtDivSecNumber.text
        
        var fFirstNumber = (divFirstNumber as NSString).floatValue
        var fSecNumber = (divSecNumber as NSString).floatValue
        divAnswer = fFirstNumber / fSecNumber
        
        lblDivAnswer.text = "\(divAnswer)"
        
        txtDivFirstNumber.resignFirstResponder()
        txtDivSecNumber.resignFirstResponder()
    }

    @IBAction func btnDIvClear(sender: UIButton) {
        txtDivFirstNumber.text=""
        txtDivSecNumber.text=""
        lblDivAnswer.text="Answer"

    }
}

