//
//  ExperiencesView.swift
//  PortfolioApp
//
//  Created by Namrata Akash on 19/08/21.
//

import SwiftUI

struct ExperiencesView: View {
    
    //MARK : Variables
    var experiences : [Experience]
    @State var showexperiences = false
    //MARK : view
    var body: some View {
        VStack(alignment: .leading, spacing : 24){
            HStack(spacing: 16) {
              Text("Experience")
                .font(Montserrat.bold.font(size: 21))
                .opacity(0.9)
                
                Button {
                    withAnimation(.easeInOut(duration: 0.35)) {
                        showexperiences.toggle()
                    }
                } label: {
                    Image(systemName: "chevron.up")
                        .font(.system(size: 18, weight: .medium))
                        .rotationEffect(self.showexperiences ? .zero : .degrees(180))
                }.buttonStyle(PlainButtonStyle())
            }.padding(.bottom, 14)
            
            
            if (showexperiences) {
                
               
    ForEach (experiences) { experience in
                    ExperienceView(experience: experience)
                        
                        
                        
                }
             }
            
        }
    }
}

struct ExperiencesView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader {proxy in
            ExperiencesView(experiences: AppModel().portfolio.Experiences)
                .padding(24)
        }
        
    }
}
