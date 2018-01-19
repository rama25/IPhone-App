//
//  DetailViewController.swift
//  test
//
//  Created by Ramapriya Ranganath on 7/11/17.
//  Copyright © 2017 nasdaq. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    
    var title1: String!
    var description1: String!

    
    
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var imgView: UIImageView!
    
    
    @IBOutlet weak var titt: UILabel!
    @IBOutlet weak var desc: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //self.view.backgroundColor = UIColor.white
        
        //if let title = selectedMovie.title{
        //   selectedMovie.text = title
        //}
        if let path = selectedMovie.url
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
                            self.imgView.image = img
                    }
                }
            }
        }
        if let title1 = selectedMovie.title {
            self.titt.text = title1
            
        }
        if let description1 = selectedMovie.description{
            self.desc.text = description1
            
        }
        
//        if let title1 = selectedMovie.title{
//            self.title1 = title1
//        
//        }
//        if let description1 = selectedMovie.description{
//            self.description1 = description1
//        }

        //self.imgView.image = UIImage(named: selectedMovie.url)
        
        //detailImageview.image = UIImage(named: sentData)
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
