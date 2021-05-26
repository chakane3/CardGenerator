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
    @IBOutlet weak var switchColor: UISwitch!
    
    var currentSegmentIndex: Int = 0 {
        didSet {
            switch segmentControlBar.selectedSegmentIndex {
            case 0:
                if switchColor.isOn {
                    cardSymbol.image = #imageLiteral(resourceName: "blackdiamond")
                } else {
                    cardSymbol.image = #imageLiteral(resourceName: "reddiamond")
                }
            case 1:
                if switchColor.isOn {
                    cardSymbol.image = #imageLiteral(resourceName: "blackheart")
                } else {
                    cardSymbol.image = #imageLiteral(resourceName: "redheart")
                }
            case 2:
                if switchColor.isOn {
                    cardSymbol.image = #imageLiteral(resourceName: "blackclub")
                } else {
                    cardSymbol.image = #imageLiteral(resourceName: "redclub")
                }
            case 3:
                if switchColor.isOn {
                    cardSymbol.image = #imageLiteral(resourceName: "blackspade")
                } else {
                    cardSymbol.image = #imageLiteral(resourceName: "redspade")
                }
            default:
                print("ok")
            }
        }
    }
    
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
        //stepperBar.value = 1.0 <- this will make it jump to 2
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
    @IBAction func chooseSymbol(_ sender: UISegmentedControl) {
        self.currentSegmentIndex = sender.selectedSegmentIndex
    }
    
    
    // may be omitted
    @IBAction func userSwitchedColors(_ sender: UISwitch) {
        print(sender.isOn)
    }
}

