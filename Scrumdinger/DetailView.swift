//
//  DetailView.swift
//  Scrumdinger
//
//  Created by Anagha K J on 08/08/21.
//

import SwiftUI

struct DetailView: View {
    let scrum: DailyScrum
    @State private var isPresentingEditView = false
    var body: some View {
        List {
            Section(header: Text("Meeting Info")) {
                NavigationLink(destination: MeetingView()) {
                    Label("Start Meeting", systemImage: "timer").font(.headline).foregroundColor(.accentColor)
                        .accessibilityLabel(Text("Start meeting"))
                }
                HStack {
                    Label("Length", systemImage: "clock").accessibilityLabel(Text("Meeting Length"))
                    Spacer()
                    Text("\(scrum.lengthInMinutes) minutes")
                }
                HStack {
                    Label("Theme", systemImage: "paintpalette")
                    Spacer()
                    Image(systemName: "checkmark.circle.fill").foregroundColor(scrum.theme.mainColor)
                }
                .accessibilityElement(children: .ignore)
            }
            Section(header: Text("Attendees")) {
                ForEach(scrum.attendees) { attendee in
                    Label(attendee.name, systemImage: "person")
                        .accessibilityLabel(Text("Person"))
                }
            }
        }
        .navigationTitle(scrum.title)
        .toolbar {
            Button("Edit") {
                isPresentingEditView = true
            }
        }
        .sheet(isPresented: $isPresentingEditView) {
            NavigationView {
                DetailedEditView()
                    .navigationTitle(scrum.title)
                    .toolbar {
                        ToolbarItem(placement: .cancellationAction) {
                            Button("Cancel") {
                                isPresentingEditView = false
                            }
                        }
                        ToolbarItem(placement: .confirmationAction) {
                            Button("Done") {
                                isPresentingEditView = false
                            }
                        }
                    }
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DetailView(scrum: DailyScrum.data[0])
        }
    }
}
