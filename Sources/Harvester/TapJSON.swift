//
//  File.swift
//  
//
//  Created by Secret Asian Man 3 on 21.04.24.
//

import Foundation

/// Tries to deserialize data and print it out. Passes data through unmodidied.
/// To be used in debugging situations where a nice object may not be returned
public func tapJSON(options: JSONSerialization.ReadingOptions = []) -> (Data) -> Data {
    return { (data: Data) -> Data in
        if let obj = try? JSONSerialization.jsonObject(with: data, options: options) {
            print("Object: \(obj)")
        } else {
            print("Could not deserialize data")
        }
        return data
    }
}
