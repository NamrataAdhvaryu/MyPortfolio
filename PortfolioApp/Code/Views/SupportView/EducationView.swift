//
//  EducationView.swift
//  PortfolioApp
//
//  Created by Namrata Akash on 23/08/21.
//

import SwiftUI

struct EducationView: View {
    
    //MARK : Variables
    var education : Edducation
    
    // MARK : View
    var body: some View {
        VStack(alignment: .leading) {
         Circle()
            .frame(width: 10, height: 10)
            .opacity(0.65)
            
            HStack{
             RoundedRectangle(cornerRadius: 8)
                .frame(width: 3)
                .padding(.leading, 3)
                
                VStack(alignment: .leading) {
                    
                    Text(education.Field)
                        .font(Montserrat.semibold.font(size: 18.5))
                    
                    Text(education.Collagename)
                        .font(Montserrat.medium.font(size: 16.5))
                        .opacity(0.75)
                        .padding(.top, 4)
                    
                    Text(education.duration)
                        .font(Montserrat.mediumItalic.font(size: 16))
                        .opacity(0.46)
                        .padding(.top, 14)
                    
                }.padding(.leading,16)
                
            }.padding(.top,8)
            
        }.fixedSize()
    }
}

struct EducationView_Previews: PreviewProvider {
    static var previews: some View {
        EducationView(education: AppModel().portfolio.Educations[0])
    }
}
