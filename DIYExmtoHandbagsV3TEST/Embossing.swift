//
//  Embossing.swift
//  DIYExmtoHandbagsV3TEST
//
//  Created by Sophie Marcotte on 6/29/22.
//

import Foundation
struct Embossing : Codable{
    let id : String
    let title : String
    let subtitle : String?
    let minLength : Int?
    let maxLength : Int?
    let unitOfMeasurement : String?
    let description : String?
}
