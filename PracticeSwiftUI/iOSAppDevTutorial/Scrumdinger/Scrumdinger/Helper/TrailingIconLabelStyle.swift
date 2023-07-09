//
// Created by Manajit Halder
// For Project Scrumdinger on 19/03/23
// Using Swift 5.0 on MacOS 13.2
// 

import SwiftUI

struct TrailingIconLabelStyle: LabelStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.title
            configuration.icon
        }
    }
}

extension LabelStyle where Self == TrailingIconLabelStyle {
    static var trailingIcon: Self { Self() }
}

