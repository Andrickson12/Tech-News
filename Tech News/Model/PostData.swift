//
//  PostData.swift
//  Tech News
//
//  Created by Andrickson Coste on 5/5/20.
//  Copyright © 2020 Qalab Inc. All rights reserved.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    //Assigning objectID to var id
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
