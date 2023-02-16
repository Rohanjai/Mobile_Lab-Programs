import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Output: UILabel!

    @IBOutlet weak var lit: UITextField!

    @IBOutlet weak var amt: UITextField!

    override func viewDidLoad() {

        super.viewDidLoad()

        lit.placeholder="TYPE NUM"

        amt.placeholder="OUTPUT ??"

    }

    override func didReceiveMemoryWarning() {

        super.didReceiveMemoryWarning()

    }

    @IBAction func calbill(_ sender: Any) {

        let numberstring:String = lit.text!;

        let numberint:Int = (numberstring as NSString).integerValue

        var r = numberint;

        var c=1;

        for i in 1...r{

            c=c*i

        }

        amt.text="\(c)"

    }

}
