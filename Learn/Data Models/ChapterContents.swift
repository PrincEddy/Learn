//
//  ChapterContents.swift
//  Learn
//
//  Created by Vannesa on 2019/3/1.
//  Copyright © 2019 Vannesa. All rights reserved.
//

import Foundation
import RealmSwift

class Chapter: Object {
    @objc dynamic var content : String = ""
    let chapterParent = LinkingObjects(fromType: Book.self, property: "contents")
    let characters = List<Contents>()
}
