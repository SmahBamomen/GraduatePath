//
//   pnufile.swift
//  GraduatePath
//
//  Created by shaima on 19/06/1443 AH.
//

import Foundation
struct MenuSection: Codable , Identifiable{
    let id: UUID
    let name: String
    let items: [MenuSection]
}
