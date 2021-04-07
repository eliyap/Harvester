import Foundation

struct Harvester {
    var text = "Hello, World!"
}

#if canImport(Combine)
import Combine

@available(iOS 13.0, *)
let dataTaskMonitor = { (result: URLSession.DataTaskPublisher.Output) -> Data in
    let code = (result.response as? HTTPURLResponse)?.statusCode
        ?? -1
    if !(200...299).contains(code) {
        print(result.response)
        print("HTTP Error with Code: \(code)")
    }
    return result.data
}

#endif
