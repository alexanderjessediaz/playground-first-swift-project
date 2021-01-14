//
//  ContentView.swift
//  tutorial-app
//
//  Created by AJ Diaz on 1/13/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.blue)
            LinearGradient(gradient: Gradient(colors: [.blue, Color("lightBlue")]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack{
                Text("Denver, CO")
                    .font(.system(size: 32,weight: .medium))
                    .foregroundColor(.white)
                    .padding()
                
                VStack(spacing: 10) {
                    Image(systemName: "wind")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    
                    Text("45º")
                        .font(.system(size:70, weight: .medium))
                        .foregroundColor(.white)
                }
                .padding(.bottom,40)
        
                HStack(spacing:18) {
                    WeatherDayView(
                                    dayOfWeek: "FRI",
                                    imageName: "wind",
                                    temperature: 35)
                    WeatherDayView(
                                    dayOfWeek: "SAT",
                                    imageName: "sun.max.fill",
                                    temperature: 44)
                    WeatherDayView(
                                    dayOfWeek: "SUN",
                                    imageName: "cloud.snow.fill",
                                    temperature: 28)
                    WeatherDayView(
                                    dayOfWeek: "MON",
                                    imageName: "cloud.sun.fill",
                                    temperature: 44)
                    WeatherDayView(
                                    dayOfWeek: "TUE",
                                    imageName: "sun.max.fill",
                                    temperature: 47)
                    
                }
                
                Spacer()
            }
            
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WeatherDayView: View {
    
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack{
            Text(dayOfWeek)
                .font(.system(size: 16, weight:.medium, design: .default))
                .foregroundColor(.white)
                .padding()
            
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temperature)")
                .font(.system(size:28, weight: .medium))
                .foregroundColor(.white)
        }
    }
}
