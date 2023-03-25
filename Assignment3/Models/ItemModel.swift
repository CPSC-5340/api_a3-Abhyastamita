//
//  ItemModel.swift
//  Assignment3
//
//  Created by user232612 on 3/25/23.
//

import Foundation

struct ItemResults : Codable {
    let count : Int
    let docs : [ItemModel]
}

struct ItemModel : Codable, Identifiable {
    let id : String
    let object : String?
    let sourceResource : SourceResourceModel
    let provider : ProviderModel
}
