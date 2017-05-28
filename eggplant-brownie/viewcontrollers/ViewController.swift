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
    var mealsTable : MealsTableViewController?
    
    @IBAction func add(){
        if (nameField == nil || happinessField == nil){
            return
        }
        let name : String = nameField!.text!
        if let happiness = Int(happinessField!.text!) {
            let meal = Meal(name: name, happiness: happiness)
            print("eaten \(name)with happiness\(happiness)!")
        
            if (mealsTable == nil){
                return
            } else {
                mealsTable?.add(meal : meal)
            }
        
            if let navigation  = navigationController {
                navigation.popViewController(animated: true)
            }
        }

    }

}

