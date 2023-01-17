//
//  File.swift
//  
//
//  Created by Mike Griffin on 1/16/23.
//

import Foundation

extension Date {
    
    //MARK: Month Helpers
    var startOfMonth: Date {
        Calendar.current.dateInterval(of: .month, for: self)!.start
    }
    
    public var endOfMonth: Date {
        Calendar.current.dateInterval(of: .month, for: self)!.end
    }

}
