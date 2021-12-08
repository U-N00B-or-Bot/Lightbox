//U-N00B-or-Bot

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
   
    
    @IBOutlet var btn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btn.setTitle("START", for: .normal)
        redLight.alpha = 0.25
        yellowLight.alpha = 0.25
        greenLight.alpha = 0.25
        
        redLight.layer.cornerRadius =  redLight.frame.size.height / 2
        yellowLight.layer.cornerRadius = yellowLight.layer.bounds.height / 2
        greenLight.layer.cornerRadius = greenLight.layer.bounds.height / 2
       
        // Do any additional setup after loading the view.
    }

    @IBAction func pressBtn() {
        if redLight.alpha == 0.25 && yellowLight.alpha == 0.25 && greenLight.alpha == 0.25 {
            redLight.alpha = 1
            btn.setTitle("NEXT!", for: .normal)
        } else if redLight.alpha == 1 {
            redLight.alpha = 0.25
            yellowLight.alpha = 1
        } else if yellowLight.alpha == 1 {
            yellowLight.alpha = 0.25
            greenLight.alpha = 1
        } else if greenLight.alpha == 1{
            greenLight.alpha = 0.25
            redLight.alpha = 1
        }
        
    }
    
}

