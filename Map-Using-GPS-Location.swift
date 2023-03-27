import UIKit
import MapKit
class ViewController: UIViewController {
    @IBOutlet var mapview: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let loc=CLLocationCoordinate2D(latitude:13.110509,longitude:80.260691)
        let span=MKCoordinateSpan(latitudeDelta:0.05,longitudeDelta:  0.05)
        let region=MKCoordinateRegion(center: loc, span: span)
        mapview.setRegion(region, animated: true)
        let ann=MKPointAnnotation()
        ann.coordinate=loc
        ann.title="CHENNAI"
        ann.subtitle="INDIA"
        mapview.addAnnotation(ann)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}