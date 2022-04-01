//
//  ViewController.swift
//  ContractorCalculator
//
//  Created by Shah Mirza on 3/31/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var labor: UITextField!
    @IBOutlet weak var materials: UITextField!
    
    @IBOutlet weak var subtotal: UILabel!
    @IBOutlet weak var tax: UILabel!
    @IBOutlet weak var total: UILabel!
    
    
    @IBAction func calculate(_ sender: Any) {
        let laborText = labor.text
        let materialsText = materials.text
        
        guard let laborCost = Double(laborText!) else{
            subtotal.text = "Error: labor must be a number"
            tax.text = ""
            return total.text = ""
        }
        guard let masterialsCost = Double(materialsText!) else{
            subtotal.text = "Error: materials must be a number"
            tax.text = ""
            return total.text = ""
        }
        let subtotalAmount = laborCost + masterialsCost
        let subtotalString = String(subtotalAmount)
        
        let taxAmount = subtotalAmount * 0.05
        let taxAmountString = String(taxAmount)
        
        let totalAmount = subtotalAmount + taxAmount
        let totalAmountString = String(totalAmount)
        
        subtotal.text = "$" + subtotalString
        tax.text = "$" + taxAmountString
        total.text = "$" + totalAmountString
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

