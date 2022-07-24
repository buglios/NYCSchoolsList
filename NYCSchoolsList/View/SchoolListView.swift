//
//  SchoolListView.swift
//  NYCSchoolsList
//
//  Created by Admin on 7/24/22.
//

import SwiftUI

struct SchoolListView: View {
    @ObservedObject var schoolVM = NYCSchoolsListViewModel()
    var body: some View {
        NavigationView{
            List{
                HStack{
                    Spacer()
                Text("NYC High Schools").bold().font(.title2)
                    Spacer()
                }
                ForEach(schoolVM.schools){ school in
                    NavigationLink(destination: SchoolDetailView(school:school,schoolSAT:schoolVM.getSchoolSAT(id:school.id))){ SchoolRowView(school: school)}
                }
            }.navigationBarTitle("")
                .navigationBarHidden(true)
            
        }
    }
}

struct SchoolListView_Previews: PreviewProvider {
    static var previews: some View {
        SchoolListView()
    }
}
