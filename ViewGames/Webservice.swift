//
//  Webservice.swift
//  ViewGames
//
//  Created by İbrahim Bayram on 12.02.2023.
//

import Foundation

struct Service {
    let requestURL = URL(string: "https://www.freetogame.com/api/games?sort-by=alphabetical")
    
    func getData(completion : @escaping([Game]?)-> ()) {
        guard let url = requestURL else {return}
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if error != nil {
                print(error!)
                return
            }else if let safeData = data {
                do {
                    let jsonData = try? JSONDecoder().decode([Game].self, from: safeData)
                    guard let output = jsonData else {return}
                    completion(output)
                }
            }
        }.resume()
    }
}
