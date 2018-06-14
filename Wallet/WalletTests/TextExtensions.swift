import Foundation
@testable import Wallet

extension Coin: Equatable {
    public static func ==(lhs: Coin, rhs: Coin) -> Bool {
        return lhs.name == rhs.name &&
                lhs.code == rhs.code
    }
}

extension CoinValue: Equatable {
    public static func ==(lhs: CoinValue, rhs: CoinValue) -> Bool {
        return lhs.coin == rhs.coin &&
                lhs.value == rhs.value
    }
}

extension Currency: Equatable {
    public static func ==(lhs: Currency, rhs: Currency) -> Bool {
        return lhs.code == rhs.code &&
                lhs.symbol == rhs.symbol
    }
}

extension CurrencyValue: Equatable {
    public static func ==(lhs: CurrencyValue, rhs: CurrencyValue) -> Bool {
        return lhs.currency == rhs.currency &&
                lhs.value == rhs.value
    }
}

extension WalletBalanceViewModel: Equatable {
    public static func ==(lhs: WalletBalanceViewModel, rhs: WalletBalanceViewModel) -> Bool {
        return lhs.coinValue == rhs.coinValue &&
                lhs.convertedValue == rhs.convertedValue &&
                lhs.rate == rhs.rate
    }
}
