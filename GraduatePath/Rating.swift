//
//  Rating.swift
//  GraduatePath
//
//  Created by samah on 21/06/1443 AH.
//

import SwiftUI

struct Rating: View {
    @State private var rating: Int?
    @State private var fullText: String = ""
    
    @State private var selection = Set<String>()
    
    var buttonView: some View {
         Group {
             HStack{
                 Button(action: {
                           //To Do
                 }) {
                     Text("nice").foregroundColor(Color(red: 0.10196078431372549, green: 0.20392156862745098, blue: 0.30980392156862746)) .frame(width: 119,height:32).overlay(
                         RoundedRectangle(cornerRadius: 9)
                             .stroke(Color(red: 0.10196078431372549, green: 0.20392156862745098, blue: 0.30980392156862746), lineWidth: 1)
                     ) }
                 
                 Spacer().frame(width:15)
                 
                 
                 Button(action: {
                           //To Do
                 }) {
                     Text("nice").foregroundColor(Color(red: 0.10196078431372549, green: 0.20392156862745098, blue: 0.30980392156862746)) .frame(width: 119,height:32).overlay(
                         RoundedRectangle(cornerRadius: 9)
                             .stroke(Color(red: 0.10196078431372549, green: 0.20392156862745098, blue: 0.30980392156862746), lineWidth: 1)
                     ) }
             }
             Spacer().frame(height:15)
             
             HStack{
                 Button(action: {
                           //To Do
                 }) {
                     Text("nice").foregroundColor(Color(red: 0.10196078431372549, green: 0.20392156862745098, blue: 0.30980392156862746)) .frame(width: 110,height:32).overlay(
                         RoundedRectangle(cornerRadius: 9)
                             .stroke(Color(red: 0.10196078431372549, green: 0.20392156862745098, blue: 0.30980392156862746), lineWidth: 1)
                     ) }
                 Spacer().frame(width:15)
                 Button(action: {
                           //To Do
                 }) {
                     Text("nice").foregroundColor(Color(red: 0.10196078431372549, green: 0.20392156862745098, blue: 0.30980392156862746)) .frame(width: 110,height:32).overlay(
                         RoundedRectangle(cornerRadius: 9)
                             .stroke(Color(red: 0.10196078431372549, green: 0.20392156862745098, blue: 0.30980392156862746), lineWidth: 1)
                     ) }
                 
                 Spacer().frame(width:15)
                 Button(action: {
                           //To Do
                 }) {
                     Text("nice").foregroundColor(Color(red: 0.10196078431372549, green: 0.20392156862745098, blue: 0.30980392156862746)) .frame(width: 110,height:32).overlay(
                         RoundedRectangle(cornerRadius: 9)
                             .stroke(Color(red: 0.10196078431372549, green: 0.20392156862745098, blue: 0.30980392156862746), lineWidth: 1)
                     ) }
             }
             
             Spacer().frame(height:15)
             Button(action: {
                       //To Do
             }) {
                 Text("nice").foregroundColor(Color(red: 0.10196078431372549, green: 0.20392156862745098, blue: 0.30980392156862746)) .frame(width: 119,height:32).overlay(
                     RoundedRectangle(cornerRadius: 9)
                         .stroke(Color(red: 0.10196078431372549, green: 0.20392156862745098, blue: 0.30980392156862746), lineWidth: 1)
                 ) }
         }
     }

    var body: some View {
        VStack{
            Image("Multicultural_Communities")
            
            Text("How was your experience ?")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(Color(red: 0.10196078431372549, green: 0.20392156862745098, blue: 0.30980392156862746))
           
            RatingView(rating: $rating)
            
            Spacer().frame(height:30)
            buttonView
            Spacer().frame(height:30)
            Text("Write a review")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(Color(red: 0.10196078431372549, green: 0.20392156862745098, blue: 0.30980392156862746))
            TextField("", text: $fullText)
                    .frame(width: 287,height:111).overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color(red: 0.10196078431372549, green: 0.20392156862745098, blue: 0.30980392156862746), lineWidth: 1)
                    )
            Spacer().frame(height:40)
            Button(action: {
                      //To Do
            }) {
                Text("Submit").foregroundColor(Color.white).frame(width: 194, height: 50).background(
                    RoundedRectangle(cornerRadius: 9, style: .continuous).fill(Color(red: 0.10980392156862745, green: 0.7019607843137254, blue: 0.7058823529411765))
                ) }
          
            
        
        }
    }
}

struct Rating_Previews: PreviewProvider {
    static var previews: some View {
        Rating()
    }
}
