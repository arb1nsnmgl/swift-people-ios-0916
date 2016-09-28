//
//  Person.swift
//  swift-people
//
//  Created by Arvin San Miguel on 9/28/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Person {
    
    let name: String
    var ageInYears: Int?
    var skills = Set<String>()
    var qualifiedTutor: Bool { return skills.count >= 4 }
    
    init(){
        name = "John Doe"
        ageInYears = nil
    }
    
    init(name: String, ageInYears: Int?) {
        self.name = name
        self.ageInYears = ageInYears
    }
    
    convenience init(name: String) {
        self.init(name: name, ageInYears: nil)
    }
    
    func celebrateBirthday() -> String {
        
        if let ageInYears = ageInYears {
            self.ageInYears = ageInYears + 1
            return "HAPPY \(self.ageInYears!)\(self.ageInYears!.ordinal().uppercased()) BIRTHDAY, \(name.uppercased())!!!"
        } else {
            return "HAPPY BIRTHDAY, \(name.uppercased())!!!"
        }
       
    }
    
    func learnSkillBash() { skills.insert("bash") }
    func learnSkillXcode() { skills.insert("Xcode") }
    func learnSkillObjectiveC() {skills.insert("Objective-C") }
    func learnSkillSwift() { skills.insert("Swift") }
    func learnSkillInterfaceBuilder() { skills.insert("Interface Builder") }
    
}

