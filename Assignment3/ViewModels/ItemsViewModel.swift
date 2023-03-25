//
//  ItemViewModel.swift
//  Assignment3
//
//  Created by user232612 on 3/25/23.
//

import Foundation

class ItemsViewModel : ObservableObject {
    
    @Published private(set) var itemsData = [ItemModel]()
    @Published var hasError = false
    @Published var error : ItemsModelError?
    private let url = "https://api.dp.la/v2/items?q=cats&page_size=25&api_key=5b1ca38478bbc936669497f256b83565"
    
    @MainActor
    func fetchData() async {
        if let url = URL(string: url) {
            do {
                let (data, _) = try await URLSession.shared.data(from: url)
                guard let results = try JSONDecoder().decode(ItemResults?.self, from: data) else {
                    self.hasError.toggle()
                    self.error = ItemsModelError.decodeError
                    return
                }
                self.itemsData = results.docs
            } catch {
                self.hasError.toggle()
                self.error = ItemsModelError.customError(error: error)
            }
        }
    }
}

extension ItemsViewModel {
    enum ItemsModelError : LocalizedError {
        case decodeError
        case customError(error: Error)
                
        var errorDescription: String? {
        switch self {
            case .decodeError:
                return "Decoding Error"
            case .customError(let error):
                print(String(describing: error))
                return error.localizedDescription
            }
        }
    }
}
