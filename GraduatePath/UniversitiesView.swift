//
//  UniversitiesView.swift
//  GraduatePath
//
//  Created by Najla Alshehri on 25/01/2022.
//

import SwiftUI

struct UniverstiesView: View {
    
    @State var searchText = ""
    @State var isSearching = false
    @State var showResults = false
    @State var loadSearch = false
    
    private var twoColumnGrid = [GridItem(.fixed(165)), GridItem(.fixed(165))]

    var body: some View {
        ScrollView {
            
            SearchBar(searchText: $searchText, isSearching: $isSearching, showResults: $showResults, loadSearch: $loadSearch)
                .padding(.top, 8)
                .padding(.bottom, 2)

            LazyVGrid(columns: twoColumnGrid, spacing: 18 )  {
                ForEach(Data.filter({$0.name.contains(searchText.lowercased()) || searchText.isEmpty})) { item in
                    NavigationLink(destination: UniversityView()) {
                        Image(item.image).resizable().frame(width: 130, height: 130)
                        .padding()
                        .background(.white)
                        .cornerRadius(15).shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
                }
                }
            }
            .animation(.spring())
        }.navigationTitle("Private Universties").navigationBarTitleDisplayMode(.inline)
    
    }
}

struct UniverstiesView_Previews: PreviewProvider {
    static var previews: some View {
        UniverstiesView()
    }
}
