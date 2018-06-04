
import UIKit

final class MapNavigationController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationBar.isTranslucent = false
        navigationBar.barTintColor = .blue
        navigationBar.titleTextAttributes = [
            .foregroundColor: UIColor.white
        ]
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return viewControllers.first?.preferredStatusBarStyle ?? .lightContent
    }
}
