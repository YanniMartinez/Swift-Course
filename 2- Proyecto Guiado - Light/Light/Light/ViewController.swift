//
//  ViewController.swift
//  Light
//
//  Created by ios dev lab fi unam on 07/03/23.
//

import UIKit

class ViewController: UIViewController {
    
    //Definiendo una variable para la luz de la pantalla (fondo claro u oscuro)
    var lightOn = true

    /**
     “@IBOutlet: esta palabra clave indica a Xcode que la propiedad en esta línea es un conector.
     var lightButton: esto declara una propiedad llamada “lightButton”.
     UIButton!: el tipo de la propiedad es UIButton!. El signo de exclamación te advierte que el programa fallará si intentas acceder a esta propiedad y el conector no está vinculado.”
     */
    @IBOutlet var lightButton: UIButton!
    
    
    /**Este es el metodo que extrajimos al dar "refactor" --> Extract to method
     La sentencia fileprivate es el equivalente a decir que se trata de un metodo privado debido a que solo es accesible desde este archivo*/
    func updateUI() {
      if lightOn {
        view.backgroundColor = .white
        lightButton.setTitle("Apagado", for: .normal)
      } else {
        view.backgroundColor = .black
        lightButton.setTitle("Encendido", for: .normal)
      }
    }
    
    /*En este caso lo que seleccionamos fue un boton y lo arrastramos seleccionando CTR, finalmente le dimos las opciones de Action, ViewButton, le asignamos un nombre y como sneder le pusimos Any
     
     El siguiente metodo lo que hace es detonarse cada que es presionado el boton, por lo que conviene poner logica dentro del mismo*/
    @IBAction func ButtonPressed(_ sender: Any) {
        
        //Toggle se trata de un metodo nativo de los booleanos en swift que cambia de valor la bandera para poder modificar el valor
        lightOn.toggle()
        
        updateUI()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()

        // Do any additional setup after loading the view.
    }


}

