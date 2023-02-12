//
//  DetailViewController.swift
//  ViewGames
//
//  Created by İbrahim Bayram on 12.02.2023.
//

import UIKit
import SDWebImage


class DetailViewController: UIViewController {

    var choosenGame : Game?
    @IBOutlet weak var pubLabel: UILabel!
    @IBOutlet weak var developerLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var genreLabel: UILabel!
    @IBOutlet weak var platformLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        guard let choosenGame = choosenGame else {return}
        guard let url = URL(string: choosenGame.thumbnail) else {return}
        self.titleLabel.text = "Title : \(choosenGame.title)"
        self.platformLabel.text = "Platform : \(choosenGame.platform)"
        self.developerLabel.text = "Developer : \(choosenGame.developer)"
        self.pubLabel.text = "Publisher : \(choosenGame.publisher)"
        self.genreLabel.text = "Genre : \(choosenGame.genre)"
        self.dateLabel.text = "Date : \(choosenGame.release_date)"
        self.imageView.sd_setImage(with: url)
        
        
    }

}
