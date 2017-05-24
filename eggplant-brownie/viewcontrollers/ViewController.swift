//
//  ViewController.swift
//  eggplant-brownie
//
//  Created by Izael E Costa on 21/05/17.
//  Copyright © 2017 Izael Effemberg da Costa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var nameField : UITextField! // variavel opcional (indicada pela !), essa variavel ta compilando e ta sem valor (obs o swift exige a inicialicao de uma var)
    @IBOutlet var happinessField : UITextField!
    
    @IBAction func add(){
        let name = nameField!.text
        let happiness = happinessField!.text
        print("eaten \(name)with happiness\(happiness)!")
    }

}

