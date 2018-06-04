
import Foundation

struct EnvironmentManager {

    
    static func describeCurrentEnvironment() {
        print("*** Current Build Configuration:")
        #if DEBUG
            print("Debug")
        #elseif RELEASE
            print("Release")
        #else
            fatalError("Unsupported")
        #endif
        
        print("*** Current Environment:")
        #if LOCALHOST
            print("Localhost")
        #elseif DEVELOPMENT
            print("Development")
        #elseif QA
            print("QA")
        #elseif PRODUCTION
            print("Production")
        #else
            fatalError("Unsupported")
        #endif
    }
}
