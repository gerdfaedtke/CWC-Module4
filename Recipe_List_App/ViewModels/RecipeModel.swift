//
//  RecipeModel.swift
//  Recipe_List_App
//
//  Created by Gerd Faedtke on 23.02.23.
//

import Foundation

class RecipeModel: ObservableObject {
    
    @Published var recipes = [Recipe]()
    
    init() {
        
        // Create an instance of data service and get the data
        
        self.recipes = DataService.getLocalData()
        
        // Set the recipe property
    }
}
