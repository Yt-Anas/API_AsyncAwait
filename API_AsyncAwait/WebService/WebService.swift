//
//  WebService.swift
//  API_AsyncAwait
//
//  Created by Mac on 26/01/25.
//

import Foundation

final class WebService {
    
    static func getUsersData()  async throws -> [UsersModel] {
        let urlString = "https://api.github.com/users"
        guard let url = URL(string: urlString) else {
            throw ErrorCases.invalidURL
        }
        
        let (data , response) = try await URLSession.shared.data(from: url)
        
        guard let response = response as? HTTPURLResponse,
              response.statusCode == 200 else {
            throw ErrorCases.invalidResponse
        }
        
        do {
            let decoder = JSONDecoder()
            return try decoder.decode([UsersModel].self, from: data)
        } catch {
            throw ErrorCases.invalidData
        }
    }
}



