//
//  ViewController.swift
//  GIO
//
//  Created by Alfredo Merino on 4/8/19.
//  Copyright © 2019 Alfredo Merino. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    let names = ["Ivan", "Nilson", "Gio", "Ryan", "Tommy"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.textLabel?.text = names[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let newViewController = ViewController()
        newViewController.title = "Swift Miami Group"
        navigationController?.pushViewController(newViewController, animated: true)
    }
    
}

