//
//  EmptyListView.swift
//  Todo App
//
//  Created by Reefkey on 19/02/21.
//

import SwiftUI

struct EmptyListView: View {
    
    //MARK PROPERTIES
    
    let image: [String] = [
    "illustration-no1",
    "illustration-no2",
    "illustration-no3"
    ]
    
    let tips: [String] = [
        "Gunakan waktumu dengan baik",
        "Lambat dan mantap memenangkan perlombaan",
        "Tetap ada untuk mu",
        "Setiap malam jadwal untuk besok"
    ]
    var body: some View {
        ZStack{
            VStack{
                Image("\(image.randomElement() ?? self.image[0])")
                    .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                    .resizable()
                    .scaledToFit()
                    .frame(minWidth: 256, idealWidth: 280, maxWidth: 360, minHeight: 256, idealHeight: 280, maxHeight: 360, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .layoutPriority(1)
                
                Text("\(tips.randomElement() ?? self.tips[0])")
                    .layoutPriority(0.5)
                    .font(.system(.headline,design:.rounded))
            }//: Vstack
        }//: Zstack
        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        .background(Color("ColorBase"))
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct EmptyListView_Previews: PreviewProvider {
    static var previews: some View {
        EmptyListView()
    }
}
