//
//  homeElement 4.swift
//  homeInterface
//
//  Created by Yiren LIU on 2024-01-16.
//

import SwiftUI

struct homeElement_4: View {
    let imageName: String
    let imageColor: Color
    let text: String
    var body: some View {
        HStack{
                Image(systemName: imageName)
                    .foregroundColor(imageColor)
                    .padding(.leading,20)
            
            VStack(alignment:.leading){
                Text(text)
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
        .frame(width:170, height: 70)
        .background(.black.opacity(0.6))
        .cornerRadius(15)
    }
}

#Preview {
    homeElement_4(imageName: "lock.fill", imageColor: .gray, text: "Apple TV")
}
