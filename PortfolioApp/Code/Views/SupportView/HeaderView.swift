//
//  HeaderView.swift
//  PortfolioApp
//
//  Created by Namrata Akash on 11/08/21.
//

import SwiftUI

struct HeaderView: View {
    
    var appmodel : AppModel
    var body: some View {
        VStack{
            HStack {
                Spacer()
                Image("self")
                .resizable()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                .cornerRadius(100)
                .padding(5)
                .background(
                    Circle()
                        .opacity(0.7)
                        .shadow(radius: 5)
            )
                Spacer()
            }
            Text(appmodel.portfolio.name)
                .font(Montserrat.bold.font(size: 17))
                .padding(.top, 8)
            
            Text(appmodel.portfolio.role)
                .font(Montserrat.mediumItalic.font(size: 18))
                .opacity(0.85)
                .padding(.top, -2)
            
            HStack{
                Image(systemName: "location.fill")
                    .font(.system(size: 18, weight: .semibold))
                Text(appmodel.portfolio.location)
                    .font(Montserrat.medium.font(size: 17))
                
                    
            }
            .padding(.top,10)
            .opacity(0.45)
            
            Text(appmodel.portfolio.description)
                .font(Montserrat.italic.font(size: 16))
                .opacity(0.7)
                .padding(.top,24)
                .lineSpacing(12)
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(appmodel: AppModel())
            .padding(24)
    }
}
