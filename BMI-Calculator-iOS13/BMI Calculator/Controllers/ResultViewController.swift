
import UIKit

class ResultViewController: UIViewController {
    var bmi = "0.0"
    @IBOutlet weak var scoreBoard: UILabel!
    var advice: String?
    var color: UIColor?
    @IBOutlet weak var suggestionQuote: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
print(bmi)
        scoreBoard.text = bmi
        suggestionQuote.text = advice
        suggestionQuote.textColor = color
        
    }
    

    @IBAction func reCalculateButton(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
}
