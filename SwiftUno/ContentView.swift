//
//  ContentView.swift
//  SwiftUno
//
//  Created by Usaid Peerzada on 11/13/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var emojiCount = 4
    var body: some View {
        VStack {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 65))]) {
                    ForEach(emojis[0..<emojiCount], id: \.self, content: {
                        emoji in CardView(content: emoji).aspectRatio(2/3, contentMode: .fit)
                    })
                }.padding(.horizontal).foregroundColor(.red)
            }
            Spacer()
            HStack {
                Button(action: {
                    if emojiCount < emojis.count  {
                        emojiCount += 1
                    }
                }, label: {
                    VStack {
                        Image(systemName: "plus.circle")
                    }
                })
                Spacer()
                Button(action: {
                    if emojiCount > 1 {
                        emojiCount -= 1
                    }
                }, label: {
                    VStack {
                        Image(systemName: "minus.circle")
                            
                            
                            
                    }
                })
            }.padding(.horizontal)
        }
        
        

    }
}
struct CardView: View {
    var content: String
    @State var isFaceUp: Bool = true
    var body: some View {
        let shape = RoundedRectangle(cornerRadius: 20)
        ZStack {
                if isFaceUp {
                shape
                    .fill()
                    .foregroundColor(.white)
                shape
                    .strokeBorder(lineWidth: 3)
                Text(content).font(.largeTitle)
            }
                else {
                   shape
                        .fill()
                }
        }.onTapGesture {
            isFaceUp = !isFaceUp
        }
        
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .padding(.all)
    }
}
