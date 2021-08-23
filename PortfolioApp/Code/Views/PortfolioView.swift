//
//  ContentView.swift
//  PortfolioApp
//
//  Created by Namrata Akash on 11/08/21.
//

import SwiftUI

struct PortfolioView: View {
    
    //MARK : Variables
    
    var appmodel : AppModel = AppModel()
    var body: some View {
        ZStack {
            Color(UIColor.systemBackground)
                .ignoresSafeArea()
            ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false) {
                VStack(alignment: .leading){
                   HeaderView(appmodel: appmodel)
                    SkillsView(skills: appmodel.portfolio.Skills, width: UIScreen.main.bounds.width - 48)
                        .padding(.top, 32)
                    ExperiencesView(experiences: appmodel.portfolio.Experiences)
                        .padding(.top, 42)
                    Education(education: appmodel.portfolio.Educations)
                        .padding(.top , 42)
                    LinksView(links: appmodel.portfolio.links, width: UIScreen.main.bounds.width - 48)
                        .padding(.top, 32)
                        
                }.padding(24)
                
            }
        }
    
    }
}

struct PortfolioView_Previews: PreviewProvider {
    static var previews: some View {
        PortfolioView()
            .colorScheme(.dark)
        
    }
}
