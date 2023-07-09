//
// Created by Manajit Halder
// For Project MasteringSwiftUI on 02/12/22
// Using Swift 5.0 on MacOS 12.4
// 

import SwiftUI

struct Shapes: View {
    var body: some View {
        ZStack {
            ScrollView {
                VStack(spacing: 10) {
                    ScrollView(.horizontal, showsIndicators: true) {
                        HStack {
                            Circle()
                                .fill(.blue)
        //                        .foregroundColor(.blue)
        //                        .stroke(Color.red)
        //                        .stroke(Color.red, lineWidth: 10)
                                .frame(width: 200, height: 100)
                                .padding()
                            Circle()

                                .stroke(Color.red, style: StrokeStyle(lineWidth: 20, lineCap: .butt, dash: [10]))
                                .frame(width: 200, height: 100)
                                .padding()
                            
                            Circle()
                                .stroke(Color.blue, style: StrokeStyle(lineWidth: 20, lineCap: .square, dash: [35]))
                                .frame(width: 200, height: 100)
                                .padding()
                            
                            Circle()
                                .trim(from: 0.3, to: 1.0)
                                .stroke(Color.purple, lineWidth: 20)
                                .frame(width: 200, height: 100)
                                .padding()
                            
                            Circle()
                                .stroke(Color.orange, style: StrokeStyle(lineWidth: 20, lineCap: .round, dash: [25]))
                                .frame(width: 200, height: 100)
                                .padding()
                        }
                        .padding()
                    }
                    .background(.cyan)
                    
                    ScrollView(.horizontal, showsIndicators: true) {
                        HStack {
                            Ellipse()
                                .fill(Color.green)
                                .frame(width: 200, height: 100)
                                .padding()
                            Ellipse()
                                .stroke(Color.red, style: StrokeStyle(lineWidth: 20, lineCap: .butt, dash: [10]))
                                .frame(width: 200, height: 100)
                                .padding()
                            Ellipse()
                                .stroke(Color.blue, style: StrokeStyle(lineWidth: 20, lineCap: .square, dash: [35]))
                                .frame(width: 200, height: 100)
                                .padding()
                            Ellipse()
                                .trim(from: 0.3, to: 1.0)
                                .stroke(Color.purple, lineWidth: 20)
                                .frame(width: 200, height: 100)
                                .padding()
                            Ellipse()
                                .stroke(Color.orange, style: StrokeStyle(lineWidth: 20, lineCap: .round, dash: [25]))
                                .frame(width: 200, height: 100)
                                .padding()
                        }
                        .padding()
                    }
                    .background(.gray)
                                            
                    ScrollView(.horizontal, showsIndicators: true) {
                        HStack {
                            Capsule(style: .circular)
                                .fill(Color.green)
                                .frame(width: 200, height: 100)
                                .padding()
                            Capsule(style: .circular)
                                .stroke(Color.red, style: StrokeStyle(lineWidth: 20, lineCap: .butt, dash: [10]))
                                .frame(width: 200, height: 100)
                                .padding()
                            Capsule(style: .continuous)
                                .stroke(Color.blue, style: StrokeStyle(lineWidth: 20, lineCap: .square, dash: [35]))
                                .frame(width: 200, height: 100)
                                .padding()
                            Capsule(style: .continuous)
                                .trim(from: 0.3, to: 1.0)
                                .stroke(Color.purple, lineWidth: 20)
                                .frame(width: 200, height: 100)
                                .padding()
                            Capsule(style: .circular)
                                .stroke(Color.orange, style: StrokeStyle(lineWidth: 20, lineCap: .round, dash: [25]))
                                .frame(width: 200, height: 100)
                                .padding()
                        }
                        .padding()
                    }
                    .background(.gray)
                    
                    ScrollView(.horizontal, showsIndicators: true) {
                        HStack {
                            Rectangle()
                                .fill(Color.green)
                                .frame(width: 100, height: 100)
                                .padding()
                            Rectangle()
                                .stroke(Color.red, style: StrokeStyle(lineWidth: 20, lineCap: .butt, dash: [10]))
                                .frame(width: 100, height: 100)
                                .padding()
                            Rectangle()
                                .stroke(Color.blue, style: StrokeStyle(lineWidth: 20, lineCap: .square, dash: [35]))
                                .frame(width: 100, height: 100)
                                .padding()
                            Rectangle()
                                .trim(from: 0.3, to: 1.0)
                                .stroke(Color.purple, lineWidth: 20)
                                .frame(width: 100, height: 100)
                                .padding()
                            Rectangle()
                                .stroke(Color.orange, style: StrokeStyle(lineWidth: 20, lineCap: .round, dash: [25]))
                                .frame(width: 100, height: 100)
                                .padding()
                        }
                        .padding()
                    }
                    .background(.gray)
                    
                    ScrollView(.horizontal, showsIndicators: true) {
                        HStack {
                            RoundedRectangle(cornerRadius: 30)
                                .fill(Color.green)
                                .frame(width: 200, height: 100)
                                .padding()
                            RoundedRectangle(cornerSize: CGSize(width: 10, height: 10))
                                .stroke(Color.red, style: StrokeStyle(lineWidth: 20, lineCap: .butt, dash: [10]))
                                .frame(width: 200, height: 100)
                                .padding()
                            RoundedRectangle(cornerRadius: 40, style: .circular)
                                .stroke(Color.blue, style: StrokeStyle(lineWidth: 20, lineCap: .square, dash: [35]))
                                .frame(width: 200, height: 100)
                                .padding()
                            RoundedRectangle(cornerRadius: 60, style: .continuous)
                                .trim(from: 0.3, to: 1.0)
                                .stroke(Color.purple, lineWidth: 20)
                                .frame(width: 200, height: 100)
                                .padding()
                            RoundedRectangle(cornerSize: CGSize(width: 12.2, height: 24.9), style: .circular)
                                .stroke(Color.orange, style: StrokeStyle(lineWidth: 20, lineCap: .round, dash: [25]))
                                .frame(width: 200, height: 100)
                                .padding()
                        }
                        .padding()
                    }
                    .background(.gray)
                    
                }
                .padding(.top, 10)
                .padding(.leading, 10)
                .padding(.trailing, 10)
            }
        }
    }
}

struct Shapes_Previews: PreviewProvider {
    static var previews: some View {
        Shapes()
    }
}
