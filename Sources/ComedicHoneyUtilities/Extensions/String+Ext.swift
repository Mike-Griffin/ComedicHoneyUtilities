//
//  File.swift
//  
//
//  Created by Mike Griffin on 1/16/23.
//

import Foundation

extension String {
    // MARK: Date conversion
    // Format yyyy-mm-dd ex 2023-01-01
    // if the string is invalid it will return the current date
    public var simpleDateString: Date {
        let formatter = ISO8601DateFormatter()
        return formatter.date(from: self) ?? Date()
    }
}
