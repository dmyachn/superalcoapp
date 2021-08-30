//
//  DrinksRepo.swift
//  SuperAlcoholic
//
//  Created by dmitry on 08.07.2021.
//

import Foundation
import Alamofire

class DrinkRepo{
    static let shared = DrinkRepo()
    
    
    func fetchDrinks() {
        // 1
        let request = AF.request("https://www.thecocktaildb.com/api/json/v1/1/search.php?s=")
        // 2
        request.responseJSON { (data) in
          print(data)
        }
      }
}
