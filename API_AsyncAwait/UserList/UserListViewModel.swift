//
//  UserListViewModel.swift
//  API_AsyncAwait
//
//  Created by Mac on 27/01/25.
//

import Foundation

@MainActor
final class UserListViewModel: ObservableObject {
    
    @Published var users: [UsersModel]?
    @Published var isLoading = false
    @Published var shouldShowError = false
    @Published var errorMessage: String?
    
    func getUsers () async {
        isLoading = true
        do {
            let users = try await WebService.getUsersData()
            self.users = users
            self.isLoading = false
        } catch(let error){
            self.isLoading = false
            self.shouldShowError = true
            self.errorMessage = error.localizedDescription
        }
    }
}
