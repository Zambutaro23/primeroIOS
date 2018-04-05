//
//  ViewController.swift
//  none
//
//  Created by JAVIER SÁNCHEZ RODRIGUEZ on 3/4/18.
//  Copyright © 2018 JAVIER SÁNCHEZ RODRIGUEZ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var txtfUsuario:UITextField?
    @IBOutlet var txtfPass:UITextField?
    @IBOutlet var txtVConsola:UITextView?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func Registrar(){
        self.performSegue(withIdentifier: "taceptar",sender: self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func Acceder(){
        if txtfUsuario?.text=="Javier" && txtfPass?.text=="lalala"{
            self.performSegue(withIdentifier:"javier",sender:self)
        }
    }
    @IBAction func accionBotonLongear(){
            txtVConsola?.text=String(format:"Hola Amigo Usuario: %@ Password: %@",(txtfUsuario?.text)!, (txtfPass?.text)!)
        }
}


