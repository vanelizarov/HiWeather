import UIKit 
import GoogleMobileads

class ViewController : UIViewController, GADBannerViewDelegate {

	override func viewDidLoad() {

		super.viewDidLoad()
		//...

	}

	//...

	func adViewDidReceiveAd(bannerView: GADBannerView) {

		print("Successfully received ad")

	}

	func adView(view: GADBannerView!, didFailToReceiveAdWithError error: GADRequestError!) {

		print("Failed to receive ad with error: \(error.localizedDescription)")
		self.requestaAdSpecifiedOnLocation(HWLManager.sharedInstanse.currentLocation)

	}

}