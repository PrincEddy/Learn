//
//  SelectedLangaugeTableViewController.swift
//  Learn
//
//  Created by Vannesa on 2019/2/28.
//  Copyright © 2019 Vannesa. All rights reserved.
//

import UIKit

class SelectedLangaugeTableViewController: UITableViewController {
    let booksArray = ["Developing Chinese 1","Developing Chinese 2","Developing Chinese 3","Developing Chinese 4","Developing Chinese 5"]
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
