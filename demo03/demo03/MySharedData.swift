class MySharedData {
    static let instamce = MySharedData()
    
    // Private constructor
    private init(){
        
    }
    
    // Global variables and function
    var isOpen = true
    
    func getDataByKey(key: String) -> String {
        return ""
    }
}
