
import UIKit

class BaseUrl{
    public static let environment = Environment.Production
    
    private static let testBaseUrl = "https://gsports.cloud/api/"
    private static let stagingBaseUrl = "https://gsports.cloud/api/"
    private static let productionBaseUrl = "https://gsports.cloud/api/"
  
    
    class func getBaseUrl(apiType:ApiType) -> String
    {
        switch apiType{
        case .OTHER:
            switch environment {
                case .Test:
                    return testBaseUrl
                case .Staging:
                    return stagingBaseUrl
                case .Production:
                    return productionBaseUrl
            }
        
        }
       
    }
    
    enum ApiType{
        case OTHER
    }
}
