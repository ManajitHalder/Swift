//
// Created by Manajit Halder
// For Project Scrumdinger on 19/03/23
// Using Swift 5.0 on MacOS 13.2
// 

import Foundation

struct DailyScrum: Identifiable, Codable {
    let id: UUID
    var title: String
    var attendees: [Attendee]
    var lengthInMinutes: Int
    var theme: Theme
    var history: [History] = []
    
    init(id: UUID = UUID(), title: String, attendees: [String], lengthInMinutes: Int, theme: Theme) {
        self.id = id
        self.title = title
        self.attendees = attendees.map { Attendee(name: $0) }
        self.lengthInMinutes = lengthInMinutes
        self.theme = theme
    }
}

extension DailyScrum {
    struct Attendee: Identifiable, Codable {
        let id: UUID
        var name: String
        
        init(id: UUID = UUID(), name: String) {
            self.id = id
            self.name = name
        }
    }
}

extension DailyScrum {
    struct Data {
        var title: String = ""
        var attendees: [Attendee] = []
        var lengthInMinutes: Double = 5
        var theme: Theme = .seafoam
    }
    
    init(id: UUID = UUID(), data: Data) {
        self.id = id
        self.title = data.title
        self.attendees = data.attendees
        self.lengthInMinutes = Int(data.lengthInMinutes)
        self.theme = data.theme
    }
    
    var data: Data {
        Data(title: title, attendees: attendees, lengthInMinutes: Double(lengthInMinutes), theme: theme)
    }
    
    mutating func update(from data: Data) {
        self.title = data.title
        self.attendees = data.attendees
        self.lengthInMinutes = Int(data.lengthInMinutes)
        self.theme = data.theme
    }
}

extension DailyScrum {
    static let sampleData: [DailyScrum] = [
        DailyScrum(title: "Design", attendees: ["Reyansh", "Abhay", "Abhiroop"], lengthInMinutes: 30, theme: .yellow),
        DailyScrum(title: "App Development", attendees: ["Reyansh", "Manajit", "Abhay", "Abhiroop"], lengthInMinutes: 25, theme: .orange),
        DailyScrum(title: "Web Development", attendees: ["Reyansh", "Annappa", "Harish", "Manajit", "Abhay", "Abhiroop"], lengthInMinutes: 15, theme: .poppy)
    ]
}


