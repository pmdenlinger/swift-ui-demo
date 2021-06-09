//
//  ContentView.swift
//  swift-ui-demo
//
//  Created by user on 6/8/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var colorIndex = 0
    @State private var rotation: Double = 0
    @State private var text: String = "Welcome to SwiftUI"
    
    var body: some View {
        
        let colors: [Color] = [.black, .red, .green, .blue]
        let colornames = ["Black", "Red", "Green", "Blue"]
        
        VStack {
            VStack {
                Spacer()
                Text(text)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .rotationEffect(.degrees(rotation))
                    .animation(.easeInOut)
                    .foregroundColor(colors[colorIndex])
                Spacer()
                Divider()
                Slider(value: $rotation, in: 0...360, step: 0.1)
                    .padding()
                TextField("Enter text here", text: $text)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                Picker(selection: $colorIndex, label: Text("Color")) {
                    ForEach (0 ..< colornames.count)  {
                        Text(colornames[$0])
                            .foregroundColor(colors[$0])
                }

            }
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
