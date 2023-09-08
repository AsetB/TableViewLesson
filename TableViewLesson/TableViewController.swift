//
//  TableViewController.swift
//  TableViewLesson
//
//  Created by Aset Bakirov on 06.09.2023.
//

import UIKit

class TableViewController: UITableViewController {
    
    //let array = [1, 2, 3, 4, 5]
    
//    var arrayTitle = ["The Matrix", "The Dark Knight", "The Lord of the Rings", "Inception", "Bladerunner 2049"]
//    var arrayGenre = ["Fantasy action", "Fantasy thriller", "Fantasy adventure", "Fanstasy action", "Cyberpunk"]
//    var arrayImage = ["matrix", "darkknight", "lordoftherings", "inception", "bladerunner"]
    
    var arrayFilms = [Film(title: "The Matrix", genre: "Fantasy action", image: "matrix", description: "The Matrix is a 1999 science fiction action film written and directed by the Wachowskis. When computer programmer Thomas Anderson, under the hacker alias Neo, uncovers the truth, he joins a rebellion against the machines along with other people who have been freed from the Matrix."),
                      Film(title: "The Dark Knight", genre: "Fantasy thriller", image: "darkknight", description: "The Dark Knight is a 2008 superhero film directed by Christopher Nolan. The plot follows the vigilante Batman, police lieutenant James Gordon, and district attorney Harvey Dent, who form an alliance to dismantle organized crime in Gotham City. Their efforts are derailed by the Joker, an anarchistic mastermind who seeks to test how far the Batman will go to save the city from chaos."),
                      Film(title: "The Lord of the Rings", genre: "Fantasy adventure", image: "lordoftherings", description: "The Lord of the Rings is a series of three epic fantasy adventure films directed by Peter Jackson, based on the novel The Lord of the Rings by British author J. R. R. Tolkien. The films are subtitled The Fellowship of the Ring (2001), The Two Towers (2002), and The Return of the King (2003)."),
                      Film(title: "Inception", genre: "Fantasy action", image: "inception", description: "Inception is a 2010 science fiction action film written and directed by Christopher Nolan. The film stars Leonardo DiCaprio as a professional thief who steals information by infiltrating the subconscious of his targets. He is offered a chance to have his criminal history erased, as payment for the implantation of another person's idea into a target's subconscious"),
                      Film(title: "Bladerunner 2049", genre: "Cyberpunk", image: "bladerunner", description: "Blade Runner 2049 is a 2017 American epic neo-noir science fiction film directed by Denis Villeneuve.Young Blade Runner K's discovery of a long-buried secret leads him to track down former Blade Runner Rick Deckard, who's been missing for thirty years.")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    @IBAction func addTitle(_ sender: Any) {
//        arrayTitle.append("New Film")
//        arrayGenre.append("New Film's genre")
//        arrayImage.append("default")
        arrayFilms.append(Film(title: "New Film", genre: "New Film's genre", image: "default", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec in lectus efficitur nisl cursus blandit ac eu ipsum. Vivamus et neque mauris. Vestibulum ut ligula nisl. Nullam posuere lacus sed ornare tempor. Aliquam tellus augue, posuere ac orci id, tempor viverra lectus. Pellentesque dolor risus, auctor nec tristique non, laoreet non orci."))
        tableView.reloadData()
    }
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrayFilms.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        // Configure the cell...
        
        let labelTitle = cell.viewWithTag(100) as! UILabel
        labelTitle.text = arrayFilms[indexPath.row].title
        
        let labelGenre = cell.viewWithTag(101) as! UILabel
        labelGenre.text = arrayFilms[indexPath.row].genre
        
        let imagePoster = cell.viewWithTag(102) as! UIImageView
        imagePoster.image = UIImage(named: arrayFilms[indexPath.row].image)

        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 89
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVC = storyboard?.instantiateViewController(withIdentifier: "detailViewController") as! ViewController
        
//        detailVC.nameOfTitle = arrayFilms[indexPath.row].title
//        detailVC.genre = arrayFilms[indexPath.row].genre
//        detailVC.imagename = arrayFilms[indexPath.row].image
        detailVC.film = arrayFilms[indexPath.row]
        
        navigationController?.show(detailVC, sender: self)
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
//            arrayFilms.remove(at: indexPath.row)
//            arrayFilms.remove(at: indexPath.row)
//            arrayFilms.remove(at: indexPath.row)
            arrayFilms.remove(at: indexPath.row)
            
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
