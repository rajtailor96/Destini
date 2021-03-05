//
//  Sotry.swift
//  Destini-iOS13
//
//  Created by Raj Tailor on 03/04/2021.
//  Copyright © 2021 Raj Tailor. All rights reserved.
//

import Foundation

struct Story {
    var storyTitle: String
    var choice1: String
    var choice2: String
    
    init(t: String, c1: String, c2: String) {
        self.storyTitle = t
        self.choice1 = c1
        self.choice2 = c2
    }
}
