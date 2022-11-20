//
//  Petition.swift
//  WhitehousePetitions
//
//  Created by Talha Gölcügezli on 19.11.2022.
//

import Foundation

struct Petition: Codable {
    var title: String
    var body: String
    var signatureCount: Int
}
