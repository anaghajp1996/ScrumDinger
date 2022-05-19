//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Anagha K J on 05/08/21.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State private var scrums = DailyScrum.data
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumsView(scrums: $scrums)
            }
        }
    }
}
