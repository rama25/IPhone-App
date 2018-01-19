//
//  MovieCell.swift
//  test
//
//  Created by Ramapriya Ranganath on 7/10/17.
//  Copyright © 2017 nasdaq. All rights reserved.
//

import UIKit

class MovieCell: UICollectionViewCell
{
    //This is the custom UI collection view cell
    
    @IBOutlet weak var movieImg: UIImageView!
    @IBOutlet weak var movieLbl: UILabel!
    
 func configureCell(_ movie: Movie)
  {
    //function to pass a data
    //passing movie title and url
        
        if let title = movie.title{
            movieLbl.text = title
        }
        if let path = movie.url
        {
            let url = URL(string: path)!
            //download the image url
            
         DispatchQueue.global().async {
            //baground thread
            
               (DispatchQueue.GlobalQueuePriority.default, 0)
            
            //grabbisng main queue
               do{
                
                  let data1 =  NSData(contentsOf: url as URL)!
                //once downloaded force unwrap data
                //NSdata
                DispatchQueue.main.async()
                        
                     {
                        let img = UIImage(data: data1 as Data)
                       self.movieImg.image = img
                     }
            }
            }
            }
        }
    

}


