/*
See LICENSE folder for this sample’s licensing information.

Abstract:
Application's delegate.
*/

import UIKit
import ARKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
	var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey : Any]? = nil) -> Bool
    {
        guard ARWorldTrackingConfiguration.isSupported else {
            fatalError("""
                ARKit is not available on this device. For apps that require ARKit
                for core functionality, use the `arkit` key in the key in the
                `UIRequiredDeviceCapabilities` section of the Info.plist to prevent
                the app from installing. (If the app can't be installed, this error
                can't be triggered in a production scenario.)
                In apps where AR is an additive feature, use `isSupported` to
                determine whether to show UI for launching AR experiences.
            """) // For details, see https://developer.apple.com/documentation/arkit
        }
        
        //removed dependency on storyboard for UIStoryboard; thus need to set programmatically
        self.window = UIWindow(frame: UIScreen.main.bounds)
        let mainStoryboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)

        //check user default for whether or not this application has launched before
        let launchedBefore = UserDefaults.standard.bool(forKey: "launchedBefore")
        
        if launchedBefore
        {
            let standardViewController: UINavigationController = mainStoryboard.instantiateViewController(withIdentifier: "StandardViewController") as! UINavigationController
            self.window?.rootViewController = standardViewController
        }
        else
        {
            let tutorialViewController: UIViewController = mainStoryboard.instantiateViewController(withIdentifier: "TutorialViewController")
            self.window?.rootViewController = tutorialViewController
            
            UserDefaults.standard.set(true, forKey: "launchedBefore")
        }
        
        self.window?.makeKeyAndVisible()

        return true
    }
	
	func applicationWillResignActive(_ application: UIApplication) {
		if let viewController = self.window?.rootViewController as? ViewController {
			viewController.blurView.isHidden = false
		}
	}
	
	func applicationDidBecomeActive(_ application: UIApplication)
    {
		if let viewController = self.window?.rootViewController as? ViewController
        {
			viewController.blurView.isHidden = true
		}
	}
}
