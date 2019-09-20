import UIKit

class Singleton: NSObject {
    
    var title : String!
    
    class var sharedInstance: Singleton {
        struct Static {
            static let instance : Singleton = Singleton()
        }
        return Static.instance
    }
    
}
