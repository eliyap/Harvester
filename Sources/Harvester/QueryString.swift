//
//  File.swift
//  
//
//  Created by Secret Asian Man 3 on 21.04.07.
//

import Foundation

public extension URL {
    init?(string: String, with parameters: [String: String]){
        self.init(string: string
            + parameters
                .map{"\($0.key)=\($0.value)"}
                .joined(separator: "&")
        )
    }
}
