//
//  ViewController.swift
//  CommonInputControls
//
//  Created by MacBook 26 on 10/03/23.
//

import UIKit

class ViewController: UIViewController {

    //Declaracion de acciones
    @IBOutlet var toggle: UISwitch!
    @IBOutlet var slider: UISlider!
    
    //Declaracion de metodo principal
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    /**Metodo que se encarga de detonarse cuando el boton colocado al inicio es presionado*/
    @IBAction func buttonTaped(_ sender: Any) {
        
        print("Se pulsó el botón.")
        if toggle.isOn {
             print("El interruptor está encendido.")
        } else {
             print("El interruptor está apagado.")
        }
         print("El regulador está configurado en \(slider.value).")
    }
    
   
    /**Metodo que se detona cuando el usuario cambia el valor del swtich*/
    @IBAction func switchToggle(_ sender: UISwitch){
        if sender.isOn {
             print("El interruptor está encendido.")
        } else {
             print("El interruptor está apagado.")
        }
        
    }
    
    /**Este metodo muestra el valor del slider cuando el usuario lo desplaza de derecha a izquierda**/
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        
        print(sender.value)
    }
    
    /**Este metodo funciona cuando el usuario termina de enviar el valor del texto**/
    @IBAction func keyboardReturnKeyTapped(_ sender: UITextField) {
        
        if let text = sender.text {
            print(text)
        }
        
    }

    /**El siguiente metodo funciona cuando el usuario va ingresando una tecla dentro del text box**/
    @IBAction func textChanged(_ sender: UITextField) {
        
        if let text = sender.text {
            print(text)
        }
    }
    
    
    @IBAction func respondToTapGesture(_ sender: UITapGestureRecognizer) {
        
        //Se mostrara la ubicacion donde se presiono en la pantalla
        let location = sender.location(in: view)
            print(location)
    }
}

