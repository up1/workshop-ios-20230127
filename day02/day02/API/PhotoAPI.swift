import Foundation
import SwiftyJSON
import Moya
import Alamofire

class PhotoAPI {
    func fetchData01(){
        AF.request("https://jsonplaceholder.typicode.com/photos?_limit=5")
            .validate()
            .responseJSON { response in
                switch response.result {
                case .success(let value):
                    print("JSON: \(value)")
                case .failure(let error):
                    print("Error: \(error)")
                }
            }
    }
    
    func fetchData02(){
        let provider = MoyaProvider<MyService>()
        provider.request(.photos(limit: 5)) { result in
            switch result {
            case let .success(response):
                let json = JSON(response.data)
                print("JSON: \(json)")
            case let .failure(error):
                print("Error: \(error)")
            }
        }
    }
}

enum MyService {
    case photos(limit: Int)
}

extension MyService: TargetType {
    var baseURL: URL {
        return URL(string: "https://jsonplaceholder.typicode.com")!
    }
    
    var path: String {
        switch self {
        case .photos:
            return "/photos"
        }
    }
    
    var method: Moya.Method {
        return .get
    }
    
    var sampleData: Data {
        return Data()
    }
    
    var task: Task {
        switch self {
        case let .photos(limit):
            return .requestParameters(parameters: ["_limit": limit], encoding: URLEncoding.queryString)
        }
    }
    
    var headers: [String : String]? {
        return ["Content-type": "application/json"]
    }
}
