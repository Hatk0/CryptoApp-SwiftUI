import Foundation

enum CoinError: Error, LocalizedError {
    case invalidURL
    case serverError
    case invalidData
    case unknown(Error)
    
    var errorDescription: String? {
        switch self {
        case .invalidURL:
            return ""
        case .serverError:
            return "There was an error with the server. Try again"
        case .invalidData:
            return "The data is invalid. Try again"
        case .unknown(let error):
            return error.localizedDescription
        }
    }
}
