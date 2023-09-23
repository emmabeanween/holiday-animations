//
//  ContentViewFour.swift
//  HolidayAnimation
//
//  Created by Emma Goldberg-Keller on 9/22/23.
//

import SwiftUI

struct ContentViewFour: View {
    @State private var sailDegrees:Double = 0.0
    @State private var yStart:Double = 10.0
    @State private var sunDegrees:Double = 40.0
    var body: some View {
        
        ZStack {
            
            
            Image("beach_summer_scene").ignoresSafeArea().border(Color.black)
            
            
            VStack {
                Text("watch the waves, sailboat, and sun!")  .font(.custom( "kidstar", size:25.0)).offset(y: -40).bold()
                
                
                
                Image(systemName: "sun.max")
                    .resizable().frame(width: 70, height: 70).foregroundColor(Color.yellow).rotationEffect(.degrees(sunDegrees)).animation(Animation.linear(duration: 5.0).repeatForever(autoreverses: false), value: sunDegrees).onAppear(){
                        
                        sunDegrees = sunDegrees - 80.0
                    }.offset(x: -130)
                
                Image(systemName: "sailboat.fill")
                    .resizable().frame(width: 100, height: 100)
                    .foregroundColor(Color.red)
                    .rotationEffect(.degrees(sailDegrees))
                    .animation(Animation.easeInOut(duration: 4.0).repeatForever(), value: sailDegrees)
                    .onAppear {
                        
                        
                        sailDegrees = sailDegrees + 30.0
                       
                        
                    }.offset(y: 10)
                
                
              
                       
                        
                    
                
                
                HStack {
                    Image(systemName: "water.waves")
                        .resizable().frame(width: 50, height: 50).foregroundColor(Color.white)
                        
                        .offset(y: yStart)
                        
                        .animation(Animation.linear(duration: 3.0).repeatForever(), value: yStart)
                        .onAppear {
                            
                            
                            yStart = yStart - 5
                            
                            
                        }
                    
                    
                    
                    
                    
                    
                    Image(systemName: "water.waves")
                        .resizable().frame(width: 50, height: 50).foregroundColor(Color.white)
                        .offset(y: yStart)
                        .animation(Animation.linear(duration: 3.0).repeatForever(), value: yStart)
                        .onAppear {
                            
                            
                            yStart = yStart - 1
                            
                            
                        }
                    
                    
    
                    
                    Image(systemName: "water.waves")
                        .resizable().frame(width: 50, height: 50).foregroundColor(Color.white)
                        .offset(y: yStart).animation(Animation.linear(duration: 3.0).repeatForever(), value: yStart)
                        .onAppear {
                            
                            
                            yStart = yStart - 1
                            
                            
                        }
                    
                    
                    
                    
                    
            
                    
                    

                    
                }
                
                
                
                
                Image(systemName: "beach.umbrella.fill")
                    .resizable().frame(width: 100, height: 100).foregroundColor(Color.indigo).offset(x: 140, y: -40)
                    
                
                
                
                
                
                
                
                
            }.navigationBarBackButtonHidden()
            
            
            
            
        }
        
    }
}

struct ContentViewFour_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewFour()
    }
}
