//
// Created by Manajit Halder
// For Project Scrumdinger on 25/03/23
// Using Swift 5.0 on MacOS 13.2
// 

import Foundation
import AVFoundation

extension AVPlayer {
    static let sharedDingPlayer: AVPlayer = {
        guard let url = Bundle.main.url(forResource: "ding", withExtension: "wav") else { fatalError("Sound file not found") }
        
        return AVPlayer(url: url)
    }()
}
