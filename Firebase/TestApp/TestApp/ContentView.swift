//
// Created by Manajit Halder
// For Project TestApp on 17/11/22
// Using Swift 5.0 on MacOS 12.4
// 

import SwiftUI

struct ContentView: View {
    
    //MARK: - PROPERTIES
    @State private var playerCard = "card10"
    @State private var cpuCard = "card11"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    @State private var winner = "TIE"
    
    var body: some View {

        ZStack {
            
            Image("background-plain")
                .resizable()
                .ignoresSafeArea(.all)
            
            VStack {
                Spacer()
                
                VStack {
                    Image("logo")
                        .resizable()
                    .frame(width: 150, height: 50)
                    
                    Text(winner)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.orange)
                }
                .padding()

                Spacer()

                HStack() {
                    
                    Spacer()
                    
                    Image(playerCard)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding()

                    Image(cpuCard)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding()
                    
                    Spacer()
                }
                .padding()


                Spacer()

                Button {
                    // update card
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    playerCard = "card\(playerRand)"
                    cpuCard = "card\(cpuRand)"
                    
                    // update score
                    if playerRand > cpuRand {
                        playerScore += 1
                        winner = "Player Leading"
                    } else if (cpuRand > playerRand) {
                        cpuScore += 1
                        winner = "CPU Leading"
                    } else if (cpuRand == playerRand) {
                        winner = "TIE"
                    }
                } label: {
                    Image("deal")
                        .resizable()
                        .frame(width: 150, height: 70)
                }

                Spacer()

                HStack() {
                    
                    Spacer()
                    
                    VStack(spacing: 20) {
                        Text("Player")
                            .font(.headline)
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }

                    Spacer()
                    
                    VStack(spacing: 20) {
                        Text("CPU")
                            .font(.headline)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    
                }
                
                Spacer()
            }
        }
    }
    
    func playGame() {
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
