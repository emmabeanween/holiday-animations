//
//  ContentViewTwo.swift
//  HolidayAnimation
//
//  Created by Emma Goldberg-Keller on 9/22/23.
//

import SwiftUI

struct ContentViewTwo: View {
    
    @State private var color = Color.black
    @State private var colorTwo = Color.black
   
   
    
    
    var body: some View {
  
        ZStack {
            
            Image("halloween_scene").ignoresSafeArea().border(Color.black)
            
            VStack {
                Text("watch the night colors!").font(.custom( "kidstar", size:30.0)).offset(y: -100).bold()
                
                
                Image(systemName: "bolt.fill")
                    .resizable()
                    .frame(width: 60, height: 60)
                    .offset(x: -100, y: -100).foregroundColor(color)
                    .animation(Animation.easeInOut(duration: 1.0).repeatForever(), value: color)
                    .onAppear {
                        
                        color = Color.yellow
                        
                    }
                
                
                Image(systemName: "moon.fill")
                    .resizable()
                    .frame(width: 150, height: 150).foregroundColor(colorTwo)
                    .offset(x: 40, y: -150).animation(Animation.easeInOut(duration: 3.0).repeatForever(), value: colorTwo)
                    .onAppear {
                        
                        colorTwo = Color.white
                    }
                
                
                Image(systemName: "rectangle.fill")
                    .resizable().frame(width: 10, height: 30)
                    .foregroundColor(Color.green)
                    .offset(x: -100, y: 60)
                
                Image(systemName: "face.smiling.inverse").resizable(
                ).frame(width: 100, height: 100)
                    .foregroundColor(Color.orange).blur(radius: 1.0)
                    .offset(x: -100, y: 50)
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
            }.navigationBarBackButtonHidden(true)
        }
    }
}

struct ContentViewTwo_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewTwo()
    }
}
