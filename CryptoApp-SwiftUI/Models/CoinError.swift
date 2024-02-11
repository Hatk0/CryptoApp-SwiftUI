import Foundation

enum CoinError: CoinError, LocalizedError {
    case invalidURL
    case serverError
    case invalidData
    case unknown(CoinError)
    
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
