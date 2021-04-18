//
//  ContentView.swift
//  CastomTabView
//
//  Created by まえけん on 2021/04/18.
//  Copyright © 2021 maeken. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var selected = 0
    
    var body: some View {
        VStack {
            weekTabView(selected: $selected)
            
            Spacer()
            
            if selected == 0 {
                Text("Monday")
            } else if selected == 1 {
                Text("Tuesday")
            } else if selected == 2 {
                Text("Wednesday")
            } else if selected == 3 {
                Text("Thursday")
            } else if selected == 4 {
                Text("Friday")
            } else if selected == 5 {
                Text("Suresday")
            } else if selected == 6 {
                Text("Sunday")
            }
            
            Spacer()
        }
        
    }
}
struct weekTabView: View {
    @Binding var selected: Int

    var body: some View {
        VStack(alignment: .center, spacing: 40) {
            HStack {
                weekTabButtonView(selectedRow: 0,weekButtonLable: "月",selected: $selected)
                weekTabButtonView(selectedRow: 1,weekButtonLable: "火",selected: $selected)
                weekTabButtonView(selectedRow: 2,weekButtonLable: "水",selected: $selected)
                weekTabButtonView(selectedRow: 3,weekButtonLable: "木",selected: $selected)
                weekTabButtonView(selectedRow: 4,weekButtonLable: "金",selected: $selected)
                weekTabButtonView(selectedRow: 5,weekButtonLable: "土",selected: $selected)
                weekTabButtonView(selectedRow: 6,weekButtonLable: "日",selected: $selected)
            }
            .frame(height: 40)
        }
    }
}
struct weekTabButtonView: View{
    
    var selectedRow: Int
    
    @State var weekButtonLable: String
    @Binding var selected: Int
    
    var body: some View {
        HStack(alignment: .center) {
            Button(action: {
                self.selected = self.selectedRow
            }) {
                Text(weekButtonLable)
                    .fontWeight(.semibold)
                    .foregroundColor(self.selected == selectedRow ? .black: Color.gray.opacity(0.5))
            }
            .frame(width:UIScreen.main.bounds.width / 8,
                   height: 40)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
