//
//  MovieDetailsViewController.swift
//  HuiyuGuan Assignment 1
//
//  Created by Huiyu Guan on 3/4/22.
//

import UIKit
import SwiftUI
import AlamofireImage

class MovieDetailsViewController: UIViewController {

    
    @IBOutlet weak var backdrop: UIImageView!
    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var synpsisLabel: UILabel!
    
    var movie: [String:Any]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        titleLabel.text = movie["title"] as? String
        titleLabel.sizeToFit()
        
        synpsisLabel.text = movie["overview"] as? String
        synpsisLabel.sizeToFit()
        
        let baseUrl = "http://image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"] as! String
        let posterUrl = URL(string:baseUrl + posterPath)
        
        posterView.af.setImage(withURL: posterUrl!)
        
        let backdropPath = movie["backdrop_path"] as! String
        let backdropUrl = URL(string:"http://image.tmdb.org/t/p/w780" + backdropPath)
        
        backdrop.af.setImage(withURL: backdropUrl!)
      
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
