//
//  personModel.swift
//  MyExampleApp
//
//  Created by Str1de on 10.03.2022.
//

import Foundation

struct Man {
    var name: String
    var surname: String
    var fullName: String { "\(name) \(surname)" }
    
    static func getFullName() -> Man {
        Man(name: "Dmitry", surname: "Osipov")
    }
}
