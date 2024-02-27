import Foundation

//NOTE: Swap these two properties to test public api change
public struct Result {
    public let code: UInt64
    // public let code: Int
}

//NOTE: Swap these two properties to test internal api change
struct InternalResult {
    let code: Int
    // let code: UInt64
}

//NOTE: Swap these two properties to test private api change
private struct PrivateResult {
    let code: Int
    // let code: UInt64
}

public func fromLibrary() -> Result {
    Result(code: 1)
}

internal func fromLibraryInternal() -> InternalResult {
    InternalResult(code: 1)
}

private func fromLibraryPrivate() -> PrivateResult {
    PrivateResult(code: 1)
}