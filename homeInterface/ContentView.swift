//
//  ContentView.swift
//  homeInterface
//
//  Created by Yiren LIU on 2024-01-16.
//

import SwiftUI

struct ContentView: View {
    
    let lightBlue = Color(
            hue: 190.0/360.0,
            saturation: 1.0,
            brightness: 1.0
        )
    let lightGreen = Color(
            hue: 175.0/360.0,
            saturation: 1.0,
            brightness: 1.0
        )
    let lightYellow = Color(
            hue: 50.0/360.0,
            saturation: 1.0,
            brightness: 1.0
        )
    
    var body: some View {
        NavigationStack{
            ZStack {
                Image("background")
                    .resizable()
                    .ignoresSafeArea()
                Rectangle()
                    .foregroundColor(.black)
                    .opacity(0.25)
                    .ignoresSafeArea()
                    
                
                VStack {
                    HStack {
                        VStack(alignment:.leading){
                            Text("My Home")
                                .bold()
                                .foregroundColor(.white)
                                .font(.largeTitle)
                                .padding(.leading,20)
                            Spacer()
                        }
                        
                        Spacer()
                        
                    }
                }
                
               
                VStack{
                    ScrollView(.horizontal) {
                        HStack{
                            homeElement(signName: "fan.fill", signColor: lightBlue, text: "Climate", temperature: "16.5 ~ 20.5˚")
                                .padding(.leading,15)
                            homeElement(signName: "lock.fill", signColor: lightGreen, text: "Security", temperature: "No Alerts")
                            homeElement(signName: "tv.and.hifispeaker.fill", signColor: .white, text: "Speakers", temperature: "None play")
                            }
                        
                        }
                    .padding(.top,60)
                    .padding(.bottom,30)
                    HStack {
                        Text("Favorites")
                            .bold()
                            .foregroundColor(.white)
                            .font(.title2)
                            .padding(.leading,20)
                        Spacer()
                    }
                 
                        HStack{
                            homeElement_2(imageName: "door.garage.closed", imageColor: lightGreen, text1: "Garage", text2: "Door", state: "Closed")
                                .padding(.leading,5)
                                
                            HStack{
                                Text("17.5˚")
                                    .bold()
                                    .padding(.leading)
                                VStack(alignment:.leading){
                                    Text("Hallway")
                                        .foregroundColor(.gray)
                                        .padding(.top,15)
                                    Text("Nest")
                                        .bold()
                                        .foregroundColor(.black)
                                    Text("Heat to 12.0˚")
                                        .foregroundColor(.gray)
                                        .padding(.bottom,15)
                                }
                                Spacer()
                            }
                            .frame(width: 180, height: 80)
                            .background(.white)
                            .cornerRadius(15)
                                                                                       
                        }
                 
                        HStack{
                            homeElement_2(imageName: "lock.fill", imageColor: lightGreen, text1: "Living room", text2: "Front Door", state: "Locked")
                                .padding(.leading,15)
                            homeElement_2(imageName: "lock.fill", imageColor: lightGreen, text1: "Basement", text2: "Side Door", state: "Locked")
                              
                        }
                        .padding(.trailing,10)
                        .padding(.bottom,40)
                    HStack{
                        Text("Basement")
                            .padding(.leading,20)
                            .bold()
                            .foregroundColor(.white)
                            .font(.title2)
                        
                        
                        Image(systemName: "chevron.right")
                            .resizable()
                            .foregroundColor(.gray)
                            .bold()
                            .frame(width:10, height: 19)
                        Spacer()
                    }
                    HStack{
                        homeElement_3(imageName: "poweroutlet.type.b.fill", imageColor:.white, text: "Network")
                        homeElement_3(imageName: "poweroutlet.type.b.fill", imageColor:.white, text: "Hub")
                    }
                    HStack{
                        VStack(alignment:.leading){
                            ZStack {
                                Circle()
                                    .frame(width:40)
                                    .foregroundColor(.black)
                                    .opacity(0.3)
                                Image(systemName: "lock.fill")
                                    .foregroundColor(lightGreen)
                            }
                            .padding(.trailing,10)
                                Spacer()
                                Text("Side Door")
                                    .foregroundColor(.white)
                                    .padding(.trailing,70)
                                Text("Locked")
                                    .foregroundColor(lightGray)
                        }
                        .padding(.vertical)
                        .frame(width: 170, height: 150)
                        .background(.black.opacity(0.6))
                        .cornerRadius(20)
                        VStack{
                            HStack{
                                ZStack {
                                    Rectangle()
                                        .cornerRadius(10)
                                        .foregroundColor(.white)
                                        .opacity(0.2)
                                        .frame(width:40,height: 40)
                                    Text("tv")
                                        .foregroundColor(.white)
                                }
                                
                                VStack(alignment:.leading){
                                    Text("Apple TV")
                                        .foregroundColor(.white)
                                        .bold()
                                        .padding(.top,25)
                                    Text("Not Playing")
                                        .foregroundColor(lightGray)
                                        .padding(.bottom,25)
                                }
                                .padding(.leading,10)
                                Spacer()
                            }
                            .padding(.leading,15)
                            .frame(width:170, height: 70)
                            .background(.black.opacity(0.6))
                            .cornerRadius(15)

                            homeElement_4(imageName: "homepodmini.fill", imageColor: lightGray, text: "HomePod")
                        }
                    }
                    
                     Spacer()
                     Rectangle()
                        .ignoresSafeArea()
                        .foregroundStyle(Color.black)
                        .opacity(0.2)
                        .frame(height:30)
                    }
                
                }
            .toolbar{
                ToolbarItem(placement:.topBarTrailing){
                    Button(action:{}){
                        Image(systemName: "waveform")
                            .resizable()
                            .foregroundColor(.white)
                            .frame(width: 25, height: 25)
                    }
                }
                ToolbarItem(placement:.topBarTrailing){
                    Button(action:{}){
                        Image(systemName: "plus")
                            .resizable()
                            .foregroundColor(.white)
                            .frame(width: 25, height: 25)
                            .padding(.leading,8)
                            .padding(.trailing,8)
                    }
                }
                ToolbarItem(placement:.topBarTrailing){
                    Button(action:{}){
                        Image(systemName: "ellipsis.circle")
                            .resizable()
                            .foregroundColor(.white)
                            .frame(width: 25, height: 25)
                    }
                }
            }
            }
        }
    }


#Preview {
    ContentView()
}
