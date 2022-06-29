//
//  Fields.swift
//  DIYExmtoHandbagsV3TEST
//
//  Created by Sophie Marcotte on 6/29/22.
//

import Foundation
struct Fields : Codable {
    let id : String
    let title : String
    let type : String?
    let description : String?
    let items : Items?
    let pattern : String?
    let required : Bool?
    let components : [Embossing]?
}
