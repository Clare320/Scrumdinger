//
//  History.swift
//  Scrumdinger
//
//  Created by lingjie on 2020/12/21.
//

import Foundation

struct History: Identifiable, Codable {
    let id: UUID
    var date: Date
    var attendees: [String]
    var lengthInMinutes: Int
    
    init(id: UUID = UUID(), date: Date = Date(), attendees: [String], lengthInMinutes: Int) {
        self.id = id
        self.date = date
        self.attendees = attendees
        self.lengthInMinutes = lengthInMinutes
    }
}

protocol Test: AnyObject  {
    associatedtype NewPerson
    func hello(_ name: NewPerson)
}
