//
//  File.swift
//  
//
//  Created by Mike Griffin on 1/16/23.
//

import Foundation

extension Date {
    //MARK: Year Helpers
    public var startOfYear: Date {
        Calendar.current.dateInterval(of: .year, for: self)!.start
    }
    
    public var weeksSinceStartOfYear: Int {
        Calendar.current.dateComponents([.weekOfYear], from: self.startOfYear, to: self).weekOfYear ?? 0
    }
    
    //MARK: Month Helpers
    public var startOfMonth: Date {
        Calendar.current.dateInterval(of: .month, for: self)!.start
    }
    
    public var endOfMonth: Date {
        Calendar.current.dateInterval(of: .month, for: self)!.end
    }
    
    //MARK: Week Helpers
    public var startOfWeek: Date {
        Calendar.current.dateInterval(of: .weekOfYear, for: self)!.start
    }
    
    public var endOfWeek: Date {
        Calendar.current.dateInterval(of: .weekOfYear, for: self)!.end
    }
    
    public func addWeeksToDate(numWeeks: Int) -> Date {
        Calendar.current.date(byAdding: .weekOfYear, value: numWeeks, to: self)!
    }
    
    // TODO: Get the calendar week number for a date
    public var calendarWeekNumber: Int {
        print(Calendar.current.dateInterval(of: .yearForWeekOfYear, for: self)!)
        return 0
    }
    
    //TODO: See where this should actually be placed because
    // this file is maybe not the best
    public func firstDayOfWeekNum(_ weekNum: Int) -> Date {
        return Date().startOfWeek
    }

}
