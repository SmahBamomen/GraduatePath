//
//  ExpertTabView.swift
//  GraduatePath
//
//  Created by samah on 22/06/1443 AH.
//

import SwiftUI

struct ExpertTabView: View {
    var body: some View {
        TabView(){
            ExpertHome()
                .tabItem{
                    Image(systemName:"house.fill")
                    Text("home")
                }
        
          
            ExpertAccount()
                 .tabItem{
                     Image(systemName:"person.fill")
                     Text("Account")
                 }
        }.accentColor(Color(red: 0.10980392156862745, green: 0.7019607843137254, blue: 0.7058823529411765))
  
   
    }
}

struct ExpertTabView_Previews: PreviewProvider {
    static var previews: some View {
        ExpertTabView()
    }
}
