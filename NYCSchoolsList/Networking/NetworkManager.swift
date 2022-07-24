//
//  NetworkManager.swift
//  NYCSchoolsList
//
//  Created by Admin on 7/24/22.
//

import Foundation

final class NetworkManager {
    
    // Note: This is the direct URL for JSON.
    // If no API, we should try to parse HTML data.
    static private let strListSchoolURL="https://data.cityofnewyork.us/api/id/s3k6-pzi2.json?$query=select%20*%2C%20%3Aid%20limit%20100"

    // Note: This is the direct URL for JSON
    static private let strSATSchoolURL =  "https://data.cityofnewyork.us/api/id/f9bf-2cp4.json?$select=`dbn`,`school_name`,`num_of_sat_test_takers`,`sat_critical_reading_avg_score`,`sat_math_avg_score`,`sat_writing_avg_score`&$order=`:id`+ASC&$limit=478&$offset=0"
    
    static public func downloadListSchoolData() throws -> Data {
        guard let url = URL(string:strListSchoolURL)
        else{ throw NetworkError.badURL }
        return try Data(contentsOf: url)
    }
    
    static public func downloadSATSchoolData() throws -> Data {
        guard let url = URL(string: strSATSchoolURL.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!)
        else{throw NetworkError.badURL}
        return try Data(contentsOf: url)
    }
}
