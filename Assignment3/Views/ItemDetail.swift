//
//  ItemDetailsView.swift
//  Assignment3
//
//  Created by user232612 on 3/25/23.
//

import SwiftUI

struct ItemDetail: View {
    
    var item : ItemModel
    
    var body: some View {
        Text(item.id)
    }
}

//struct ItemDetailsView_Previews: PreviewProvider {
//    static var previews: some View {
//        ItemDetail()
//    }
//}
