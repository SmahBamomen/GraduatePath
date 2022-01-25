//
//  Data.swift
//  GraduatePath
//
//  Created by Najla Alshehri on 25/01/2022.
//

import SwiftUI


struct University: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var type: UniType
    var collages: [Collage]

    enum UniType {
    case Governmental , Private
    }

    struct Collage {
        var name:String
        var majors: [Major]
    }

    struct Major {
        var name:String
        var numOfYears: Int
        var isSaved: Bool = false
    }

}


// collage 1:  Computer and Information Sciences
let IT = University.Major(name:"Information Technology" , numOfYears: 4 )
let CS = University.Major(name:"Computer Science" , numOfYears: 4)
let AI = University.Major(name:"Artificial intelligence" , numOfYears: 4)
let IS = University.Major(name:"information systems" , numOfYears: 4)

let CCIS = University.Collage(name:"College of Computer and Information Sciences", majors:[IT, CS , AI , IS])

var Data = [
    University(name:"princess nora universty", image:"Gov-Uni-5", type: .Governmental, collages: [CCIS]),
]

