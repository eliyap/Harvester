//
//  File.swift
//  
//
//  Created by Secret Asian Man 3 on 21.04.24.
//

import Foundation

public func JSONDecode<T>(type: T.Type) -> (Data) throws -> (T) where T: Decodable {
    return { (data: Data) throws -> T in
        try JSONDecoder().decode(T.self, from: data)
    }
}
