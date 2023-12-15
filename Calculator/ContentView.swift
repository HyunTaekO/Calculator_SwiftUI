//
//  ContentView.swift
//  Calculator
//
//  Created by 오현택 on 12/16/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var answerNumber: String = "0"
    private let buttonData = [["C", "/", "%", "$"],
                              ["7", "8", "9", "X"],
                              ["4", "5", "6", "-"],
                              ["1", "2", "3", "+"],
                              ["0", "0", ".", "="]]
                                                    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack {
                Spacer()
                HStack{
                    Spacer()
                    Text(answerNumber)
                        .padding()
                        .font(.system(size: 73))
                        .foregroundColor(.white)
                }
                ForEach(buttonData, id: \.self) { line in
                    HStack {
                        ForEach(line, id: \.self) { item in
                            Button(action: {
                                if answerNumber == "0" {
                                    answerNumber = item
                                }else {
                                    answerNumber += item
                                }
                            }, label: {
                                Text(item)
                                    .frame(width: 80,
                                           height: 80)
                                    .background(Color("NumberButton"))
                                    .clipShape(.circle)
                                    .foregroundColor(.white)
                                    .font(.system(size: 33))
                            })
                        }
                    }
                }
                
                
            }
        }
       
    }
}

#Preview {
    ContentView()
}
