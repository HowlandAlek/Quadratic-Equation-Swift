//
//  ViewController.swift
//  Ecuacion2doGrado
//
//  Created by Alek Howland on 05/11/21.
//

import UIKit

class ViewController: UIViewController
{
    
    // Configurar Outlets (coeficientes)
    
    @IBOutlet weak var tfA: UITextField!
    
    @IBOutlet weak var tfB: UITextField!
    
    @IBOutlet weak var tfC: UITextField!
    
    // Outlets (raices)
    
    @IBOutlet weak var tfRaiz1: UITextField!
    
    @IBOutlet weak var tfRaiz2: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // Action
    
    @IBAction func resolver(_ sender: UIButton) {
        let a = Double(tfA.text!)
        let b = Double(tfB.text!)
        let c = Double(tfC.text!)
        
        if a != nil && b != nil && c != nil && a != 0{
            let modelo = Ecuacion2do(a: a!, b: b!, c: c!)
            let raiz1 = modelo.calcularRaiz1()
            let raiz2 = modelo.calcularRaiz2()
            
            tfRaiz1.text = raiz1
            tfRaiz2.text = raiz2
        } else {
            tfRaiz1.text = ""
            tfRaiz2.text = ""
            // Cuadro de dialogo
            let alerta = UIAlertController(title: "Aviso", message: "Error, entrada incorrecta.", preferredStyle: .alert)
            // Boton
            let aceptar = UIAlertAction(title: "Aceptar", style: .default, handler: nil)
            alerta.addAction(aceptar)
            // Mostrar la alerta
            present(alerta, animated: true)
        }
    }
    
}

