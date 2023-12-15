//
//  ContentView.swift
//  Calculator
//
//  Created by 오현택 on 12/16/23.
//

import SwiftUI

enum ButtonType {
    case one, two, three, four, five, six, seven, eight, nine, zero
    case clear, not, modular, division, multiplivation, minus, plus, equal, point
    
    var displayName: String {
        switch self {
        case .one:
            return "1"
        case .two:
            return "2"
        case .three:
            return "3"
        case .four:
            return "4"
        case .five:
            return "5"
        case .six:
            return "6"
        case .seven:
            return "7"
        case .eight:
            return "8"
        case .nine:
            return "9"
        case .zero:
            return "0"
        case .clear:
            return "C"
        case .not:
            return "+/-"
        case .modular:
            return "%"
        case .division:
            return "÷"
        case .multiplivation:
            return "×"
        case .minus:
            return "−"
        case .plus:
            return "+"
        case .equal:
            return "="
        case .point:
            return "."
        }
    }
    var backgroundColor: Color {
        switch self {
        case .one, .two, .three, .four, .five, .six, .seven, .eight, .nine, .zero, .point:
            return .numberButton
        case .clear, .not, .modular:
            return .gray
        default:
            return .orange
        }
    }
    var foregroundColor: Color {
        switch self {
        case .clear, .not, .modular:
            return .black
        default:
            return .white
        }
    }
}

struct ContentView: View {
    
    @State private var answerNumber: String = "0"
    private let buttonData: [[ButtonType]] = [[.clear, .not, .modular, .division],
                                              [.seven, .eight, .nine, .multiplivation],
                                              [.four, .five, .six, .minus],
                                              [.one, .two, .three, .plus],
                                              [.zero, .zero, .point, .equal]]
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
                                    answerNumber = item.displayName
                                }else {
                                    answerNumber += item.displayName
                                }
                            }, label: {
                                Text(item.displayName)
                                    .frame(width: 80,
                                           height: 80)
                                    .background(item.backgroundColor)
                                    .clipShape(.circle)
                                    .foregroundColor(item.foregroundColor)
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
