//
//  ShouldideployViewModel.swift
//  ShouldideploySwift
//
//  Created by Leonardo Benedeti on 18/09/24.
//

import Foundation

class ShouldideployViewModel : ObservableObject {
    @Published var shouldideployToday: ShouldideployModel = ShouldideployModel()
    @Published var isLoading = false
    
    func fetchGuidance(){
        guard let url = URL(string: "https://shouldideploy.today/api?tz=America/Sao_Paulo") else { return }
        
        isLoading = true
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            DispatchQueue.main.async {
                self.isLoading = false
            }
            if let data = data {
                do {
                    let decodedGuidance = try JSONDecoder().decode(ShouldideployModel.self, from: data)
                    DispatchQueue.main.async {
                        self.shouldideployToday = decodedGuidance;
                    }
                    
                    
                } catch {
                    print("erro ao decodificar dados \(error.localizedDescription)")
                }
            } else if let error = error {
                print("erro ao buscar dados da api \(error.localizedDescription)")
            }
        }.resume()
    }
    
    
}
