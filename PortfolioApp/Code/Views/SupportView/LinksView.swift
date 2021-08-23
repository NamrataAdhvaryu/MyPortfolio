//
//  LinksView.swift
//  PortfolioApp
//
//  Created by Namrata Akash on 23/08/21.
//

import SwiftUI

struct LinksView: View {
    
    // MARK : Variables
    var links : [link]
    var width : CGFloat
    
    
    @State var showlinks = true
    var body: some View {
        VStack(alignment: .leading){
            HStack(spacing: 16) {
              Text("Links")
                .font(Montserrat.bold.font(size: 21))
                .opacity(0.9)
                
                Button {
                    withAnimation(.easeInOut(duration: 0.35)) {
                        showlinks.toggle()
                    }
                } label: {
                    Image(systemName: "chevron.up")
                        .font(.system(size: 18, weight: .medium))
                        .rotationEffect(self.showlinks ? .zero : .degrees(180))
                }.buttonStyle(PlainButtonStyle())
            }
            
            
            if (showlinks) {
                
                LazyVGrid(columns: [GridItem(),GridItem(),GridItem()], alignment: .leading, spacing: 12) {
                    ForEach (links) { linkk in
                        
                        LinkView(Link: linkk,width: width / 3 - 15)
                        
                        
                        
                    }
                }.padding(.top, 38)
            }
            
        }
    }
}

struct LinksView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { proxy in
            LinksView(links: AppModel().portfolio.links,width: 360)
                .padding(24)
        }
    }
}
