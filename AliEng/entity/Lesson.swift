//
//  Lesson.swift
//  AliEng
//
//  Created by Ерасыл Турлыгажы on 28.05.2021.
//

import Foundation

struct Lesson: Codable {
    var id: Int
    var position: Int
    var name: String
    var lectureLink: String
    var practiceLink: String
    var dialogs: [Dialog]
    var vocabulary: [Word]
}
