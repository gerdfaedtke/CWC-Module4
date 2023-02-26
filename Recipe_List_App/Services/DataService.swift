//
//  DataService.swift
//  Recipe_List_App
//
//  Created by Gerd Faedtke on 23.02.23.
//

import Foundation

class DataService {
    
    // place for the data fetching service
    /*
     The static keyword allows you to call the method on the class itself rather than having to create an instance of it and then calling it on the instance. This can be handy when you just need the method for utility and there's no need to have instances to perform any additional work.
     */
    static func getLocalData() -> [Recipe] {
        
        // Parse local json date from file
        
        // Get a url path to the json file
        let pathString = Bundle.main.path(forResource: "recipes", ofType: "json")
        
        // Check if pathString is not nil, otherwise return an empty arry
        guard pathString != nil else {
            return [Recipe]()
        }
        // Create a url object
        let url = URL(fileURLWithPath: pathString!)
        
        do {
            // Create a data object
            let data = try Data(contentsOf: url)
           
            // Decode the data with a JSON decoder
            let decoder = JSONDecoder()
            
            do {
                let recipeData = try decoder.decode([Recipe].self, from: data)
                
                // Add the unique ID's
                for r in recipeData {
                    r.id = UUID()
                }
                
                // Return the recipies
                return recipeData
                
            }
            catch {
                // error with parsing json
                print(error)
            }
 
        }
        catch {
            // error with getting object
            print(error)
        }
        return [Recipe]()
    }
}
