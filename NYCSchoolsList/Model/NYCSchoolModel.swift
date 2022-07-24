//
//  NYCSchoolModel.swift
//  NYCSchoolsList
//
//  Created by Admin on 7/24/22.
//

import Foundation

struct NYCSchoolModel: Identifiable, Codable {
    var id:String
    var name:String
    var overview:String
    var location:String
    var phone:String
    var email:String?
    var website:String
    
    
    enum CodingKeys:String,CodingKey{
        case id = "dbn"
        case name = "school_name"
        case overview = "overview_paragraph"
        case phone = "phone_number"
        case email = "school_email"
        case website, location
    }
}
