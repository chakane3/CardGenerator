//
//  ViewController.swift
//  CardGenerator
//
//  Created by Chakane Shegog on 5/6/21.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Outlets and Properties
    @IBOutlet weak var segmentControlBar: UISegmentedControl!
    @IBOutlet weak var stepperBar: UIStepper!
    @IBOutlet weak var cardNumber: UILabel!
    @IBOutlet weak var cardSymbol: UIImageView!
    
//    var currentSegmentIndex: Int = 0 {
//        didSet {
//            switch segmentControlBar.selectedSegmentIndex {
//            case 0:
//                cardSymbol.image = ♠️
//
//            case 1:
//                cardSymbol.image = ♦️
//            default:
//                print("ok")
//            }
//        }
//    }
    
    var cardnumber: Double = 0.0 {
        didSet {
            cardNumber.text = String(format: "%0.f", stepperBar.value)
        }
    }
    
    
    // MARK: - View Controller Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        configureStepper()
    }
    
    func configureStepper() {
        stepperBar.minimumValue = 0.0
        stepperBar.maximumValue = 13.0
        stepperBar.value = 1.0
    }

    // MARK: - Actions and Methods
    @IBAction func chooseValue(_ sender: UIStepper) {
        switch sender.value {
        case 11:
            cardNumber.text = "K"
        
        case 12:
            cardNumber.text = "Q"
            
        case 13:
            cardNumber.text = "J"
        default:
            cardnumber = sender.value
        }
        
        
    }
    @IBAction func chooseSymbol(_ sender: Any) {
    }
    
}

