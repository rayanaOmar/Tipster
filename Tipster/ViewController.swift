//
//  ViewController.swift
//  Tipster
//
//  Created by admin on 08/12/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberLabel: UILabel!
    
    @IBOutlet weak var tipPercent: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var tipTotal: UILabel!
    
    @IBOutlet weak var tipFive: UILabel!
    @IBOutlet weak var tipFiveLabel: UILabel!
    @IBOutlet weak var tipFiveTotal: UILabel!
    
    @IBOutlet weak var tipTen: UILabel!
    @IBOutlet weak var tipTenLabel: UILabel!
    @IBOutlet weak var tipTenTotal: UILabel!
    
    @IBOutlet weak var tipSlider: UISlider!

    @IBOutlet weak var groupSizeLabel: UILabel!
    @IBOutlet weak var groupSizeSlider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    //Button Action Part
    @IBAction func buttonAction(_ sender: UIButton) {
        if numberLabel.text == "0"{
            numberLabel.text = ""
        }
        if sender.titleLabel?.text == "0"{
            numberLabel.text! += "0"
            
        }else if(sender.titleLabel?.text == "1"){
            numberLabel.text! += "1"
            
        }else if(sender.titleLabel?.text == "2"){
            numberLabel.text! += "2"
            
        }else if(sender.titleLabel?.text == "3"){
            numberLabel.text! += "3"
            
        }else if(sender.titleLabel?.text == "4"){
            numberLabel.text! += "4"
            
        }else if(sender.titleLabel?.text == "5"){
            numberLabel.text! += "5"
           
        }else if(sender.titleLabel?.text == "6"){
            numberLabel.text! += "6"
            calculateTip()
        }else if(sender.titleLabel?.text == "7"){
            numberLabel.text! += "7"
           
        }else if(sender.titleLabel?.text == "8"){
            numberLabel.text! += "8"
           
        }else if(sender.titleLabel?.text == "9"){
            numberLabel.text! += "9"
            
        }else if(sender.titleLabel?.text == "c"){
            numberLabel.text! = "0"
           
        }else { //The case with dot .
            if((numberLabel.text!.contains("."))){
                return
            }
            numberLabel.text! += "."
        
        }
        calculateTip()
    }
    
    //Sliders Change part
    
    @IBAction func tipSliderAction(_ sender: UISlider) {
        tipPercent.text = "\(Int(sender.value))%"
        tipFive.text = "\(Int(sender.value) + 5)%"
        tipTen.text = "\(Int(sender.value) + 10)%"
        calculateTip()
    }
    

    @IBAction func gruopSizeAction(_ sender: UISlider) {
        groupSizeLabel.text = "GroupSize: \(Int(sender.value))"
        calculateTip()
    }
    //Calcuate Tip Part
    func calculateTip(){
        
        let firstTip = (tipPercent.text! as NSString).doubleValue
        let secondTip = (tipFive.text! as NSString).doubleValue
        let thirdTip = (tipTen.text! as NSString).doubleValue

        let showNo = (numberLabel.text! as NSString).doubleValue
        let groupSize = Double (Int(groupSizeSlider.value))
                
                
        tipLabel.text = String(format: "%.2f%", (showNo * firstTip / 100) / groupSize)
        tipFiveLabel.text = String(format: "%.2f%", (showNo * secondTip / 100) / groupSize)
        tipTenLabel.text = String(format: "%.2f%", (showNo * thirdTip / 100) / groupSize)

       tipTotal.text = String(format: "%.2f%" , (showNo * firstTip / 100 + showNo)/groupSize)
       tipFiveTotal.text = String(format: "%.2f%" , (showNo * secondTip / 100 + showNo )/groupSize)
       tipTenTotal.text = String(format: "%.2f%" , (showNo * thirdTip / 100 + showNo )/groupSize)
        
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    


}

