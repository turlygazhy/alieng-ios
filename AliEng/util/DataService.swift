//
//  DataService.swift
//  AliEng
//
//  Created by Ерасыл Турлыгажы on 28.05.2021.
//

import Foundation

public class DataService {
    
    static let instance = DataService()
    
    @Published var lessons = [Lesson]()
    
    private init() {
        load()
    }
    
    func load() {
        if let fileLocation = Bundle.main.url(forResource: "lesson", withExtension: "json") {
            do{
                let data = try Data(contentsOf: fileLocation)
                let jsonDecoder = JSONDecoder()
                let dataFromJson = try jsonDecoder.decode([Lesson].self, from: data)
                self.lessons = dataFromJson
            } catch {
                print(error)
            }
        }
    }
    
}
