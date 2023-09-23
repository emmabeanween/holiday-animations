//
//  ContentViewThree.swift
//  HolidayAnimation
//
//  Created by Emma Goldberg-Keller on 9/22/23.
//

import SwiftUI

struct ContentViewThree: View {
    
    @State private var xScale: Double = 0.30
    @State private var yScale:Double = 0.20
    @State private var xOffset:Double = 100.0
    @State private var xOffsetTwo:Double = -300.0
    var body: some View {
    
        ZStack {
            
            
            Image("easter_spring_scene")
                .resizable().frame(height: 450)
              
                .border(Color.black)
            
            VStack {
                
                
                Text("watch the tree grow and the clouds move!")  .font(.custom( "kidstar", size:30.0)).offset(y: 100).bold()
                
                
                
                Image(systemName: "cloud.fill").resizable().frame(width: 90, height: 60)
                    .foregroundColor(Color.white)
                    .offset(x: xOffset, y: 130).animation(Animation.linear(duration: 10.0).repeatForever(autoreverses: false), value: xOffset)
                    .onAppear{
                        
                        xOffset = xOffset + 200.0
                    }
                
                
                Image(systemName: "cloud.fill").resizable().frame(width: 90, height: 60)
                    .foregroundColor(Color.white)
                    .offset(x: xOffsetTwo, y: 64).animation(Animation.linear(duration: 10.0).repeatForever(autoreverses: false), value: xOffsetTwo)
                    .onAppear{
                        
                        xOffsetTwo = xOffsetTwo + 400.0
                       
                    }
                
                
                
                
                Image(systemName: "tree.fill")
                    .resizable()
                    .foregroundColor(Color.green)
                    .scaleEffect(x: xScale, y: yScale)
                    .animation(Animation.easeIn(duration: 5.0).repeatForever(), value: xScale)
                    .onAppear {
                        
                        
                        
                        xScale += 0.2
                        yScale += 0.2
                        
                    }.offset(x: -50, y: 50)
                
                
                
                Image(systemName: "oval.portrait.fill")
                    .resizable()
                    .frame(width: 30, height:40).foregroundColor(Color.blue)
                    .blur(radius: 2.0)
                    .offset(x: -20, y: -60)
                
                
                Image(systemName: "oval.portrait.fill")
                    .resizable()
                    .frame(width: 30, height:40).foregroundColor(Color.red)
                    .blur(radius: 2.0)
                    .offset(x: 10, y: -110)
                
                Image(systemName: "oval.portrait.fill")
                    .resizable()
                    .frame(width: 30, height:40).foregroundColor(Color.yellow)
                    .blur(radius: 2.0)
                    .offset(x: 35, y: -160)
                
                
                
                
                
                
                
                
                
            }
            
            
            
        }
        
    }
}

struct ContentViewThree_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewThree()
    }
}
