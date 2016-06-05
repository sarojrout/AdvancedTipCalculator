//
//  SecondViewController.swift
//  Innovative Calculator
//
//  Created by Saroj Rout on 3/21/15.
//  Copyright (c) 2015 Saroj Rout. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextViewDelegate {

    @IBOutlet weak var txtSubFirstNumber: UITextField!
    @IBOutlet weak var txtSubSecNumber: UITextField!
    @IBOutlet weak var lblSubstAnswer: UILabel!
    
    var subFirstNumber=""
    var subSecNumber = ""
    var subAnswer: Float=0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnSubCalculate(sender: UIButton) {
       subFirstNumber = txtSubFirstNumber.text
       subSecNumber = txtSubSecNumber.text
        
       var fFirstNumber = (subFirstNumber as NSString).floatValue
       var fSecNumber = (subFirstNumber as NSString).floatValue
       subAnswer = fFirstNumber - fSecNumber
       
       lblSubstAnswer.text = "\(subAnswer)"
    }
    
    
    @IBAction func btnSubClear(sender: UIButton) {
        txtSubFirstNumber.text=""
        txtSubSecNumber.text=""
        lblSubstAnswer.text="Answer"
    }
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        txtSubFirstNumber.resignFirstResponder()
        txtSubSecNumber.resignFirstResponder()
    }

}

