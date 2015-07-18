//
//  ViewController.swift
//  Algorhythm
//
//  Created by Smashing Boxes on 7/17/15.
//  Copyright (c) 2015 Smashing Boxes. All rights reserved.
//

import UIKit

class PlaylistMasterViewController: UIViewController {
  @IBOutlet weak var playlistImageView0: UIImageView!
  @IBOutlet weak var playlistImageView1: UIImageView!
  @IBOutlet weak var playlistImageView2: UIImageView!
  @IBOutlet weak var playlistImageView3: UIImageView!
  @IBOutlet weak var playlistImageView4: UIImageView!
  @IBOutlet weak var playlistImageView5: UIImageView!
  
  var playlistArray : [UIImageView] = []
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Adds the blank image view, iterates, and sets it up w/ images
    playlistArray += [playlistImageView0, playlistImageView1, playlistImageView2, playlistImageView3, playlistImageView4, playlistImageView5]
    for index in 0..<playlistArray.count {
      let playlist = Playlist(index: index)
      let playlistImageView = playlistArray[index]
      
      playlistImageView.image = playlist.icon
      playlistImageView.backgroundColor = playlist.backgroundColor
    }
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    if segue.identifier == "showPlaylistDetailSegue" {
      
      let playlistImageView = sender!.view as! UIImageView
      // Search our array for the element we touched, then set details page if it's found
      if let index = find(playlistArray, playlistImageView) {
        let playlistDetailController = segue.destinationViewController as! PlaylistDetailViewController
        playlistDetailController.playlist = Playlist(index: index)
      }
    }
  }
  
  @IBAction func showPlaylistDetail(sender: AnyObject) {
    performSegueWithIdentifier("showPlaylistDetailSegue", sender: sender)
  }
}

