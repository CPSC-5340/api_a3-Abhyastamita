//
//  ListView.swift
//  Assignment3
//
//  Created by user232612 on 3/25/23.
//

import SwiftUI

struct ListItemView: View {
    
    var sourceResource : SourceResourceModel
    var provider : ProviderModel
    var dplaId : String
    
    var body: some View {
        HStack {
            ItemImageView(dplaId: dplaId, thumbnail: true)
            VStack {
                if (sourceResource.title != nil) {
                    Text(sourceResource.title![0])
                        .italic()
                } else {
                    Text("[No Title]")
                }
                Text(provider.name)
            }
        }
    }
}

//struct ListView_Previews: PreviewProvider {
//    static var previews: some View {
//        ListItemView()
//    }
//}
