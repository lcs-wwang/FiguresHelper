//
//  ContentView.swift
//  FiguresHelper
//
//  Created by Winston Wang on 2021-12-01.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Text("Circle")
                .font(.title)
            Text("Radius")
                .bold()
            Text("25.0")
            Slider(value: .constant(25.0),
                   in: 0.0...100.0,
                   label: {
                    Text("Radius")
            },
                   minimumValueLabel: {
                        Text("0")
            },
                   maximumValueLabel: {
                        Text("100")
            })
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
