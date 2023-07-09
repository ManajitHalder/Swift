//
// Created by Manajit Halder
// For Project Scrumdinger on 27/03/23
// Using Swift 5.0 on MacOS 13.2
// 

import SwiftUI

struct HistoryView: View {
    let history: History
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Divider()
                    .padding(.bottom)
                Text("Attendees")
                    .font(.headline)
                Text(history.attendeeString)
                
                if let transcript = history.transcript {
                    Text("Transcript")
                        .font(.headline)
                        .padding(.top)
                    Text(transcript)
                        
                    
                }
            }
        }
        .navigationTitle(Text(history.date, style: .date))
        .padding()
    }
}

extension History {
    var attendeeString: String {
        ListFormatter.localizedString(byJoining: attendees.map { $0.name})
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var history: History {
        History(attendees: [DailyScrum.Attendee(name: "Reyansh Halder"), DailyScrum.Attendee(name: "Abhay Das"), DailyScrum.Attendee(name: "Abhiroop Halder")], lengthInMinutes: 10, transcript: "Today I have started working on my next app's wireframe. Yesterday I have finalized requirements of the app.")
    }
    static var previews: some View {
        HistoryView(history: history)
    }
}
