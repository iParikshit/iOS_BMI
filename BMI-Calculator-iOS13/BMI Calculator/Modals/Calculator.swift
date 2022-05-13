
import Foundation
import UIKit

struct Calculator{
    var bmi: Float = 0.0
    var advice:String = ""
    var color: UIColor = UIColor.white
    mutating func cal(_ weightSlider: Float, _ heightSlider: Float) -> Float{
        bmi = weightSlider/pow(heightSlider, 2)
        if(bmi<18.5){
            advice = "human, eat something, under weight!!!"
            color = UIColor.red
        }else if (bmi < 24.9){
            advice = "fit human!!! "
            color = UIColor.green
        }else{advice = "overweight!!! do cardio"
            color = UIColor.red
            
        }
return bmi
    }
    
   func getValue()->Float{
       return bmi
   }
    func getAdvice()->String{
        return advice
    }
    
    func getColor() ->UIColor{
        return color
    }
}

