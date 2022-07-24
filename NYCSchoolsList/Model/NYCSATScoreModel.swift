//
//  NYCSATScoreModel.swift
//  NYCSchoolsList
//
//  Created by Admin on 7/24/22.
//

import Foundation

struct NYCSATScoreModel:Decodable{
    var id:String
    var name:String
    var numOfSAT:String
    var readingAvgScore:String
    var mathAvgScore:String
    var writingAvgScore:String
    
    enum CodingKeys:String,CodingKey{
        case id = "dbn"
        case name = "school_name"
        case numOfSAT = "num_of_sat_test_takers"
        case readingAvgScore = "sat_critical_reading_avg_score"
        case mathAvgScore = "sat_math_avg_score"
        case writingAvgScore = "sat_writing_avg_score"
    }
}
