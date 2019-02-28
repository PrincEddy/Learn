//
//  SelectedContentTableViewController.swift
//  Learn
//
//  Created by Vannesa on 2019/3/1.
//  Copyright © 2019 Vannesa. All rights reserved.
//

import UIKit

class SelectedContentTableViewController: UITableViewController {

    let vocabularyDict = ["nuhai":"女孩","shichang":"市场","lajiao":"辣椒","jingyan":"经验","honghong":"红红"]
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.rowHeight = 80.0
        
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vocabularyDict.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contentItemsCell", for: indexPath)

        let key   = Array(vocabularyDict.keys)[indexPath.row]
        let  value = Array(vocabularyDict.values)[indexPath.row]
        cell.textLabel?.text = key + "   " + value
        return cell
    }
    
    //MARK: TableView Delegates Methods
    
   override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }

   
}

