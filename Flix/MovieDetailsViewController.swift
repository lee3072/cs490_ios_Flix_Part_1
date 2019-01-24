//
//  MovieDetailsViewController.swift
//  Flix
//
//  Created by 이승헌 on 23/01/2019.
//  Copyright © 2019 이승헌. All rights reserved.
//

import UIKit
import AlamofireImage

class MovieDetailsViewController: UIViewController {
    var movie: [String:Any]!
    
    @IBOutlet weak var backDropView: UIImageView!
    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var detailLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        titleLabel.text = movie["title"] as? String
        detailLabel.text = movie["overview"] as? String
        
        
        let baseURL = "https://image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"] as! String
        let posterURL = URL(string: baseURL + posterPath)
        posterView.af_setImage(withURL: posterURL!)
        
    
        let backDropPath = movie["backdrop_path"] as! String
        let backDropURL = URL(string: baseURL + backDropPath)
        backDropView.af_setImage(withURL: backDropURL!)
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
