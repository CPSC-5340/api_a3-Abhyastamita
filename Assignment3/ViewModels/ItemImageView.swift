//
//  imageView.swift
//  Assignment3
//
//  Created by user232612 on 3/25/23.
//

import SwiftUI

struct ItemImageView: View {
    var dplaId : String
    var thumbnail : Bool
        
    var body: some View {
        AsyncImage(url: URL(string: "https://dp.la/thumb/\(dplaId)")) { image in
            image.resizable()
                .scaledToFit()
                .cornerRadius(10)
                .frame(width: thumbnail ? 50 : 300, height: thumbnail ? 50 : 300)
        } placeholder: {
            ProgressView()
        }
            
    }
}

struct imageView_Previews: PreviewProvider {
    static var previews: some View {
        ItemImageView(dplaId : "0de98df74de0eb47333e8364e6f5224f", thumbnail: false)
    }
}
