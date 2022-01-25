//
//  princess noura university.swift
//  GraduatePath
//
//  Created by shaima on 19/06/1443 AH.
//
import SwiftUI

struct princess_noura_university: View {
    var majors = ["Management and business","Human Medicine","Sciences","Literature","Social Service","designs and arts","Health and Rehabilitation Sciences","Computer and Information Sciences" , "Education"]
        
        var body: some View {
           
            ScrollView{
                ForEach(majors, id:\.self){ major in
                NavigationLink(destination: AccountView()) {
                    Text("\(major)")
                        .foregroundColor(Color(red: 0.10980392156862745, green: 0.7019607843137254, blue: 0.7058823529411765))
                        .frame(width: 300, height:35).padding()
                    .background(.white)
                    .cornerRadius(15).shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
                    .padding(5)
                    
                }
                }
            }.navigationTitle("Saved Majors").navigationBarTitleDisplayMode(.inline).padding()
            
        }
    }
    

struct princess_noura_university_Previews: PreviewProvider {
    static var previews: some View {
        princess_noura_university()
    }
}
       
