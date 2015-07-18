//
//  PlaylistDetailViewController.swift
//  Algorhythm
//
//  Created by Smashing Boxes on 7/17/15.
//  Copyright (c) 2015 Smashing Boxes. All rights reserved.
//

import UIKit

class PlaylistDetailViewController: UIViewController {
  var playlist : Playlist?
  
  @IBOutlet var playlistCoverImage: UIImageView!
  @IBOutlet var playlistTitle: UILabel!
  @IBOutlet var playlistDescription: UILabel!
  
  @IBOutlet weak var playlistArtist0: UILabel!
  @IBOutlet weak var playlistArtist1: UILabel!
  @IBOutlet weak var playlistArtist2: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    if playlist != nil {
      playlistCoverImage.image = playlist!.largeIcon
      playlistCoverImage.backgroundColor = playlist!.backgroundColor
      playlistTitle.text = playlist!.title
      playlistDescription.text = playlist!.description
      
      playlistArtist0.text = playlist!.artists[0]
      playlistArtist1.text = playlist!.artists[1]
      playlistArtist2.text = playlist!.artists[2]
      
    }
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
}
