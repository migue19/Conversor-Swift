//
//  ViewController.swift
//  conversor
//
//  Created by Miguel Mexicano Herrera on 24/09/15.
//  Copyright © 2015 ilab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var grados:Double=0

    @IBOutlet weak var gradcelcius: UITextField!
    
    @IBOutlet weak var resultado: UILabel!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func convertir(sender: AnyObject) {
        
       view.endEditing(true)
        
        grados=Double(gradcelcius.text!)!
        
        print("los grados son: \(grados)")
        
        
        print(centigradosFarenheit(grados))
        
        resultado.text="\(grados) ºC = \(centigradosFarenheit(grados)) ºF"
        
        
        
    }
    
    
    func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    
    
    
    func centigradosFarenheit(centi:Double)->Double
    {
        var farenheit:Double=0
        
        
        farenheit=centi*1.8+32
    
        
        return farenheit
    
    
    }
    
    
    
  
    
    


}

