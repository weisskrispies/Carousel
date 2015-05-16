//
//  TermsViewController.swift
//  Carousel
//
//  Created by Patrick Weiss on 5/15/15.
//  Copyright (c) 2015 Patrick Weiss. All rights reserved.
//

import UIKit

class TermsViewController: UIViewController {

    @IBOutlet weak var closeTerms: UIButton!
    @IBOutlet weak var termsWebView: UIWebView!

    override func viewDidLoad() {
        super.viewDidLoad()

        var url = NSURL(string: "https://www.dropbox.com/terms?mobile=1")
        var request = NSURLRequest(URL: url!)
        
        termsWebView.loadRequest(request)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func didPressDismiss(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    
    }
    
}
