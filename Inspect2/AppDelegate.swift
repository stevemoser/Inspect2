
import UIKit

// MARK: - App delegate

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        // configure environment specific variables
        EnvironmentManager.describeCurrentEnvironment()
        
        let rootNavController = MapNavigationController()
//        let baseMapViewController = MapViewController()
//        rootNavController.setViewControllers([baseMapViewController], animated: false)
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = rootNavController
        window?.tintColor = .blue
        window?.makeKeyAndVisible()
        
        return true
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        print(#function)
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        print(#function)
    }
}
