//
//  ContentView.swift
//  Calculator
//
//  Created by 오현택 on 12/16/23.
//

import SwiftUI

enum ButtonType {
    case one, two, three, four, five, six, seven, eight, nine, zero
    case clear, not, percent, division, multiplivation, minus, plus, equal, point, none
    
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
        case .percent:
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
        default:
            return ""
        }
    }
    var backgroundColor: Color {
        switch self {
        case .one, .two, .three, .four, .five, .six, .seven, .eight, .nine, .zero, .point:
            return .numberButton
        case .clear, .not, .percent:
            return .gray
        default:
            return .orange
        }
    }
    var foregroundColor: Color {
        switch self {
        case .clear, .not, .percent:
            return .black
        default:
            return .white
        }
    }
    var isNumber: Bool {
        if let _ = Int(self.displayName) {
            return true
        }
        return false
    }
    var isSingle: Bool {
        switch self {
        case .not, .percent, .point, .none:
            return true
        default:
            return false
        }
    }
}

struct ContentView: View {
    
    @State private var answerNumber: String = "0"
    private let buttonData: [[ButtonType]] = [[.clear, .not, .percent, .division],
                                              [.seven, .eight, .nine, .multiplivation],
                                              [.four, .five, .six, .minus],
                                              [.one, .two, .three, .plus],
                                              [.zero, .point, .equal]]
    @State private var beforeNumber = 0.0
    @State private var operatorType: ButtonType = .none
    @State private var isClear = true
    
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
                                if item.isNumber { // item이 숫자이면
                                    if isClear {
                                        answerNumber = answerNumber == "0" ? item.displayName : answerNumber + item.displayName
                                    }else {
                                        beforeNumber = Double(answerNumber) ?? 0.0
                                        answerNumber = item.displayName
                                        isClear = true
                                    }
                                }else { // item이 기호이면
                                    print(beforeNumber)
                                    if item == .clear {
                                        answerNumber = "0"
                                        operatorType = .none
                                        isClear = true
                                        beforeNumber = 0
                                    }else if item.isSingle { // item이 단일연산이면
                                        answerNumber = trans(item, Double(answerNumber) ?? 0.0)
                                    }else {
                                        if operatorType != .none && operatorType != .equal {
                                            answerNumber = calculation(operatorType, beforeNumber, Double(answerNumber) ?? 0.0)
                                        }
                                        operatorType = item
                                        isClear = false
                                    }
                                    
                                    
                                }
                                
                            }, label: {
                                Text(item.displayName)
                                    .frame(width: item == .zero ? 170 : 80,
                                           height: 80)
                                    .background(operatorType == item ? .white : item.backgroundColor)
                                    .cornerRadius(40)
                                    .foregroundColor(operatorType == item ? .orange : item.foregroundColor)
                                    .font(.system(size: 33))
                            })
                        }
                    }
                }
                
                
            }
        }
       
    }
    // 연산하기
    func calculation(_ item: ButtonType,_ tempNumber: Double,_ currentNumber: Double) -> String {
        var result = tempNumber
        switch item {
        case .division:
            result /= currentNumber
        case .multiplivation:
            result *= currentNumber
        case .minus:
            result -= currentNumber
        case .plus:
            result += currentNumber
        default:
            return String(currentNumber)
        }
        print(result)
        return result == Double(Int(result)) ? String(Int(result)) : String(result)
    }
    
    // 변환하기
    func trans(_ item: ButtonType,_ currentNumber: Double) -> String {
        switch item {
        case .not:
            if currentNumber == Double(Int(currentNumber)) {
                return String(Int(-currentNumber))
            }else {
                return String(-currentNumber)
            }
        case .percent:
            return String(currentNumber / 100)
        case .point:
            if currentNumber == Double(Int(currentNumber)) {
                return String(Int(currentNumber)) + "."
            }else {
                return String(currentNumber)
            }
        default:
            return currentNumber == Double(Int(currentNumber)) ? String(Int(currentNumber)) : String(currentNumber)
        }
    }
}

#Preview {
    ContentView()
}
