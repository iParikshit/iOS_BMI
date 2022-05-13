import UIKit

class BMIViewController: UIViewController {
    @IBOutlet weak var height: UILabel!
    @IBOutlet weak var weight: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    var cal = Calculator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func heightController(_ sender: UISlider) {
        print(sender.value)
        height.text = "\(String(format: "%.2f", sender.value) ) m"
        //String(format sender.value)
        
    }
    
    @IBAction func weightController(_ sender: UISlider) {
        weight.text  =    "\( String(format: "%.2f", sender.value)) Kg"
    }
    @IBAction func calculator(_ sender: UIButton) {
       let  bmi = cal.cal(weightSlider.value, heightSlider.value)
        print(bmi)

        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "goToResult"){
            print("hello")
            let destinationVC = segue.destination
   as! ResultViewController
            destinationVC.bmi = String(format: "%.2f",  cal.getValue())
            destinationVC.advice = cal.getAdvice()
            destinationVC.color = cal.getColor()
        }
    }
}

