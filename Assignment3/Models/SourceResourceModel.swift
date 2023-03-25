//
//  SourceResourceModel.swift
//  Assignment3
//
//  Created by user232612 on 3/25/23.
//

import Foundation

struct SourceResourceModel : Codable {
    let description : [String]?
    let publisher : [String]?
    let relation : [String]?
    let title : [String]?
    let rights : [String]?
    let date : [DateModel]?
}

struct DateModel : Codable {
    let displayDate : String
}
