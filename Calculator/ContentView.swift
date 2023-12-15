//
//  ContentView.swift
//  Calculator
//
//  Created by 오현택 on 12/16/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var answerNumber: String = "0"
    
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
                    
                HStack {
                    Button(action: {
                        
                    }, label: {
                        Text("C")
                            .frame(width: 80,
                                   height: 80)
                            .background(.gray)
                            .clipShape(.circle)
                            .foregroundColor(.black)
                            .font(.system(size: 33))
                    })
                    Button(action: {
                        
                    }, label: {
                        Text("±")
                            .frame(width: 80,
                                   height: 80)
                            .background(.gray)
                            .clipShape(.circle)
                            .foregroundColor(.black)
                            .font(.system(size: 33))
                    })
                    Button(action: {
                        
                    }, label: {
                        Text("%")
                            .frame(width: 80,
                                   height: 80)
                            .background(.gray)
                            .clipShape(.circle)
                            .foregroundColor(.black)
                            .font(.system(size: 33))
                    })
                    Button(action: {
                        
                    }, label: {
                        Text("÷")
                            .frame(width: 80,
                                   height: 80)
                            .background(.orange)
                            .clipShape(.circle)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    })
                    
                
                }
                
                HStack {
                    Button(action: {
                        
                    }, label: {
                        Text("7")
                            .frame(width: 80,
                                   height: 80)
                            .background(Color("NumberButton"))
                            .clipShape(.circle)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    })
                    Button(action: {
                        
                    }, label: {
                        Text("8")
                            .frame(width: 80,
                                   height: 80)
                            .background(Color("NumberButton"))
                            .clipShape(.circle)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    })
                    Button(action: {
                        
                    }, label: {
                        Text("9")
                            .frame(width: 80,
                                   height: 80)
                            .background(Color("NumberButton"))
                            .clipShape(.circle)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    })
                    Button(action: {
                        
                    }, label: {
                        Text("x")
                            .frame(width: 80,
                                   height: 80)
                            .background(.orange)
                            .clipShape(.circle)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    })
                }
                
                HStack {
                    Button(action: {
                        
                    }, label: {
                        Text("4")
                            .frame(width: 80,
                                   height: 80)
                            .background(Color("NumberButton"))
                            .clipShape(.circle)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    })
                    Button(action: {
                        
                    }, label: {
                        Text("5")
                            .frame(width: 80,
                                   height: 80)
                            .background(Color("NumberButton"))
                            .clipShape(.circle)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    })
                    Button(action: {
                        
                    }, label: {
                        Text("6")
                            .frame(width: 80,
                                   height: 80)
                            .background(Color("NumberButton"))
                            .clipShape(.circle)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    })
                    Button(action: {
                        
                    }, label: {
                        Text("-")
                            .frame(width: 80,
                                   height: 80)
                            .background(.orange)
                            .clipShape(.circle)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    })
                }
                
                HStack {
                    Button(action: {
                        
                    }, label: {
                        Text("0")
                            .frame(width: 80,
                                   height: 80)
                            .background(Color("NumberButton"))
                            .clipShape(.circle)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    })
                    Button(action: {
                        
                    }, label: {
                        Text(" ")
                            .frame(width: 80,
                                   height: 80)
                            .background(Color("NumberButton"))
                            .clipShape(.circle)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    })
                    Button(action: {
                        
                    }, label: {
                        Text(".")
                            .frame(width: 80,
                                   height: 80)
                            .background(Color("NumberButton"))
                            .clipShape(.circle)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    })
                    Button(action: {
                        
                    }, label: {
                        Text("=")
                            .frame(width: 80,
                                   height: 80)
                            .background(.orange)
                            .clipShape(.circle)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    })
                }
                
            }
        }
        
       
    }
}

#Preview {
    ContentView()
}
