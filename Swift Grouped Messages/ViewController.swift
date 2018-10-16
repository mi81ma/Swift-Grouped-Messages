//
//  ViewController.swift
//  Swift Grouped Messages
//
//  Created by masato on 16/10/2018.
//  Copyright © 2018 masato. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    fileprivate let cellId = "id123"

    let textMessages = [
        "Here's my very first message",
        "I'm going to message another long message that will word wrap",
        "I'm going to message another long message that will word wrap, I'm going to message another long message that will word wrap"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "Messages"
        navigationController?.navigationBar.prefersLargeTitles = true

        tableView.register(ChatMessageCell.self, forCellReuseIdentifier: cellId)
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return textMessages.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
//        cell.textLabel?.text = "We want to provide a longer string that is actially going to wrap onto the next line and maybe even a third line."
//        cell.textLabel?.numberOfLines = 0
        
        return cell
    }


}

