//
//  pnu.swift
//  GraduatePath
//
//  Created by shaima on 18/06/1443 AH.
//
import SwiftUI

struct pnu: View {
    let itmes:[Item]
    var body: some View {
        List(itmes, children: \.children){
            Text($0.title)
                
            
        }
    }
}

struct pnu_Previews: PreviewProvider {
    static var previews: some View {
        pnu(itmes: Item.stubs)
    }
}

extension Item{
    static var stubs: [Item] = [
        Item(title: "Management and business", children:nil),
        Item(title: "Human Medicine", children:nil),
        Item(title: "Sciences", children:nil),
        Item(title: "Literature", children:nil),
        Item(title: "Social Service", children:nil),
//        Item(title: "designs and arts", children:nil),
//        Item(title: "Health and Rehabilitation Sciences", children:nil),
        Item(title: "Computer and Information Sciences", children:[
            Item (title: "Computer Sciences", children: nil),
    Item (title: "Information Systems", children: nil),
    Item (title: "Information Technology", children: nil),
    Item (title: "Data science and analysis", children: nil),
    Item (title: "Cyber ​​security digital investigation", children: nil),
            Item (title: "Artificial intelligence", children: nil)
    ]),
        Item(title: "designs and arts", children:nil),
        Item(title: "Health and Rehabilitation Sciences", children:nil),

    ]
}
