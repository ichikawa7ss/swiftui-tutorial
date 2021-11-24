//
//  CircleImage.swift
//  Landmark
//
//  Created by ichikawa on 2021/11/10.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    var body: some View {
        image
            .frame(width: 250, height: 250, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.gray, lineWidth: 4))
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
