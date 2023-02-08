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
    
    var count = 0
    var courses = ""
    //3 switches to select the courses
//    @IBOutlet weak var iOSSWCH: UISwitch!
//    @IBOutlet weak var bigDataSWCH: UISwitch!
//    @IBOutlet weak var patternsSWCH: UISwitch!
    
    @IBOutlet var courseSWCH: [UISwitch]!
    
    @IBAction func toggleiOS(_ sender: UISwitch) {
        if(sender.isOn == true){
            self.count += 1;
            self.courses += ""
            self.courses += "iOS."
        }
    }
    
    @IBAction func togglePatterns(_ sender: UISwitch){
        if(sender.isOn == true){
            self.count += 1;
            if self.count == 2{
                self.courses += ", patterns"
            }else{
                self.courses += "Patterns."
            }
                
        }
        
    }
    
    @IBAction func toggleBigData(_ sender: UISwitch) {
        if(sender.isOn == true){
            self.count += 1;
            if self.count == 2{
                self.courses += ", BigData"
            }else{
                self.courses += "BigData."
            }
                
        }
    }
    
    
    
    @IBAction func onSubmit(_ sender: UIButton) {
//        self.messageLBL.text = ""
        
        var firstName = self.firstNameTF.text!
        var lastName = self.lastNameTF.text!
        if(firstName == "" || lastName == ""){
            self.messageLBL.text = "Please enter your full name."
        }
        else if ( self.firstNameTF.text != "" && self.lastNameTF.text != "" && count > 0){
            
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
        self.courses = ""
        self.count = 0
        for  course in courseSWCH{
            course.isOn = false
        }
    }
    
}

