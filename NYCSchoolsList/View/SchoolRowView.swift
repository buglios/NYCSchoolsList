//
//  SchoolRowView.swift
//  NYCSchoolsList
//
//  Created by Admin on 7/24/22.
//

import SwiftUI

struct SchoolRowView: View {
    
    var school: NYCSchoolModel
    
    var body: some View {
        VStack{
            HStack{
                Text("Name: ").bold()
                Text(school.name).font(.title3).lineLimit(1)
                Spacer()
            }
            HStack{
                VStack{
                    Text("Addr: ").bold()
                    Spacer()
                }
                Text("\(school.location)")
                Spacer()
            }
            HStack{
                Text("Tel: ").bold()
                Text(school.phone)
                Spacer()
            }
            Spacer()
        }
    }
}
