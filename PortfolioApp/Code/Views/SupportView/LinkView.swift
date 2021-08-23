//
//  LinkView.swift
//  PortfolioApp
//
//  Created by Namrata Akash on 23/08/21.
//

import SwiftUI

struct LinkView: View {
    var Link : link
    var width : CGFloat = 120
    var body: some View {
        VStack {
            
            SwiftUI.Link(destination: URL(string: Link.link)!) {
                Image(systemName: "link.circle.fill")
                    .font(.system(size: 35, weight: .medium))
                    .opacity(0.8)
            }
        
                
            Text(Link.linkname)
            .font(Montserrat.semibold.font(size: 13.5))
            .padding(.top,10)
        }.padding()
        
        .frame(width: width,height: 109.7)
        .background(
        RoundedRectangle(cornerRadius: 12)
            .opacity(0.075)
        )
    }
}

struct LinkView_Previews: PreviewProvider {
    static var previews: some View {
        LinkView(Link: AppModel().portfolio.links[0])
    }
}
