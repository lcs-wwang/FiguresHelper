//
//  CircleView.swift
//  StatePropertyWrapperSimpleExample
//
//  Created by Russell Gordon on 2021-11-29.
//

import SwiftUI

struct CircleView: View {
    
    //Marke: stored properties
    //radius is the name
    //double is the data type
    //by adding = 15.00   we are just providing a default value
    //input- we want this from the user
    //we want swift ui to update the user interface based on what the user select
    //use special peice of sytax called a property wrapper
    //
    //@state
    //
    //this marks the property as being one that swiftui should watch for changes
    @State var radius: Double = 30.00
    
    //Marked: computed properties
    var area: Double{
        return Double.pi*radius*radius
    }
    
    
    // User interface
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            
            // Input
            Text("Radius:")
                .bold()
            
            Group {
                
                // Show the selected radius value
                HStack {
                    Spacer()
                    Text("\(radius)")
                        .font(.title2)
                        .bold()
                    Spacer()
                }
            
                //the syntax of $ says to use this property (radius) and bind it to this control
                //to bind means that when the control changes, the property's value changes
                Slider(value: $radius,
                       in: 0.0...100.0,
                       label: {
                    Text("Radius")
                },
                       minimumValueLabel: {
                    Text("0.0")
                },
                       maximumValueLabel: {
                    Text("100.0")
                })

            }
            
                        
            // Output
            Text("Area:")
                .bold()
            
            Text("\(area)")
                .font(.title2)
            
            
            Spacer()
            
        }
        .padding()
        .navigationTitle("Circle")
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CircleView()
        }
    }
}
