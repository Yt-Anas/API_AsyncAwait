//
//  ErrorCases.swift
//  API_AsyncAwait
//
//  Created by Mac on 26/01/25.
//

import Foundation


enum ErrorCases : LocalizedError {
    case invalidURL
    case invalidResponse
    case invalidData
    
    var errorDescription: String? {
        switch self {
        case .invalidURL:
            return "Invalid Url Found"
            
        case .invalidResponse :
            return "Invalid Response Found"
            
        case .invalidData :
            return "Invalid Data Found"
        }
    }
}
