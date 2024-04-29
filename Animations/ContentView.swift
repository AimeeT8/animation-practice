//
//  ContentView.swift
//  Animations
//
//  Created by Temple on 2024-04-29.
//

import SwiftUI

struct ContentView: View {
    
    @State private var animationAmount = 0.0
    
    
    var body: some View {
        Button ("Tap Me") {
            withAnimation(.spring(duration: 1, bounce: 0.5)) {
                animationAmount += 360
            }
        }
        .padding(50)
        .background(.green)
        .foregroundStyle(.white)
        .clipShape(.circle)
        .rotation3DEffect(
            .degrees(animationAmount),
                                  axis: /*@START_MENU_TOKEN@*/(x: 0.0, y: 1.0, z: 0.0)/*@END_MENU_TOKEN@*/
        )
    }
}

#Preview {
    ContentView()
}
