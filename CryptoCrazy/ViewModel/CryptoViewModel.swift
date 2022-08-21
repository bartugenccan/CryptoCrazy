//
//  CryptoViewModel.swift
//  CryptoCrazy
//
//  Created by Bartu Gençcan on 21.08.2022.
//

import Foundation

struct CryptoListViewModel{
    let cryptoCurrencyList: [CryptoCurrency]
}

extension CryptoListViewModel {
    
    func numberOfRows() -> Int {
        return self.cryptoCurrencyList.count
    }
    
    func cryptoAtIndex(_ index: Int) -> SingleCryptoViewModel {
        let crypto = self.cryptoCurrencyList[index]
        return SingleCryptoViewModel(singleCrypto: crypto)
    }
}

struct SingleCryptoViewModel {
    let singleCrypto: CryptoCurrency
    
    var name: String {
        return self.singleCrypto.currency
    }
    
    var price: String {
        return self.singleCrypto.price
    }
}
