//
//  ViewController.swift
//  EjemploProyecto
//
//  Created by josue on 16/10/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var etiqueta: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        etiqueta.text = "Ya Cambie"
        etiqueta.text = "Ya Cambie por segunda vez"
        etiqueta.text = "Ya Cambie por tercera vez"
        etiqueta.text = "Ya Cambie por cuarta vez"
    }

    @IBAction func cambiarTexto(_ sender: Any) {
        etiqueta.text = "Hola Mundo Cruel"
    }
    
}
