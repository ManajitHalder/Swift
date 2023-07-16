//
// Created by Manajit Halder
// For Project FirebaseChatApp on 14/11/22
// Using Swift 5.0 on MacOS 12.4
// 

import SwiftUI

struct ContentView: View {
    @StateObject var messagesManager = MessagesManager()
    
//    var messageArray = ["Hello, I am Manajit Halder", "Who are you and where are you living now?", "I am looking for remote developer job  into Swift, iOS related including Mac OSX, REST API, Firebase database, Data structures and related technologies."]
    
    var body: some View {
        VStack {
            VStack {
                TileRow()
                    
                ScrollViewReader { proxy in
                    ScrollView {
                        ForEach(messagesManager.messages, id:\.id) { message in
                            MessageBubble(message: message)
                        }
    //                    ForEach(messageArray, id:\.self) { text in
    //                        MessageBubble(message: Message(id: "234", text: text, received: true, timeStamp: Date()))
    //                    }
                    }
                    .padding(.top, 10)
                    .background(.white)
                    .cornerRadius(30, corners: [.topLeft, .topRight])
                    .onChange(of: messagesManager.lastMessageId, perform: { id in
                        withAnimation {
                            proxy.scrollTo(id, anchor: .bottom)
                        }
                    })
                    
                }
            }
            .background(Color("Peach"))
            
            MessageField()
                .environmentObject(messagesManager)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
