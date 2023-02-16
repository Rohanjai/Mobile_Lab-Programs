import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Output: UILabel!

    @IBOutlet weak var lit: UITextField!

    @IBOutlet weak var amt: UITextField!

    override func viewDidLoad() {

        super.viewDidLoad()

        lit.placeholder="TYPE NUM"

        amt.placeholder="OUTPUT ??"

        

        // Do any additional setup after loading the view, typically from a nib.

    }

    override func didReceiveMemoryWarning() {

        super.didReceiveMemoryWarning()

        // Dispose of any resources that can be recreated.

    }

    @IBAction func calbill(_ sender: Any) {

        let numberstring:String = lit.text!;

        let numberint:Int = (numberstring as NSString).integerValue

        var r = numberint;

        var c=0;

        if(r==1){

            amt.text="not a prime"

            c=1

        }

        else{

        for i in 2..<r{

            if r%i==0 {

                amt.text="not a prime"

                c=1;

            }

        }

        }

        if(c==0){

        amt.text="prime"

        }

        

    }

}