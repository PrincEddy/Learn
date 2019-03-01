//
//  SelectedLangaugeTableViewController.swift
//  Learn
//
//  Created by Vannesa on 2019/2/28.
//  Copyright © 2019 Vannesa. All rights reserved.
//

import UIKit
import RealmSwift

class SelectedLangaugeTableViewController: UITableViewController {
    let realm = try! Realm()
    
    var  booksArray = [SelectedLanguage]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.rowHeight = 80.0
        
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return booksArray.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "languageItemCell", for: indexPath)

        cell.textLabel?.text = booksArray[indexPath.row]

        return cell
    }

    // MARK: TableView Delegate Methods
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        performSegue(withIdentifier: "toBookChapters", sender: self)
    }
}
