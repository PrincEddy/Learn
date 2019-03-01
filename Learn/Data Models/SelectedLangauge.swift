//
//  SelectedLangauge.swift
//  Learn
//
//  Created by Vannesa on 2019/3/1.
//  Copyright © 2019 Vannesa. All rights reserved.
//

import Foundation
import RealmSwift

class SelectedLanguage: Object {
    @objc dynamic var book : String = ""
    let chapters = List<Book>()
    
}
