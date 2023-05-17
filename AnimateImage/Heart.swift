//
//  Heart.swift
//  AnimateImage
//
//  Created by MacBook 26 on 08/05/23.
//

import SwiftUI

struct Heart: View {
    @State private var isImageAnimated = false
    
    var body: some View {
        VStack {
            Image("heart")
                .resizable()
                .frame(width: 50, height: 50)
                .scaleEffect(isImageAnimated ? 1.05 : 1.0) // Escala la imagen según el estado animado
                .onAppear {
                    animateImage() // Iniciar la animación cuando la vista aparezca por primera vez
                }
            
            
        }
    }
    
    private func animateImage() {
        withAnimation(Animation.easeInOut(duration: 0.3).repeatForever(autoreverses: true).delay(1.0)) {
            self.isImageAnimated = true
        }
    }
}

struct Heart_Previews: PreviewProvider {
    static var previews: some View {
        Heart()
    }
}
