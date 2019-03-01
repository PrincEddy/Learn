//
//  SelectedBook.swift
//  Learn
//
//  Created by Vannesa on 2019/3/1.
//  Copyright © 2019 Vannesa. All rights reserved.
//

import Foundation
import RealmSwift

class Book: Object {
    @objc dynamic var chapter : String = ""
    let bookParent = LinkingObjects(fromType: SelectedLanguage.self, property: "chapters")
    let contents = List<Chapter>()
}
