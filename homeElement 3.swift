//
//  homeElement 3.swift
//  homeInterface
//
//  Created by Yiren LIU on 2024-01-16.
//

import SwiftUI

let lightYellow = Color(
    hue: 50.0/360.0,
    saturation: 1.0,
    brightness: 1.0
)

let lightGray3 = Color(
    hue: 0.0/360.0,
    saturation: 0.0,
    brightness: 0.8
)

struct homeElement_3: View {
    let imageName: String
    let imageColor: Color
    let text: String
    var body: some View {
        HStack{
            ZStack {
                Circle()
                    .frame(width:35)
                    .padding(.leading,10)
                    .foregroundColor(lightYellow)
                Image(systemName: imageName)
                    .foregroundColor(imageColor)
                .padding(.leading,10)
            }
            VStack(alignment:.leading){
                Text(text)
                    .foregroundColor(.black)
                    .bold()
                    .padding(.top,25)
                Text("On")
                    .foregroundColor(.gray)
                    .padding(.bottom,25)
            }
            .padding(.leading,10)
            Spacer()
        }
        .frame(width:170, height: 60)
        .background(.white)
        .cornerRadius(15)
    }
}

#Preview {
    homeElement_3(imageName: "poweroutlet.type.b.fill", imageColor:.white, text: "Network")
}
