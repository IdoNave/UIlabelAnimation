
import UIKit

class MyView: UIView {
    
    var progrssLable: UILabel?
    
    func startProgreesAnimation(from: CGFloat, duration: Double) {
        if progrssLable == nil {
            progrssLable = UILabel(frame: CGRect(x: 0, y: 0, width: frame.width * from, height: frame.height))
            progrssLable?.backgroundColor = UIColor.redColor()
            self.addSubview(progrssLable!)
        }
        UIView.animateWithDuration(duration, delay: 0, options: UIViewAnimationOptions.CurveEaseInOut, animations: {
            self.progrssLable!.frame = self.bounds
        }) { (finish) in
            print("ProgreesAnimation ended")
        }
    }
}
