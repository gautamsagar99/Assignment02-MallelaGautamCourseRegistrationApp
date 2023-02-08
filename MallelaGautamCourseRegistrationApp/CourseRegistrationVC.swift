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
        for i in courseSWCH
        {
            i.isOn = false
        }
    }
    //text label to show to user
    @IBOutlet weak var messageLBL: UILabel!
    
    //two feilds to take user first name and last name
    @IBOutlet weak var firstNameTF: UITextField!
    @IBOutlet weak var lastNameTF: UITextField!
    
    var count = 0
    var courses = ""
    
    @IBOutlet var courseSWCH: [UISwitch]!
    
    
    @IBAction func toggleCourse(_ sender: UISwitch) {
        count = 0
        courses = ""
            if courseSWCH[0].isOn == true{
                courses += " iOS,"
                count += 1
            }
            if courseSWCH[1].isOn == true{
                courses += " Patterns,"
                count += 1
            }
            if courseSWCH[2].isOn == true {
                courses += " BigData,"
                count += 1
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
            courses.remove(at: courses.index(before: courses.endIndex))
            courses += "."
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

