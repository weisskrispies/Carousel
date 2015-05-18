//
//  introViewController.swift
//  Carousel
//
//  Created by Patrick Weiss on 5/12/15.
//  Copyright (c) 2015 Patrick Weiss. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var introImageView: UIImageView!

    @IBOutlet weak var welcomeImage1: UIImageView!
    @IBOutlet weak var welcomeImage2: UIImageView!
    @IBOutlet weak var welcomeImage3: UIImageView!
    @IBOutlet weak var welcomeImage4: UIImageView!
    @IBOutlet weak var welcomeImage5: UIImageView!
    @IBOutlet weak var welcomeImage6: UIImageView!
    
    //image orientations upon open

    
    override func viewDidLoad() {
        super.viewDidLoad()

        scrollView.contentSize = introImageView.image!.size
        scrollView.delegate = self

    
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func scrollViewDidScroll(scrollView: UIScrollView) {
        var offset = Float(scrollView.contentOffset.y)
        
        // content offset goes from 0 to 568

        //image 1
        var tx1 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -60, r2Max: 0)
        var ty1 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -300, r2Max: 0)
        var scale1 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 1, r2Max: 1)
        var rotation1 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -10, r2Max: 0)
        welcomeImage1.transform = CGAffineTransformMakeTranslation(CGFloat(tx1), CGFloat(ty1))
        welcomeImage1.transform = CGAffineTransformScale(welcomeImage1.transform, CGFloat(scale1), CGFloat(scale1))
        welcomeImage1.transform = CGAffineTransformRotate(welcomeImage1.transform, CGFloat(Double(rotation1) * M_PI / 180))
        
        // image 2
        var tx2 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 50, r2Max: 0)
        var ty2 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -265, r2Max: 0)
        var scale2 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 1.65, r2Max: 1)
        var rotation2 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -10, r2Max: 0)
        welcomeImage2.transform = CGAffineTransformMakeTranslation(CGFloat(tx2), CGFloat(ty2))
        welcomeImage2.transform = CGAffineTransformScale(welcomeImage2.transform, CGFloat(scale2), CGFloat(scale2))
        welcomeImage2.transform = CGAffineTransformRotate(welcomeImage2.transform, CGFloat(Double(rotation2) * M_PI / 180))

        // image 3
        var tx3 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 30, r2Max: 0)
        var ty3 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -425, r2Max: 0)
        var scale3 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 1.7, r2Max: 1)
        var rotation3 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 10, r2Max: 0)
        welcomeImage3.transform = CGAffineTransformMakeTranslation(CGFloat(tx3), CGFloat(ty3))
        welcomeImage3.transform = CGAffineTransformScale(welcomeImage3.transform, CGFloat(scale3), CGFloat(scale3))
        welcomeImage3.transform = CGAffineTransformRotate(welcomeImage3.transform, CGFloat(Double(rotation3) * M_PI / 180))

        // image 4
        var tx4 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 90, r2Max: 0)
        var ty4 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -420, r2Max: 0)
        var scale4 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 1.6, r2Max: 1)
        var rotation4 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 10, r2Max: 0)
        welcomeImage4.transform = CGAffineTransformMakeTranslation(CGFloat(tx4), CGFloat(ty4))
        welcomeImage4.transform = CGAffineTransformScale(welcomeImage4.transform, CGFloat(scale4), CGFloat(scale4))
        welcomeImage4.transform = CGAffineTransformRotate(welcomeImage4.transform, CGFloat(Double(rotation4) * M_PI / 180))

        // image 5
        var tx5 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -110, r2Max: 0)
        var ty5 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -515, r2Max: 0)
        var scale5 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 1.65, r2Max: 1)
        var rotation5 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 10, r2Max: 0)
        welcomeImage5.transform = CGAffineTransformMakeTranslation(CGFloat(tx5), CGFloat(ty5))
        welcomeImage5.transform = CGAffineTransformScale(welcomeImage5.transform, CGFloat(scale5), CGFloat(scale5))
        welcomeImage5.transform = CGAffineTransformRotate(welcomeImage5.transform, CGFloat(Double(rotation5) * M_PI / 180))

        // image 6
        var tx6 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -80, r2Max: 0)
        var ty6 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -500, r2Max: 0)
        var scale6 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 1.65, r2Max: 1)
        var rotation6 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -10, r2Max: 0)
        welcomeImage6.transform = CGAffineTransformMakeTranslation(CGFloat(tx6), CGFloat(ty6))
        welcomeImage6.transform = CGAffineTransformScale(welcomeImage6.transform, CGFloat(scale6), CGFloat(scale6))
        welcomeImage6.transform = CGAffineTransformRotate(welcomeImage6.transform, CGFloat(Double(rotation6) * M_PI / 180))
        
        
        println("content offset: \(scrollView.contentOffset.y)")
    }

    
    
    func convertValue(value: Float, r1Min: Float, r1Max: Float, r2Min:
        Float, r2Max: Float) -> Float {
            var ratio = (r2Max - r2Min) / (r1Max - r1Min)
            return value * ratio + r2Min - r1Min * ratio
    }
}
