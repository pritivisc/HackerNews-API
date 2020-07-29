//
//  PostData.swift
//  HackerNews API
//
//  Created by Pritivi S Chhabria on 7/27/20.
//  Copyright © 2020 Chiffonier Inc. All rights reserved.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    let objectID: String
    let points: Int
    let url: String?
    let title: String
    var id: String {
        return objectID
    }
}
