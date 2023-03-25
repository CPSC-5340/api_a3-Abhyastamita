//
//  ItemDetailsView.swift
//  Assignment3
//
//  Created by user232612 on 3/25/23.
//

import SwiftUI

struct ItemDetail: View {
    
    var item : ItemModel
    var sourceResource : SourceResourceModel
    var provider : ProviderModel
    
    var body: some View {
        ScrollView {
            if (sourceResource.title != nil) {
                Text(sourceResource.title![0])
                    .bold()
                    .italic()
            } else {
                Text("[No Title]")
            }
            Text(provider.name)
                .bold()
            ItemImageView(dplaId: item.id, thumbnail: false)
            Spacer()
            if (sourceResource.description != nil) {
                Text(sourceResource.description![0])
            }
            Spacer()
            if (sourceResource.rights != nil) {
                Text(sourceResource.rights![0])
            }
        }
    }
}

//struct ItemDetailsView_Previews: PreviewProvider {
//    static var previews: some View {
//        ItemDetail()
//    }
//}
