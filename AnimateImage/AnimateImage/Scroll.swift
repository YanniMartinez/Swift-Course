//
//  Scroll.swift
//  AnimateImage
//
//  Created by MacBook 26 on 08/05/23.
//

import SwiftUI

struct Scroll: View {
    //Declaracion de arreglo con acciones
    @State private var accions = ["Ejercicio","Alimento", "Medicina", "Dulces","Juegos"]
    @State private var icons = ["gym","ham", "pills", "candy","cake"]
    @State private var isDropdownVisible = true
    @State private var indexEnabled = -1
    @State private var category = -1
    
    var body: some View {
           ScrollView(.horizontal) {
               //Declaracion de pila con icono y nombre de la accion
               VStack(){
                   HStack(spacing: 16) {
                       ForEach(Array(accions.enumerated()), id: \.1) { index, accion in
                           
                           //Text("\(index)")
                           
                           
                               ZStack{
                                   
                                   
                                   //Definimos dentro de un vStack para que este elemento se dibuje arriba
                                   if  indexEnabled == index  {
                                       Text("")
                                           .padding(.top,200)
                                           .font(.title)
                                           .foregroundColor(.white).fixedSize(horizontal: true, vertical: true)
                                           .overlay(DropDown(isDropdownVisible : $isDropdownVisible, category:$category).padding(.top,-280).padding(.leading,90))
                                       
                                   }
                               }
                               ZStack{
                                   //Boton para hacer trigger del dropDown
                                   Button(action: {
                                       
                                       //Si se presiona el mismo boton deshace el dropdown
                                       if(indexEnabled == index ){
                                           isDropdownVisible.toggle()
                                           indexEnabled = -1
                                       }else{ //Despliega dropdown
                                           indexEnabled = index
                                           isDropdownVisible = true
                                       }
                                       
                                       category = index
                                       
                                   }) { //Icono del boton
                                       Image("\(icons[index])")
                                           .resizable()
                                           .clipShape(Circle())
                                           .frame(width: indexEnabled == index ? 50 : 80,
                                                  height: indexEnabled == index ? 50 : 80).fixedSize()
                                       
                                   }
                               
                           }
                           
                           
                           
                               
                       }
                       
                       
                   }
               }.frame(height: 500)
               HStack{
                   ForEach(accions, id: \.self) { accion in
                       
                       Text("\(accion)")
                           .foregroundColor(.black)
                           .font(.system(size: 15)).padding(.horizontal,accion.count > 7 ? 25 : 28)
                       
                   }
               }
               
               .padding(.top,-200)
           }
       }
}

struct Scroll_Previews: PreviewProvider {
    static var previews: some View {
        Scroll()
    }
}
