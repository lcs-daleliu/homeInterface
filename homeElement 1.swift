//
//  homeElement 1.swift
//  homeInterface
//
//  Created by Yiren LIU on 2024-01-16.
//

import SwiftUI

let lightBlue = Color(
        hue: 190.0/360.0,
        saturation: 1.0,
        brightness: 1.0
    )

let lightGray = Color(
    hue: 0.0/360.0,
    saturation: 0.0,
    brightness: 0.8
    )

struct homeElement: View {
    let signName: String
    let signColor: Color
    let text: String
    let temperature: String
    var body: some View {
        HStack{
            Image(systemName: signName)
                .foregroundColor(signColor)
                .padding(.leading,10)
                .font(.title3)
            VStack(alignment:.leading){
                Text(text)
                    .bold()
                    .foregroundColor(.white)
                    .padding(.top,7)
                Text(temperature)
                    .padding(.bottom,7)
                    .foregroundColor(lightGray)
            }
            .padding(.trailing,20)
        }
        .background(.black.opacity(0.6))
        .cornerRadius(45)
    }
}

#Preview {
    homeElement(signName: "fan.fill", signColor: lightBlue, text: "Climate", temperature: "16.5 ~ 20.5˚")
}
