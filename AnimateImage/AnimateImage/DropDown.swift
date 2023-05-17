//
//  DropDown.swift
//  AnimateImage
//
//  Created by MacBook 26 on 08/05/23.
//

import SwiftUI

/**Vista que se encargara de desplegar un menu desplegable el cual contendra
 botones los cuales podra hacer drag and drop al personaje y que este tenga una u otra
 accion dependiendo de lo que se trate**/
struct DropDown: View {
    @Binding var isDropdownVisible : Bool //Leera el valor de la vista principal que determina si esta activo o no el dropDown
    @Binding var category : Int
    let gyms: [String] = ["gym","gym", "gym", "gym","gym"]
    let foods: [String] = ["ham","hotdog", "salad", "pizza","juice"]
    let medicine: [String] = ["pills","pills", "pills", "pills","pills"]
    let candies: [String] = ["candy","cake", "candy", "cake","candy"]
    let games: [String] = ["gym","ham","hotdog", "salad", "pizza"]
    
    var icons: [[String]] {
        return [gyms, foods, medicine, candies, games]
    }
        var body: some View {
            ZStack{
                
            }
            
            VStack {
                
                
                if isDropdownVisible {
                    VStack {
                       
                        //Generacion del scrollView vertical
                        ScrollView(.vertical, showsIndicators: false) {
                            VStack {
                                //Declaracion de arreglo de ejemplo para probar menu
                                ForEach(Array(icons[category].enumerated()), id: \.1) { index, accion in

                                    Image("\(accion)")
                                        .resizable()
                                        .frame(width: 60,
                                               height: 60)
                                    
                                }
                                
                                .clipShape(Circle())
                                
                            }
                            
                        }
                        .frame(width: 110,height: 200)
                        //.background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                        .transition(.move(edge: .top))
                                        .animation(.easeInOut)
                        
                    }
                   
                }
                
               
            }
            .padding()
        }
    }

/*
struct DropDown_Previews: PreviewProvider {
    static var previews: some View {
        DropDown()
    }
}
*/
