//
//  bell.swift
//  AnimateImage
//
//  Created by MacBook 26 on 08/05/23.
//

import SwiftUI

/**Define el icono de la campana**/
struct Bell: View {
    @State private var isNotified = true //Indica si se tiene una nueva notificacion
    @State private var isAnimating = false
        
        var body: some View {
            VStack {
                
                //Defiene el icono de la imagen en funcion de la flag
                Image(isNotified ? "notify" : "bell")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(.blue)
                    .rotationEffect(.degrees(isAnimating ? -30 : 0))
                    .onAppear { //Define la animacion al aparecer
                        isNotified ? animateBell() : nil
                    }
                
                /*Button(action: {
                    isAnimating.toggle()
                }) {
                    Text(isAnimating ? "Stop Animation" : "Start Animation")
                        .padding()
                        .background(Color.red)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }*/
            }
        }
    
        //Declaracion de animacion
        private func animateBell() {
            withAnimation(Animation.easeInOut(duration: 0.3).repeatForever(autoreverses: true).delay(1.0)) {
                self.isAnimating = true
            }
        }
    }

struct Bell_Previews: PreviewProvider {
    static var previews: some View {
        Bell()
    }
}
