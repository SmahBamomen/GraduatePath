//
//  SearchBar.swift
//  GraduatePath
//
//  Created by Najla Alshehri on 25/01/2022.
//

import SwiftUI

struct SearchBar: View {
    @Binding var searchText: String
    @Binding var isSearching: Bool
    @Binding var showResults: Bool
    @Binding var loadSearch: Bool
    
    var body: some View {
        
        
        HStack (spacing: 0){
            HStack {
                TextField("Search", text: $searchText)
                    .padding(.leading, 24)
            }
            .frame(height: 4)
            .padding()
            .background(Color(.systemGray5))
            .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
            .padding(.horizontal)
            .onTapGesture(perform: {
                isSearching = true
                showResults = true
            })
            .overlay (
                HStack {
                    Image(systemName: "magnifyingglass")
                    Spacer()
                    
                    
                    Button(action: {searchText = ""}, label: {
                        Image(systemName: "xmark.circle.fill")
                            .padding(.vertical)
                            .foregroundColor(.gray)
                            .opacity(isSearching ? 1 : 0)
                    })
                }
                .padding(.horizontal, 32)
                .foregroundColor(.gray)
            )
          .animation((loadSearch ? .spring() : .none) )
             
            if isSearching {
                Button(action: {
                    isSearching = false
                    searchText = ""
                    showResults = false
                    
                    
                    UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                },
                label: {
                    Text("Cancel")
                        .padding(.trailing)
                }
                )
                .transition(.move(edge: .trailing))
                .animation(.spring())
                
            }
        }
    }
    
}
