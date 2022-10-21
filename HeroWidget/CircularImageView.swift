//
//  CircularImageView.swift
//  HeroWidget
//
//  Created by Fatih Filizol on 21.10.2022.
//

import SwiftUI

struct CircularImageView: View {
    
    var image : Image
    
    var body: some View {
        image.resizable().aspectRatio( contentMode: .fit)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.yellow, lineWidth: 5))
            .shadow(radius: 28)
        
    }
}

struct CircularImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircularImageView(image: Image("batman"))
    }
}
