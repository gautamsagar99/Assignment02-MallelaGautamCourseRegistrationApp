//
//  ViewController.swift
//  MallelaGautamCourseRegistrationApp
//
//  Created by Mallela,Gautam Sagar on 2/5/23.
//

import UIKit

class CourseRegistrationVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.messageLBL.text = ""
    }
    //text label to show to user
    @IBOutlet weak var messageLBL: UILabel!
    
    //two feilds to take user first name and last name
    
    
    @IBOutlet weak var firstNameTF: UITextField!
    
   
    @IBOutlet weak var lastNameTF: UITextField!
    
    //3 switches to select the courses
    @IBOutlet weak var iOSSWCH: UISwitch!
    @IBOutlet weak var courseSWCH: UISwitch!
    @IBOutlet weak var patternsSWCH: UISwitch!
    
    @IBAction func toggleiOS(_ sender: UISwitch) {
    }
    
    @IBAction func togglePatterns(_ sender: UISwitch){
    }
    
    @IBAction func toggleBigData(_ sender: UISwitch) {
    }
    
    
    
    @IBAction func onSubmit(_ sender: UIButton) {
        var firstName = self.firstNameTF.text!
        var lastName = self.lastNameTF.text!
        var courses = ""
        var count = 0
        if(firstName == "" || lastName == ""){
            self.messageLBL.text = "Please enter your full name."
        }
        else if ((self.iOSSWCH.isOn == true || self.patternsSWCH.isOn == true  || self.courseSWCH.isOn == true) && (self.firstNameTF.text != "" && self.lastNameTF.text != "") ){
            
            if(self.iOSSWCH.isOn == true ){
                count += 1
                courses += "iOS, "
            }
            if(self.patternsSWCH.isOn == true ){
                count += 1
                courses += "patterns, "
            }
            if(self.courseSWCH.isOn == true ){
                count += 1
                courses += "bigdata."
            }
            
            self.messageLBL.text = "CONFIRMATION\n \(firstName), \(lastName) has successfully enrolled in \(count) course(s), namely, \(courses)"
            
        }
        else{
            self.messageLBL.text = "Hi  \(firstName), \(lastName) please  select the courses of your choice."
        }
    }
    
    
    @IBAction func onReset(_ sender: UIButton) {
        self.firstNameTF.text = ""
        self.lastNameTF.text = ""
        self.messageLBL.text = ""
        self.iOSSWCH.isOn = false
        self.patternsSWCH.isOn = false
        self.courseSWCH.isOn = false
        
        
    }
    
}

