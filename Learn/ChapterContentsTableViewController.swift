//
//  ChapterContentsTableViewController.swift
//  Learn
//
//  Created by Vannesa on 2019/3/1.
//  Copyright © 2019 Vannesa. All rights reserved.
//

import UIKit

class ChapterContentsTableViewController: UITableViewController {

    let chapterContentsArray = ["Vocabulary","Grammar","Pronounciation"]
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.rowHeight = 80.0
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chapterContentsArray.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "chapterContetsCell", for: indexPath)
        
        cell.textLabel?.text = chapterContentsArray[indexPath.row]

        return cell
    }



    // MARK: TableView Delegate Methods
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        performSegue(withIdentifier: "goToSelectedContent", sender: self)
    }

}
