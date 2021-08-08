//
//  DailyScrum.swift
//  Scrumdinger
//
//  Created by Anagha K J on 05/08/21.
//

import SwiftUI

struct DailyScrum: Identifiable {
    let id: UUID
    var title: String
    var attendees: [String]
    var lengthInMinutes: Int
    var color: Color
    
    init(id: UUID = UUID(), title: String, attendees: [String], lengthInMinutes: Int, color: Color) {
        self.id = id
        self.title = title
        self.attendees = attendees
        self.lengthInMinutes = lengthInMinutes
        self.color = color
    }
}

extension DailyScrum {
    static var data: [DailyScrum] {
        [
            DailyScrum(title: "Design", attendees: ["Stark", "Rogers", "Odinson"], lengthInMinutes: 10, color: Color.red),
            DailyScrum(title: "App Dev", attendees: ["Banner", "Romonoff", "Barton"], lengthInMinutes: 20, color: Color.blue),
            DailyScrum(title: "Web Dev", attendees: ["Danvers", "Barnes", "Maximoff"], lengthInMinutes: 15, color: Color.orange),
        ]
    }
}
