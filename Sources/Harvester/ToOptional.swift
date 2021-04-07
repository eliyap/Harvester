//
//  ToOptional.swift
//  Clok
//
//  Created by Secret Asian Man Dev on 23/8/20.
//  Copyright © 2020 Secret Asian Man 3. All rights reserved.
//

import Foundation

/// Returns input as an Optional.
/// Used with `Combine` to change publisher type to optional
public func toOptional<T>(input: T) -> T? {
    input
}
