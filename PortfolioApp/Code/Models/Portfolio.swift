//
//  Portfolio.swift
//  PortfolioApp
//
//  Created by Namrata Akash on 11/08/21.
//

import Foundation


struct Skill :Identifiable {
    var id: String
    let skillname : String
    let image: String
    
}

struct Experience : Identifiable {
    var id : String
    let companyname: String
    let duration : String
    let role: String
}


struct Edducation : Identifiable {
    var id : String
    let Collagename: String
    let duration : String
    let Field: String
}

struct link : Identifiable {
    var id : String
    let linkname: String
    let link : String
  
}


struct Portfolio {
    let name: String
    let location:String
    let description: String
    let role: String
    let Educations : [Edducation]
    let Skills : [Skill]
    let Experiences : [Experience]
    let links : [link]
}
