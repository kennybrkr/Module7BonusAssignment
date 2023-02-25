//
//  ViewController.swift
//  TableView
//
//  Created by Kenneth Barker on 2/19/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var tableLogic = tableViewLogic()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableLogic.findCount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = tableLogic.findName(index: indexPath.row)
        content.secondaryText = tableLogic.findGame(index: indexPath.row)
        cell.contentConfiguration = content
        return cell
    }
    
    func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let deleteAction = UIContextualAction(style: .destructive, title: "Delete") { (_, _, _) in
            print("Deleted " + self.tableLogic.characters[indexPath.row].char)
            self.tableLogic.characters.remove(at: indexPath.row)
            tableView.reloadData()
        }        
        let config = UISwipeActionsConfiguration(actions: [deleteAction])
        config.performsFirstActionWithFullSwipe = false
        return config
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableLogic.character = tableLogic.characters[indexPath.row].char
        tableLogic.game = tableLogic.characters[indexPath.row].game
        tableLogic.image = tableLogic.characters[indexPath.row].image
        tableLogic.desc = tableLogic.characters[indexPath.row].desc
        self.performSegue(withIdentifier: "toNav", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toNav" {
            let navigation = segue.destination as! NavigationViewController
            navigation.character = tableLogic.character
            navigation.game = tableLogic.game
            navigation.image = tableLogic.image
            navigation.desc = tableLogic.desc
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

