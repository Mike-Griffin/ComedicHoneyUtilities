//
//  File.swift
//  
//
//  Created by Mike Griffin on 1/16/23.
//

import Foundation

extension Date {
    var startOfMonth: Date {
        Calendar.current.dateInterval(of: .month, for: self)!.start
    }
}
