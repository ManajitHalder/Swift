//
// Created by Manajit Halder
// For Project Scrumdinger on 18/03/23
// Using Swift 5.0 on MacOS 13.2
// 

import SwiftUI

@main
struct ScrumdingerApp: App {
    @StateObject private var store = ScrumStore()
    @State private var errorWrapper: ErrorWrapper?
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumView(scrums: $store.scrums) {
//                    ScrumStore.save(scrums: store.scrums) { result in
//                        if case .failure(let failure) = result {
//                            fatalError(failure.localizedDescription)
//                        }
//                    }
                    Task {
                        do {
                            try await ScrumStore.save(scrums: store.scrums)
                        } catch {
//                            fatalError("Error saving scrums.")
                            errorWrapper = ErrorWrapper(error: error, guidance: "Try again later.")
                        }
                    }
                }
            }
//            .onAppear {
//                ScrumStore.load { result in
//                    switch result {
//                    case .failure(let error):
//                        fatalError(error.localizedDescription)
//                    case .success(let scrums):
//                        store.scrums = scrums
//                    }
//                }
//            }
            .task {
                do {
                    store.scrums = try await ScrumStore.load()
                } catch {
//                    fatalError("load scrum failed.")
                    errorWrapper = ErrorWrapper(error: error, guidance: "Scrumdinger will load sample data and continue.")
                }
            }
            .sheet(item: $errorWrapper, onDismiss: {
                store.scrums = DailyScrum.sampleData
            }) { wrapper in
                ErrorView(errorWrapper: wrapper)
            }
        }
    }
}
