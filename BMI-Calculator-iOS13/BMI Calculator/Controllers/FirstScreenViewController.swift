
import UIKit

class FirstScreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func startButton(_ sender: UIButton) {
        print("hey")
        
        
        self.performSegue(withIdentifier: "secondScreenViewController", sender: self)
   
    }
     
}
