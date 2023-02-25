//
//  NavigationViewController.swift
//  TableView
//
//  Created by Kenneth Barker on 2/25/23.
//

import UIKit

class NavigationViewController: UIViewController {
    
    var character = ""
    var game = ""
    var image = ""
    var desc = ""
    
    @IBOutlet weak var characterLabel: UILabel!
    
    @IBOutlet weak var gameLabel: UILabel!
    
    @IBOutlet weak var backgroundImage: UIImageView!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        characterLabel.text = "\(character)"
        gameLabel.text = "\(game)"
        backgroundImage.image = UIImage(named: "\(image)")
        descriptionLabel.text = "\(desc)"
        

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
