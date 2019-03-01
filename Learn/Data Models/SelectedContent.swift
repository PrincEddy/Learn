//
//  SelectedContent.swift
//  Learn
//
//  Created by Vannesa on 2019/3/1.
//  Copyright © 2019 Vannesa. All rights reserved.
//

import Foundation
import RealmSwift

class Contents: Object {
     @objc dynamic var vocabulary : [String:String] = ["":""]
    let characterParent = LinkingObjects(fromType: Chapter.self, property: "characters")
}
