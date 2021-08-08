//
//  DailyScrum.swift
//  Scrumdinger
//
//  Created by Anagha K J on 05/08/21.
//

import SwiftUI

struct DailyScrum {
    var title: String
    var attendees: [String]
    var lengthInMinutes: Int
    var color: Color
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
