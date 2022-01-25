//
//  ExpertHome.swift
//  GraduatePath
//
//  Created by samah on 22/06/1443 AH.
//

import SwiftUI

struct ExpertHome: View {
    var body: some View {
        NavigationView {
          
            List {
                NavigationLink("Requests", destination: ExpertRequest())  .listRowBackground(Color(red: 0.9137254901960784, green: 0.9215686274509803, blue: 0.9411764705882353))
                NavigationLink("Ratings", destination: ExpertRating())  .listRowBackground(Color(red: 0.9137254901960784, green: 0.9215686274509803, blue: 0.9411764705882353))
                
                
            }.navigationTitle("Home")

         
        }
    }
}

struct ExpertHome_Previews: PreviewProvider {
    static var previews: some View {
        ExpertHome()
    }
}
