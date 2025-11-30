//
//  HomeView.swift
//  MiniAppBuild
//
//  Created by Paul Angelo Chua on 11/30/25.
//

import Foundation
import SwiftUI

struct HomeView: View {
    @State private var username = ""
    @State private var password = ""
    
    struct TeamsReponse: Codable {
        let data: [Team]
    }

    var body: some View {
        ZStack {
            Color.red
                .ignoresSafeArea()
                .opacity(0.5)
            NavigationStack {
                
            }
            .padding()
        }
    }
    
    func getNbaTeams() async throws -> [Team] {
        let apiUrl = "https://api.balldontlie.io/v1/teams"
        guard let url = URL(string: apiUrl) else {
            throw ErrorHandler.invalidAPIUrl
        }
        
        let (data, response) = try await URLSession.shared.data(from: url)
        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
            throw ErrorHandler.invalidStatusCode
        }
        
        do {
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
            let teamsResponse = try decoder.decode(TeamsReponse.self, from: data)
            return teamsResponse.data
        } catch {
            throw ErrorHandler.invalidResponse
        }
    }
}

#Preview {
    HomeView()
}
