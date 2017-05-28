//
//  MealsTableViewController.swift
//  eggplant-brownie
//
//  Created by Izael E Costa on 28/05/17.
//  Copyright © 2017 Izael Effemberg da Costa. All rights reserved.
//

import UIKit

class MealsTableViewController : UITableViewController {
    
    var meals : Array<Meal> = [Meal(name: "Tapioca", happiness: 5),
                 Meal(name: "Cuzcuz com leite", happiness: 5),
                 Meal(name: "Bolo de Milho", happiness: 3)]
    
    override func tableView (_ tableView: UITableView, numberOfRowsInSection section : Int) -> Int{
        return meals.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = indexPath.row
        let meal = meals[row]
        let cell = UITableViewCell (style: UITableViewCellStyle.default, reuseIdentifier: nil)
        cell.textLabel!.text = meal.name
        return cell
    }
    
}
