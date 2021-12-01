//
//  ParallelogramView.swift
//  FiguresHelper
//
//  Created by Winston Wang on 2021-12-01.
//

import SwiftUI

struct ParallelogramView: View {
    @State var width: Double = 4.00
    @State var height: Double = 3.00
    var area: Double{
        return width * height
    }
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            
            // Input
            Text("Width:")
                .bold()
            
            Group {
                
                // Show the selected radius value
                HStack {
                    Spacer()
                    Text("\(width)")
                        .font(.title2)
                        .bold()
                    Spacer()
                }
                
                //the syntax of $ says to use this property (radius) and bind it to this control
                //to bind means that when the control changes, the property's value changes
                Slider(value: $width,
                       in: 0.0...100.0,
                       step: 0.5,
                       label: {
                   
                },
                       minimumValueLabel: {
                    Text("0.0")
                },
                       maximumValueLabel: {
                    Text("100.0")
                })
                
            }
            
            Text("Height")
                .bold()
                .padding(.top, 60)
            Group {
                
                // Show the selected radius value
                HStack {
                    Spacer()
                    Text("\(height)")
                        .font(.title2)
                        .bold()
                    Spacer()
                }
                
                //the syntax of $ says to use this property (radius) and bind it to this control
                //to bind means that when the control changes, the property's value changes
                Slider(value: $height,
                       in: 0.0...100.0,
                       step: 0.5,
                       label: {
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
        .navigationTitle("Parallelogram")
        
    }
}

struct ParallelogramView_Previews: PreviewProvider {
    static var previews: some View {
        ParallelogramView()
    }
}
