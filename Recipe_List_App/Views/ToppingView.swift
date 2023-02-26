//
//  ToppingView.swift
//  Recipe_List_App
//
//  Created by Gerd Faedtke on 24.02.23.
//

import SwiftUI

struct ToppingView: View {
    var body: some View {
        
        
        
        ScrollView {
            VStack {
                Text("Tomaten")
                    .font(.largeTitle)
                
                Image("tomaten")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 400, height: 400, alignment: .center)
                    .clipped()
                .cornerRadius(5)
                
            }
        }
//                   .resizable()
//                   .scaledToFill()
    }
}

struct ToppingView_Previews: PreviewProvider {
    static var previews: some View {
        ToppingView()
    }
}
