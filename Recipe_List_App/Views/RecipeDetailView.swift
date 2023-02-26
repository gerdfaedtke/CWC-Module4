//
//  RecipeDetailView.swift
//  Recipe_List_App
//
//  Created by Gerd Faedtke on 23.02.23.
//

import SwiftUI

struct RecipeDetailView: View {
    
    var recipe:Recipe
    
    var body: some View {
       
        NavigationView {
            
 //           NavigationLink(destination: ToppingView),
 //           label: {
            
            ScrollView {
                
                VStack(alignment: .leading) {
                    
                    // Mark: Recipe Image
                    Image(recipe.image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 400, height: 200, alignment: .center)
                        .clipped()
                        .cornerRadius(5)
     //                   .resizable()
     //                   .scaledToFill()
                    
                    // Mark: Ingrdients
                    VStack(alignment: .leading) {
                        Text("Ingredients")
                            .font(.headline)
                            .padding([.top, .leading, .bottom], 5)
                        
                        ForEach (recipe.ingredients, id: \.self) { item in
                            Text("∙ " + item)
                                .padding([.top, .leading, .bottom], 1)
                        }
                    }
                    .padding(.horizontal)
                    
                    Divider()
                    
                    // Mark: Directions
                    VStack(alignment: .leading) {
                        Text("Directions")
                            .font(.headline)
                            .padding(.bottom, 5)
                        
                        ForEach (0..<recipe.directions.count, id: \.self) { index in
                            Text(String(index+1) + "∙ " + recipe.directions[index])
                                .padding(.bottom, 5)
      
                        }
                    }
                    .padding(.horizontal)
                }
                
            }
            .navigationBarTitle(recipe.name)
        }
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        // Create a dummy recipe amd pass it into the detail view so that we can see a preview
        
        let model = RecipeModel()
        
        RecipeDetailView(recipe: model.recipes[0])
    }
}
