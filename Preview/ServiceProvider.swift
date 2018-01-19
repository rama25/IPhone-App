//
//  ServiceProvider.swift
//  Preview
//
//  Created by Ramapriya Ranganath on 7/10/17.
//  Copyright © 2017 nasdaq. All rights reserved.
//

import Foundation
import TVServices

class ServiceProvider: NSObject, TVTopShelfProvider {

    override init() {
        super.init()
    }

    // MARK: - TVTopShelfProvider protocol

    var topShelfStyle: TVTopShelfContentStyle {
        // Return desired Top Shelf style.
        return TVTopShelfContentStyle.inset
    }

    var topShelfItems: [TVContentItem] {
        // Create an array of TVContentItems.
        
        
        let item1 = TVContentItem(contentIdentifier: TVContentIdentifier(identifier: "myapp.item1", container: nil)!)
        item1?.imageURL = URL(string: "http://business.nasdaq.com/media/L1_Pillar_headline_o_tcm5044-9600.jpg") as! URL
        
        let item2 = TVContentItem(contentIdentifier: TVContentIdentifier(identifier: "myapp.item1", container: nil)!)
        item2?.imageURL = URL(string: "https://thenypost.files.wordpress.com/2017/03/nasdaq1.jpg?quality=90&strip=all") as! URL
        
        let item3 = TVContentItem(contentIdentifier: TVContentIdentifier(identifier: "myapp.item1", container: nil)!)
        item3?.imageURL = URL(string: "https://d2q79iu7y748jz.cloudfront.net/s/_logo/434f38271a4844bf6620c4d039854092") as! URL
        
        let item4 = TVContentItem(contentIdentifier: TVContentIdentifier(identifier: "myapp.item1", container: nil)!)
        item4?.imageURL = URL(string: "http://business.nasdaq.com/media/DISC_L4head_careers-contact_tcm5044-11555.jpg") as! URL
        
        let item5 = TVContentItem(contentIdentifier: TVContentIdentifier(identifier: "myapp.item1", container: nil)!)
        item5?.imageURL = URL(string: "https://fm.cnbc.com/applications/cnbc.com/resources/img/editorial/2015/02/04/102398372-google-nasdaq.1910x1000.jpg") as! URL
        
        return [item1!, item2!, item3!, item4!, item5!]
    }

}

