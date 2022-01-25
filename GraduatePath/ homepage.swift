//
//  homepage.swift
//  GraduatePath
//
//  Created by shaima on 18/06/1443 AH.
//
import Foundation
struct Item: Identifiable{
    
   let id = UUID()
    let title:String
    let children:[Item]?
    
    
    
}
