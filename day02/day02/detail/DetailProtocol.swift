import Foundation

protocol DetailProtocol : AnyObject {
    func setData(data : String)
}

struct UserModel : Codable {
    
}

typealias MyFunction = (() -> Void)?

class B : DetailProtocol {
    
    var target : MyFunction?
    
    func setData(data: String) {
    }
    
    func process(t : MyFunction?) {
        self.target = t
    }
}

class A : DetailProtocol {
    func doSth1(){
    }
}

extension A {
    func setData(data: String) {
    }
}
