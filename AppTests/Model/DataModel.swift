//
//  DataModel.swift
//  AppTests
//
//  Created by Daniel on 05/09/22.
//

import Foundation

final class ModelData: ObservableObject {
   @Published var landmarks: [Landmark] = load("landmark.json")
}



func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Não foi possível encontrar \(filename) no bundle principal")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Não foi possível carregar \(filename) para o bundle principal: \n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Não foi possível analisar \(filename) como \(T.self): \n\(error)")
    }
}
