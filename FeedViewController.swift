//
//  FeedViewController.swift
//  Carousel
//
//  Created by Patrick Weiss on 5/12/15.
//  Copyright (c) 2015 Patrick Weiss. All rights reserved.
//

import UIKit

class FeedViewController: UIViewController {

    @IBOutlet weak var bannerImageView: UIView!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var dismissBannerButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.contentSize = CGSize(width: 320, height: 1564)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func dismissBanner(sender: AnyObject) {
        dismissBanner()
    
    }

    func dismissBanner() {
        UIView.animateWithDuration(0.3, animations: { () -> Void in
            self.bannerImageView.alpha = 0

        })
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
