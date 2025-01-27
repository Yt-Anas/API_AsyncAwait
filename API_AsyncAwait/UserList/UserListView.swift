//
//  ContentView.swift
//  API_AsyncAwait
//
//  Created by Mac on 25/01/25.
//

import SwiftUI

struct UserListView: View {
    
    @ObservedObject var viewModel = UserListViewModel()
    
    var body: some View {
        NavigationStack {
            ZStack {
                
                Color.white.ignoresSafeArea()
            
            List(viewModel.users ?? [] , id: \.id){ user in
                HStack {
                    AsyncImage(url: URL(string: user.avatarURL ?? "")) { image in
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .clipShape(Circle())
                    } placeholder: {
                        Circle()
                            .foregroundColor(.teal)
                    }
                    .frame(width: 100 , height: 100)
                    
                    VStack (alignment: .leading) {
                        Text(user.login?.capitalized ?? "")
                            .font(.headline)
                        
                        Text(user.url ?? "")
                            .font(.subheadline)
                            }
                        }
                    }
                    .navigationTitle("Users")
                    
                if viewModel.isLoading {
                    ProgressView()
                    .scaleEffect(2.0 , anchor: .center)
                    .progressViewStyle(CircularProgressViewStyle(tint: .red))
                    }
                }
            }
            .task {
                await viewModel.getUsers()
        }
            .alert(isPresented: $viewModel.shouldShowError) {
                return Alert(
                    title: Text("Error!"),
                    message: Text(viewModel.errorMessage ?? "")
                )
            }
    }
}

#Preview {
    UserListView()
}
