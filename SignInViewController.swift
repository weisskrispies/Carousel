//
//  signInViewController.swift
//  Carousel
//
//  Created by Patrick Weiss on 5/12/15.
//  Copyright (c) 2015 Patrick Weiss. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {

    @IBOutlet weak var formImageView: UIImageView!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var descriptionImageView: UIImageView!
    @IBOutlet weak var signInImageView: UIImageView!
    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var formView: UIView!
    @IBOutlet weak var buttonView: UIView!
    
    
    var formInputOffset:CGFloat = -35
    var formOriginalPosition:CGFloat!
    
    var buttonInputOffset:CGFloat = 210
    var buttonOriginalPosition:CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        formOriginalPosition = formView.frame.origin.y
        buttonOriginalPosition = buttonView.frame.origin.y
    }

    @IBAction func onEmailEdit(sender: AnyObject) {
        animateFormUp()
        animateButtonUP()
    }

    @IBAction func onPasswordEdit(sender: AnyObject) {
        animateFormUp()
        animateButtonUP()
    }
    
    func animateFormUp() {
        UIView.animateWithDuration(0.3, delay: 0, options: UIViewAnimationOptions.CurveEaseInOut, animations: { () -> Void in
            self.formView.frame.origin.y = self.formInputOffset
            }) { (finished:Bool) -> Void in
        }
      
    }

    func animateButtonUP () {
        UIView.animateWithDuration(0.3, delay: 0, options: UIViewAnimationOptions.CurveEaseInOut, animations: { () -> Void in
            self.buttonView.frame.origin.y = self.buttonInputOffset
            }) { (finished:Bool) -> Void in
        }
    }
    
    func animateFormDown () {
        UIView.animateWithDuration(0.3, delay: 0, options: UIViewAnimationOptions.CurveEaseInOut, animations: { () -> Void in
            self.formView.frame.origin.y = self.formOriginalPosition
            }) { (finsihed:Bool) -> Void in
                
        }
    }
    
    func animateButtonDown() {
        UIView.animateWithDuration(0.3, delay: 0, options: UIViewAnimationOptions.CurveEaseInOut, animations: { () -> Void in
            self.buttonView.frame.origin.y = self.buttonOriginalPosition
            }) { (finished:Bool) -> Void in
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didPressSignInButton(sender: AnyObject) {
    
        var alert = UIAlertView(title: "Signing in...", message: nil, delegate: nil, cancelButtonTitle: nil)
        
        view.endEditing(true)

        if emailField.text.isEmpty || passwordField.text.isEmpty {
            var alertView = UIAlertView(title: "Oops!", message: "Dude, enter some more deets", delegate: nil, cancelButtonTitle: "Got it")
            alertView.show()
        } else {
            alert.show()
            delay(2, { () -> () in
                alert.dismissWithClickedButtonIndex(0, animated: true)
                if self.emailField.text == "patrick@bluemangroup.com" && self.passwordField.text == "drumbeat" {
                
                    self.performSegueWithIdentifier("signInSegue", sender: nil)
                        
                } else {
                var alertView = UIAlertView(title: "Oops!", message: "Incorrect name or pasword", delegate: nil, cancelButtonTitle: "Got it")
                    alertView.show()
                }
            })
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func didPressBackButton(sender: AnyObject) {
        navigationController?.popViewControllerAnimated(true)
    }
    
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
        animateFormDown()
        animateButtonDown()
    }

    
}
