//
//  ChatUI.swift
//  GraduatePath
//
//  Created by samah on 17/06/1443 AH.
//

import SwiftUI

struct ChatUI : View {
    @State private var fullText: String = ""
    @State private var showActionSheet = false
    var body: some View {
        
            ZStack {
                
                   ScrollView(.vertical, showsIndicators: false) { }
                    VStack {
                      
                        HStack{
                            Spacer().frame(width:120)
                            Text("Expert Name")
                            Spacer().frame(width:100)
                            Button(action: {
                                showActionSheet = true
                            }){
                                Image(systemName: "ellipsis")
                                    
                            }  .actionSheet(isPresented: $showActionSheet) {
                                ActionSheet(title: Text("Select an action"), message: nil, buttons: [
                                    .default(Text("Preview Profile").foregroundColor(Color(red: 0.10980392156862745, green: 0.7019607843137254, blue: 0.7058823529411765)), action: {
                                        // TODO: Enter Option A action
                                    }),
                                    .default(Text("End Conversation")
                                                .foregroundColor(Color(red: 0.10980392156862745, green: 0.7019607843137254, blue: 0.7058823529411765)), action: {
                                        // TODO: Enter Option B action
                                    }),
                                    .cancel()]
                                )
                            }
                          
                           
                        }
                        
                        Spacer()
                        HStack {
                            Button(action: {
                                      //To Do
                            }) {
                                Image(systemName: "plus")
                                    .foregroundColor(Color(red: 0.10980392156862745, green: 0.7019607843137254, blue: 0.7058823529411765))
                            }
                          
                            TextField("  Message", text: $fullText)
                                    .frame(width: UIScreen.main.bounds.width - 100,height:30)  .background(Color(red: 240/255, green: 240/255, blue: 240/255)).overlay(
                                        RoundedRectangle(cornerRadius: 5)
                                            .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                                    )
                            Button(action: {
                                      //To Do
                            }) {
                                Image(systemName: "mic")
                                    .foregroundColor(Color(red: 0.10980392156862745, green: 0.7019607843137254, blue: 0.7058823529411765))
                            }
                        Button(action: {

                        }) {
                                Image(systemName: "paperplane").foregroundColor(Color(red: 0.10980392156862745, green: 0.7019607843137254, blue: 0.7058823529411765))
                        }
                            
                    }
                        
                    .padding([.leading, .trailing], 20)
                    .padding([.top, .bottom], 10)
                    
                    }
                    .padding(.horizontal)
            }
            
        }
}

struct ChatUI_Previews: PreviewProvider {
    static var previews: some View {
        ChatUI()
    }
}
