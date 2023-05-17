//
//  Life.swift
//  AnimateImage
//
//  Created by MacBook 26 on 08/05/23.
//

import SwiftUI

/**Declaracion de barra de vida para poder indicar la salud de nuestro personaje**/
struct Life: View {
    @State private var health: Double = 0.8 // Valor de vida actual (entre 0 y 1)
        
        var body: some View {
            VStack {
                ZStack(alignment: .leading) {
                    Rectangle()
                        .frame(width:100,height: 15)
                        .foregroundColor(Color.gray) // Color de la barra de vida base
                    
                    Rectangle()
                        .frame(width: getWidth(), height: 15)
                        .foregroundColor(Color.red) // Color de la barra de vida actual
                }
                .cornerRadius(10)
                .padding()
                
                /*Button(action: {
                    decreaseHealth() // Simula una disminución de la vida (puedes personalizar esta lógica)
                }) {
                    Text("Decrease Health")
                        .padding()
                        .background(Color.red)
                        .foregroundColor(Color.white)
                        .cornerRadius(10)
                }*/
            }
        }
        
        private func getWidth() -> CGFloat {
            let maxWidth: CGFloat = 100 // Ancho máximo de la barra de vida
            return maxWidth * CGFloat(health)
        }
        
        private func decreaseHealth() {
            if health > 0 {
                health -= 0.1 // Valor de decremento de la vida (puedes personalizar esta lógica)
            }
        }
    }


struct Life_Previews: PreviewProvider {
    static var previews: some View {
        Life()
    }
}
