//
//  SelectedBookTableViewController.swift
//  Learn
//
//  Created by Vannesa on 2019/3/1.
//  Copyright © 2019 Vannesa. All rights reserved.
//

import UIKit

class SelectedBookTableViewController: UITableViewController {

    let chapterArrays = ["Chapter 1", "Chapter 2","Chapter 3","Chapter 4","Chapter 5"]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 80.0

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chapterArrays.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "chapterItemCell", for: indexPath)

        cell.textLabel?.text = chapterArrays[indexPath.row]

        return cell
    }


    // MARK: TableView Delegate Methods
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        performSegue(withIdentifier: "goToChapterContents", sender: self)
    }
   
}
