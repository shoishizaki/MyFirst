//
//  ContentView.swift
//  MyFirst
//
//  Created by 石崎將 on 2021/09/10.
//

import SwiftUI

struct ContentView: View {
    
    @State var outputText = "Hello World"
    
    var body: some View {
        
        VStack {
            Text(outputText)
                .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                .foregroundColor(Color.red)
                .padding()

            Button(action: {
                if outputText == "Hello World" {
                    outputText = "Hello, Swift!"
                } else if outputText == "Hello, Swift!" { outputText = "Hello World" }
                
                print("デバックテスト")
                print(outputText)
            }) {
                /*@START_MENU_TOKEN@*/Text("切り替えボタン")
                    .foregroundColor(Color.white)
                    .padding(.all)
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.blue/*@END_MENU_TOKEN@*/)/*@END_MENU_TOKEN@*/
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
