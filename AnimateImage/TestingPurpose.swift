//
//  TestingPurpose.swift
//  AnimateImage
//
//  Created by MacBook 26 on 09/05/23.
//

import SwiftUI

struct TestingPurpose: View {
    @State private var characterPosition: CGPoint = CGPoint(x: -100, y: -300)
    @State private var circlePosition: CGPoint = CGPoint(x: 0, y: 0)
    @State private var hidden = 1.0
    
    
        var body: some View {
            
            ZStack{
                Image("kirby")
                    .resizable()
                    .opacity(hidden)
                    .frame(width: 100, height: 100)
                    .foregroundColor(.blue)
                    .offset(x: circlePosition.x, y: circlePosition.y)
                    .gesture(
                        DragGesture()
                            .onChanged { value in
                                circlePosition = value.location
                                
                                if (abs(circlePosition.x - characterPosition.x) <= 35 )
                                    &&
                                    (abs(circlePosition.y - characterPosition.y) <= 35){
                                    
                                    
                                    hidden = 0.3
                                }
                                else{
                                    hidden = 1.0
                                }
                            }
                            .onEnded{ value in
                                
                                if (abs(circlePosition.x - characterPosition.x) > 50 )
                                    ||
                                    (abs(circlePosition.y - characterPosition.y) > 50){
                                    
                                    circlePosition.x = 100
                                    circlePosition.y = 100
                                }

                            }
                    )
                
                Image("cake")
                    .resizable()
                .frame(width: 100, height: 100)
                .foregroundColor(.blue)
                .offset(x: characterPosition.x, y: characterPosition.y)
                
                Text("X: \(circlePosition.x), Y: \(circlePosition.y)")
                    .offset(x:0, y:300)
            }
            
            
            ZStack{
                
            }
            
            
        }
    
    //Funcion para evaluar un rango del circulo
    func resetCirclePosition(circlePosition: CGPoint, characterPosition: CGPoint) -> Bool {
       
        if (abs(circlePosition.x - characterPosition.x) <= 50 )
            &&
            (abs(circlePosition.y - characterPosition.y) <= 50){
            
            return true
        }
        
        return false
    }
}

struct TestingPurpose_Previews: PreviewProvider {
    static var previews: some View {
        TestingPurpose()
    }
}
