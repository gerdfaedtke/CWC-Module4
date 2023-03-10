//
//  ContentView.swift
//  Recipe_List_App
//
//  Created by Gerd Faedtke on 23.02.23.
//

import SwiftUI

struct RecipeListView: View {
    
    // Reference the view model
    var model = RecipeModel()
    
    var body: some View {
  
        NavigationView {
            
            List(model.recipes) { r in
                
                NavigationLink(
                    destination: RecipeDetailView(recipe:r),
                label: {
                    HStack(spacing: 20.0) {
                        Image(r.image)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 50, height: 50, alignment: .center)
                            .clipped()
                            .cornerRadius(5)
                        Text(r.name)
                    }
                }
                )
            }
            .navigationBarTitle("All recipies")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
