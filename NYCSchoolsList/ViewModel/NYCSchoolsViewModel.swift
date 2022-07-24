//
//  NYCSchoolsViewModel.swift
//  NYCSchoolsList
//
//  Created by Admin on 7/24/22.
//

import SwiftUI
import Foundation

class NYCSchoolsListViewModel: ObservableObject {
    @Published var schools = [NYCSchoolModel]()
    @Published var sats = [NYCSATScoreModel]()
    
    convenience init(){
        var data = Data()
        do {
            data = try NetworkManager.downloadListSchoolData()
        }catch {
            print(NetworkError.badData)
        }
        self.init(data:data)
        do {
            let data = try NetworkManager.downloadSATSchoolData()
            self.loadSATData(data: data)
        }catch {
            print(NetworkError.badData)
        }
        
    }
    
    init(data:Data){
        do{
            self.schools = try JSONDecoder().decode([NYCSchoolModel].self, from: data)
        }catch(let errorMessage){
            print(NetworkError.decodeError(errorMessage.localizedDescription))
        }
    }
    
    func loadSATData(data:Data){
        do{
            self.sats = try JSONDecoder().decode([NYCSATScoreModel].self, from: data)
        }catch(let errorMessage){
            print(NetworkError.decodeError(errorMessage.localizedDescription))
        }
    }
    func getSchoolSAT(id:String)-> NYCSATScoreModel? {
        return self.sats.filter{$0.id == id}.first
    }
}

