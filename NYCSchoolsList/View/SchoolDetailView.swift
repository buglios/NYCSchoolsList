//
//  SchoolDetailView.swift
//  NYCSchoolsList
//
//  Created by Admin on 7/24/22.
//

import SwiftUI

struct SchoolDetailView: View {
    
    var school: NYCSchoolModel
    let schoolSAT: NYCSATScoreModel?
    
    var body: some View {
        VStack{
            if let schoolSAT = schoolSAT {
                VStack{
                    HStack(alignment: .top){
                        Text("School Name: ").bold()
                        Text(school.name)
                        Spacer()
                    }
                    HStack(alignment: .top){
                        Text("Number of SAT Test takers: ").bold()
                        Text(schoolSAT.numOfSAT)
                        Spacer()
                    }
                    HStack(alignment: .top){
                        Text("Reading Avg Score: ").bold()
                        Text(schoolSAT.readingAvgScore)
                        Spacer()
                    }
                    HStack(alignment: .top){
                        Text("Math Avg Score: ").bold()
                        Text(schoolSAT.mathAvgScore)
                        Spacer()
                    }
                    HStack(alignment: .top){
                        Text("Writing Avg Score: ").bold()
                        Text(schoolSAT.writingAvgScore)
                        Spacer()
                    }
                    // webview
                    // webview is slow, it need 1-3 sec to show
                    if let url = URL(string:"https://" + school.website){
                        WebView.init(url: url).background(.blue)
                    }
                    Spacer()
                }
            }else{
                HStack(alignment: .center){
                    Text("Oops, Sorry, SAT Infomation for this school is currently unavailable!").foregroundColor(.red)
                }
            }

        }.navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .principal){
                    Text(school.name).bold().multilineTextAlignment(.center)
                }
            }
    }
}
