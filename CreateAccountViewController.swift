//
//  CreateAccountViewController.swift
//  Carousel
//
//  Created by Patrick Weiss on 5/15/15.
//  Copyright (c) 2015 Patrick Weiss. All rights reserved.
//

import UIKit

class CreateAccountViewController: UIViewController {

    @IBOutlet weak var formView: UIView!
    @IBOutlet weak var buttonView: UIView!
    @IBOutlet weak var createButton: UIButton!
    @IBOutlet weak var termsButton: UIButton!
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var backButtonView: UIButton!
    @IBOutlet weak var checkBoxButtonView: UIButton!
    
    var formInputOffset:CGFloat = -40
    var formOriginalPosition:CGFloat!
    
    var buttonInputOffset:CGFloat = 255
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

    @IBAction func onCheckBoxButton(sender: AnyObject) {
        if !checkBoxButtonView.selected {
            checkBoxButtonView.selected = true
        } else {
            checkBoxButtonView.selected = false
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onPressBackButton(sender: AnyObject) {
        navigationController?.popViewControllerAnimated(true)
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
        animateFormDown()
        animateButtonDown()
    }
}
