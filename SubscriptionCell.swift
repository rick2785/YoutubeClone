//
//  SubscriptionCell.swift
//  YouTube
//
//  Created by Rickey Hrabowskie on 1/18/17.
//  Copyright © 2017 Rickey Hrabowskie. All rights reserved.
//

import UIKit

class SubscriptionCell: FeedCell {

    override func fetchVideos() {
        ApiService.sharedInstance.fetchSubscriptionFeed { (videos) in
            self.videos = videos
            self.collectionView.reloadData()
        }
    }
}
