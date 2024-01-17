//
//  homeElement 2.swift
//  homeInterface
//
//  Created by Yiren LIU on 2024-01-16.
//

import SwiftUI

let lightGreen = Color(
    hue: 175.0/360.0,
    saturation: 1.0,
    brightness: 1.0
)

let lightGray2 = Color(
    hue: 0.0/360.0,
    saturation: 0.0,
    brightness: 0.8
)

struct homeElement_2: View {
    let imageName: String
    let imageColor: Color
    let text1: String
    let text2: String
    let state: String
    var body: some View {
        HStack{
            ZStack {
                Circle()
                    .frame(width:40)
                    .padding(.leading,10)
                    .foregroundColor(.black)
                    .opacity(0.3)
                Image(systemName: imageName)
                    .foregroundColor(imageColor)
                    .padding(.leading,10)
            }
            VStack(alignment:.leading){
                Text(text1)
                    .foregroundColor(lightGray2)
                    .padding(.top,15)
                Text(text2)
                    .bold()
                    .foregroundColor(.white)
                Text(state)
                    .foregroundColor(lightGray2)
                    .padding(.bottom,15)
            }
            Spacer()
        }
        .frame(width: 180, height: 80)
        .background(.black.opacity(0.6))
        .cornerRadius(15)
        
        
    }
}

#Preview {
    homeElement_2(imageName: "door.garage.closed", imageColor: lightGreen, text1: "Garage", text2: "Door", state: "Closed")
}
