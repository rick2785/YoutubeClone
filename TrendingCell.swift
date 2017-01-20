//
//  TrendingCell.swift
//  YouTube
//
//  Created by Rickey Hrabowskie on 1/18/17.
//  Copyright © 2017 Rickey Hrabowskie. All rights reserved.
//

import UIKit

class TrendingCell: FeedCell {

    override func fetchVideos() {
        ApiService.sharedInstance.fetchTrendingFeed { (videos) in
            self.videos = videos
            self.collectionView.reloadData()
        }
    }

}
