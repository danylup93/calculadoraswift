//
//  ViewController.swift
//  Calculadora
//
//  Created by Danitza Ayala on 10/9/18.
//  Copyright © 2018 Danitza Ayala. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var numPantalla:Double=0;
    var prevNum: Double=0;
    var calcular=false;
    var operacion = 0;
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func numbers(_ sender: UIButton) {
        if calcular==true {
            label.text=String(sender.tag-1)
            numPantalla=Double(label.text!)!
            calcular=false
        }else{
            label.text=label.text!+String(sender.tag-1)
            numPantalla=Double(label.text!)!
        }
        
    }
    
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func buttons(_ sender: UIButton) {
        if label.text != "" && sender.tag != 11 && sender.tag != 16 {
            prevNum = Double(label.text!)!
            if sender.tag==12{
                label.text="/";
            }
            if sender.tag==13{
                label.text="x";
            }
            if sender.tag==14{
                label.text="-";
            }
            if sender.tag==15{
                label.text="+";
            }
            operacion=sender.tag
            calcular=true;
        }
        else if sender.tag == 16{
            if sender.tag==12{
                label.text=String(prevNum/numPantalla);
            }
            if sender.tag==13{
                label.text=String(prevNum*numPantalla);
            }
            if sender.tag==14{
                label.text=String(prevNum-numPantalla);
            }
            if sender.tag==15{
                label.text=String(prevNum+numPantalla);
            }
        }
        else if sender.tag == 11{
            label.text=""
            prevNum=0
            numPantalla=0
            operacion=0
            
        }
    }
}

