//
//  Education.swift
//  PortfolioApp
//
//  Created by Namrata Akash on 23/08/21.
//

import SwiftUI

struct Education: View {
    
    //MARK : Variables
    var education : [Edducation]
    @State var showeducation = false
    var body: some View {
        VStack(alignment: .leading, spacing : 24){
            HStack(spacing: 16) {
              Text("Education")
                .font(Montserrat.bold.font(size: 21))
                .opacity(0.9)
                
                Button {
                    withAnimation(.easeInOut(duration: 0.35)) {
                        showeducation.toggle()
                    }
                } label: {
                    Image(systemName: "chevron.up")
                        .font(.system(size: 18, weight: .medium))
                        .rotationEffect(self.showeducation ? .zero : .degrees(180))
                }.buttonStyle(PlainButtonStyle())
            }.padding(.bottom, 14)
            
            
            if (showeducation) {
                
               
    ForEach (education) { edu  in
            
            EducationView(education: edu )
                        
                        
                }
             }
            
        }
    }
}

struct Education_Previews: PreviewProvider {
    static var previews: some View {
        Education(education: AppModel().portfolio.Educations)
    }
}
