import Foundation

struct Harvester {
    var text = "Hello, World!"
}

extension Sequence {
    public func random(_ num: Int) -> [Element] {
        Array(shuffled().prefix(num))
    }
}

