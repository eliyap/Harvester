//
//  PrintError.swift
//  Clok
//
//  Created by Secret Asian Man Dev on 23/8/20.
//  Copyright © 2020 Secret Asian Man 3. All rights reserved.
//

import Foundation
#if canImport(Combine)
import Combine
@available(iOS 13.0, *)
@available(macOS 10.15, *)
/**
 Print any errors that are encountered, then return `nil`.
 Note: Unlike `replaceErrorWith(nil)`, this prints the issue to console instead of suppressing it
 */
public func printAndReturnNil<T>(error: Error) -> AnyPublisher<T?, Never> {
    #if DEBUG
    print(error)
    #endif
    return Just(nil)
        .eraseToAnyPublisher()
}
#endif

