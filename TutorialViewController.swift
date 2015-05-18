//
//  tutorialViewController.swift
//  Carousel
//
//  Created by Patrick Weiss on 5/12/15.
//  Copyright (c) 2015 Patrick Weiss. All rights reserved.
//

import UIKit

class TutorialViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var buttonImage: UIImageView!
    @IBOutlet weak var switchControl: UISwitch!
    @IBOutlet weak var pager: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        scrollView.contentSize = CGSizeMake(1280, 568)
        scrollView.delegate = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func scrollViewDidEndDecelerating(scrollView: UIScrollView){
        var page : Int = Int(round(scrollView.contentOffset.x / 320))
        pager.currentPage = page
        
        if pager.currentPage == 3 {
            pager.alpha = 0
            UIView.animateWithDuration(0.3, animations: {
                self.buttonImage.alpha = 1
                self.switchControl.alpha = 1
                
            })
        } else {
            pager.alpha = 1
            switchControl.alpha = 0
            buttonImage.alpha = 0
        }

    }

}
