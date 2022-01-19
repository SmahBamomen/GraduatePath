//
//  ContentView.swift
//  GraduatePath
//
//  Created by samah on 16/06/1443 AH.
//

import SwiftUI



struct ContentView: View {
   
    var body: some View {
        TabView(){
            HomeView()
                .tabItem{
                    Image(systemName:"house.fill")
                    Text("home")
                }
          ConsultView()
                .tabItem{
                    Image(systemName:"bubble.left.and.bubble.right.fill")
                    Text("Consult")
                }
           QuizView()
                .tabItem{
                    Image(systemName:"person.fill.questionmark")
                    Text("Quiz")
                }
           AccountView()
                 .tabItem{
                     Image(systemName:"person.fill")
                     Text("Account")
                 }
        }.accentColor(Color(red: 0.10980392156862745, green: 0.7019607843137254, blue: 0.7058823529411765))
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
