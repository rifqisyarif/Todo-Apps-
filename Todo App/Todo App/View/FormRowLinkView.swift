//
//  FormRowLinkView.swift
//  Todo App
//
//  Created by Reefkey on 24/02/21.
//

import SwiftUI

struct FormRowLinkView: View {
        //mark: Properties
        
        var icon: String
        var color: Color
        var text: String
        var link: String
        
        //mark: body
        var body: some View {
        HStack {
            ZStack {
                RoundedRectangle(cornerRadius: 8, style:.continuous)
                Image(systemName: icon)
                    .foregroundColor(Color.white)
            }//: ZStack
            .frame(width: 36, height: 36, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            Text(text)
                .foregroundColor(Color.gray)
                Spacer()
            Button(action: {
                //buka link
                guard let url = URL(string: self.link),
                      UIApplication.shared.canOpenURL(url) else{
                    return
                }
                UIApplication.shared.canOpenURL(url as URL)
            }) {
                Image(systemName: "chevron.right")
                    .font(.system(size: 14, weight: .semibold, design: .rounded))
            }//: Button buka link
            .accentColor(Color(.systemGray2))
        }//: HStack
    }
}

struct FormRowLinkView_Previews: PreviewProvider {
    static var previews: some View {
        FormRowLinkView(icon: "globe",color: Color.pink, text:"Facebook", link: "")
    }
}

