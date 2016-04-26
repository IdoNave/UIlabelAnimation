
import UIKit

class ViewController: UIViewController {

    var button: MyView!
    override func viewDidLoad() {
        super.viewDidLoad()
        button = MyView(frame: CGRect(x: 30, y: 30, width: 300, height: 64))
        self.view.addSubview(button)
    }

    override func viewDidAppear(animated: Bool) {
        button.startProgreesAnimation(0.5, duration: 5)
    }


}

