//
//  AppModel.swift
//  PortfolioApp
//
//  Created by Namrata Akash on 11/08/21.
//

import Foundation


class AppModel : ObservableObject {

    var portfolio : Portfolio = Portfolio(name: "Namrata Adhvaryu", location: "Montreal, QC", description: "Immensely passionate about iOS Mobile Application Development and Techno-geek.", role: "iOS Developer", Educations: [Edducation(id: UUID().uuidString, Collagename: "Gandhinagar Institute of Technology", duration: "May 2009 - May 2013", Field: "Bachelor of Engineering (I.T)")], Skills: [
        Skill(id: UUID().uuidString, skillname: "iOS", image: "iphone"),
        Skill(id: UUID().uuidString, skillname: "Swift", image: "swift"),
        Skill(id: UUID().uuidString, skillname: "UI/UX", image: "applewatch"),
        Skill(id: UUID().uuidString, skillname: "SwiftUI", image: "hand.tap.fill")
    ], Experiences: [
        Experience(id: UUID().uuidString, companyname: "Sassy Info Tech", duration:"Jan 2019 - Jan 2021" , role: "iOS Developer"),
        Experience(id: UUID().uuidString, companyname: "Wootech", duration:"Jan 2016 - Aug 2018", role: ".net Developer"),
        Experience(id: UUID().uuidString, companyname: "Government Engineering Collage", duration: "April 2014 - Dec 2015", role: "Visiting Lecturer(CPU)")
    ], links: [link(id: UUID().uuidString, linkname: "GitHub", link: "https://github.com/NamrataAdhvaryu"),link(id: UUID().uuidString, linkname: "Portfolio", link: "https://namrataadhvaryu05.wixsite.com/my-portfolio"),link(id: UUID().uuidString, linkname: "LinkedIn", link: "https://www.linkedin.com/in/namrata-adhvaryu-a788bb1a8/")])
    
    
}
