//
//  ContentView.swift
//  HolidayAnimation
//
//  Created by Emma Goldberg-Keller on 9/21/23.
//

import SwiftUI

struct ContentView: View {
    @State private var xoffset:Double = Double.random(in: -100...100.0)
    @State private var yoffset:Double = -280.0
    @State private var figurex :Double = -280.0
    @State private var xoffsetTwo:Double = Double.random(in:-100...100.0)
    @State private var xoffsetThree: Double = Double.random(in: -100...100.0)
    @State private var xoffsetFour: Double = Double.random(in: -100...100.0)
    @State private var xoffsetFive: Double = Double.random(in: -100...100.0)
    @State private var xoffsetSix: Double = Double.random(in: -100...100.0)
    @State private var xoffsetSeven: Double = Double.random(in: -100...100.0)
    @State private var duration:Double = Double.random(in: 10.0...15.0)
    @State private var durationTwo:Double = Double.random(in: 15.0...20.0)
    @State private var durationThree:Double = Double.random(in: 15.0...20.0)
    @State private var durationFour:Double = Double.random(in: 15.0...20.0)
    @State private var durationFive:Double = Double.random(in: 15.0...20.0)
    @State private var durationSix:Double = Double.random(in: 15.0...20.0)
    @State private var durationSeven:Double = Double.random(in: 15.0...20.0)
    
    var body: some View {
        NavigationView {
            
            ZStack {
                
                Image("christmas_scene_two").ignoresSafeArea().border(Color.black, width: 5.0)
                
                VStack {
                    
                    
            
                    
                    
                    
                    
                    Text("watch the snow!")
                        .offset(y: -50)
                        .font(.custom( "kidstar", size:30.0))
                    
                   
                    
                
                   
                    
                    

                    
                    
        
                    // first snowflake
                    
                    Image(systemName: "snowflake")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50).foregroundColor(Color.white).offset(x: xoffset, y: yoffset)
                        .animation(Animation.linear(duration: duration).repeatForever(autoreverses: false), value: yoffset).onAppear {
                            // fall off screen
                            yoffset = yoffset + 250
                            
                        }
                    
                    // second snowflake
                    
                    Image(systemName: "snowflake")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50).foregroundColor(Color.white).offset(x: xoffsetTwo, y: yoffset)
                        .animation(Animation.linear(duration: durationTwo).repeatForever(autoreverses: false), value: yoffset).onAppear {
                            // fall off screen
                            yoffset = yoffset + 200
                            
                        }
                    
                    
                    
                    // third snowflake
                    
                    Image(systemName: "snowflake")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50).foregroundColor(Color.white).offset(x: xoffsetThree, y: yoffset)
                        .animation(Animation.linear(duration: durationThree).repeatForever(autoreverses: false), value: yoffset).onAppear {
                            // fall off screen
                            yoffset = yoffset + 200
                            
                        }
                    
                    
                    // fourth snowflake
                    
                    Image(systemName: "snowflake")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50).foregroundColor(Color.white).offset(x: xoffsetFour, y: yoffset)
                        .animation(Animation.linear(duration: durationFour).repeatForever(autoreverses: false), value: yoffset).onAppear {
                            // fall off screen
                            yoffset = yoffset + 250
                            
                        }
                    
                    
                    // fifth snowflake
                    
                    Image(systemName: "snowflake")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50).foregroundColor(Color.white).offset(x: xoffsetFive, y: yoffset)
                        .animation(Animation.linear(duration: durationFive).repeatForever(autoreverses: false), value: yoffset).onAppear {
                            // fall off screen
                            yoffset = yoffset + 250
                            
                        }
                    
                    Image(systemName: "snowflake")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50).foregroundColor(Color.white).offset(x: xoffsetSix, y: yoffset)
                        .animation(Animation.linear(duration: durationSix).repeatForever(autoreverses: false), value: yoffset).onAppear {
                            // fall off screen
                            yoffset = yoffset + 250
                            
                        }
                    
                    
                    
                    
                    Image(systemName: "snowflake")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50).foregroundColor(Color.white).offset(x: xoffsetSeven, y: yoffset)
                        .animation(Animation.linear(duration: durationSeven).repeatForever(autoreverses: false), value: yoffset).onAppear {
                            // fall off screen
                            yoffset = yoffset + 250
                            
                        }
                    
                    
                    
                    
                
                    
                    
                    
    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                }
                
                
                
                
                
                
                
                
                
            }
            
            
            
            
            
            
            
            
            
            
            
            
            
        }
        
        
        
    }
    
    
}
    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
