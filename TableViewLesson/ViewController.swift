//
//  ViewController.swift
//  TableViewLesson
//
//  Created by Aset Bakirov on 06.09.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelTitleName: UILabel!
    
    @IBOutlet weak var labelGenreName: UILabel!
    
    @IBOutlet weak var imagePoster: UIImageView!
    
    @IBOutlet weak var labelDescription: UILabel!
    
    //    var nameOfTitle = ""
//    var genre = ""
//    var imagename = ""
    
    var film = Film()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        labelTitleName.text = film.title
        labelGenreName.text = film.genre
        imagePoster.image = UIImage(named: film.image)
        labelDescription.text = film.description
    }

}

