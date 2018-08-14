import Foundation

protocol IAdapter {
    var listener: IAdapterListener? { get set }
    func showInfo()
    func start() throws
    func send(to address: String, amount: Int)
    func validate(address: String) -> Bool
}

protocol IAdapterListener: class {
    func handle(transactionRecords: [TransactionRecord])
}
