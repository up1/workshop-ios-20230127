import Foundation
import Alamofire
import SwiftyJSON

class API {
    func filterUser(for searchText: String) {
        if searchText.isEmpty {
            return
        }

        let parameters: Parameters = ["q": searchText.lowercased()]

    }
}
