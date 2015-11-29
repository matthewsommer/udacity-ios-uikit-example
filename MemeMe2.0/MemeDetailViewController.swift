//
//  MemeDetailViewController.swift
//  MemeMe2.0
//
//  Created by Matt Sommer on 11/27/15.
//  Copyright © 2015 Matt Sommer. All rights reserved.
//

import UIKit

class MemeDetailViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    var meme: Meme!
    var selectedIndex: Int?
    
    override func viewDidLoad() {
        tabBarController?.tabBar.hidden = true
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        imageView.image = meme.memedImage
    }
    
    @IBAction func editButton(sender: AnyObject) {
        performSegueWithIdentifier("memeEditor", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "memeEditor" {
            let destination = segue.destinationViewController as! MemeEditorViewController
            destination.meme = meme!
        }
    }
}