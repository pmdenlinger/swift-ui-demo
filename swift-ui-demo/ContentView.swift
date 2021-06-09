//
//  ContentView.swift
//  swift-ui-demo
//
//  Created by user on 6/8/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var rotation: Double = 0
    var body: some View {
        VStack {
            Text("Hello, world!")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .rotationEffect(.degrees(rotation))
                .animation(.easeInOut)
            Slider(value: $rotation, in: 0...360, step: 0.1)
                
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
