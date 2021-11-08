//
//  Ecuacion2do.swift
//  Ecuacion2doGrado
//
//  Created by Alek Howland on 05/11/21.
//

import Foundation
import Darwin

class Ecuacion2do
{
    var a:Double
    var b:Double
    var c:Double
    
    // Constructor
    init(a: Double, b:Double, c:Double){
        self.a = a
        self.b = b
        self.c = c
    }
    
    func calcularRaiz1() -> String {
        let discriminante = calcularDiscriminante()
        if discriminante >= 0 {
            let raiz1 = (-b + sqrt(discriminante)) / (2*a)
            return String(format: "%.3f", raiz1)
        } else {
            let res1 = String(format: "%.3f", (-b / (2  * a)))
            let res2 = String(format: "%.3f", (sqrt(abs(discriminante))))
            return "\(res1) + \(res2)i"
        }
    }
    
    func calcularRaiz2() -> String {
        let discriminante = calcularDiscriminante()
        if discriminante >= 0 {
            let raiz2 = (-b - sqrt(discriminante)) / (2*a)
            return String(format: "%.3f", raiz2)
        } else {
            let res1 = String(format: "%.3f", (-b / (2  * a)))
            let res2 = String(format: "%.3f", (sqrt(abs(discriminante))))
            return "\(res1) - \(res2)i"
        }
    }
    
    func calcularDiscriminante() -> Double{
        return b*b - 4*a*c
    }
}
