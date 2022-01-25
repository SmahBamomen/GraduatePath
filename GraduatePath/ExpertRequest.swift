//
//  ExpertRequest.swift
//  GraduatePath
//
//  Created by samah on 22/06/1443 AH.
//

import SwiftUI

struct ExpertRequest: View {
    var btnBack :some View{
        Button (action:{
           
        }){
            Text("Back")
        }

    }
    struct Request: Identifiable {
        let name: String
        let id = UUID()
    }
    
    private var request = [
        Request(name: "Ahmed"),
        Request(name: "Sara"),
        Request(name: "Farah"),
        Request(name: "Lama"),
        Request(name: "Mohamed")
    ]
    var body: some View {
        NavigationView {
            List(request) {
                NavigationLink($0.name, destination: ExpertChat())  .listRowBackground(Color(red: 0.9137254901960784, green: 0.9215686274509803, blue: 0.9411764705882353))
              }
           

         
        } .navigationTitle("Requests")
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: btnBack)
    }
}

struct ExpertRequest_Previews: PreviewProvider {
    static var previews: some View {
        ExpertRequest()
    }
}
