//
//  EmojiMemoryGameView.swift
//  Shared
//
//  Created by Катрин Маилян on 08.12.2020.
//

import SwiftUI

struct EmojiMemoryGameView: View {
    var viewModel = EmojiMemoryGame()
    var body: some View {
        ScrollView {
            LazyVGrid(columns: Array(repeating: .init(.flexible()), count: 3)) {
                ForEach(viewModel.cards.shuffled()) { card in
                    CardView(card: card).onTapGesture{
                        self.viewModel.choose(card: card)
                    }
                }
                .font(viewModel.cards.count < 9 ? .largeTitle : .body)
            }
            .padding(.horizontal)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
            EmojiMemoryGameView()
    }
}



struct CardView: View {
    var card : MemoryGame<String>.Card
    @State private var viewState = CGSize.zero
    var body: some View {
        ZStack {
            if card.isFaceUp{
            RoundedRectangle(cornerRadius: 10)
                .fill()
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.orange, lineWidth: 3)
            
                Text(card.content)
                .padding()
            } else{
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.orange)
                
            }
        }
        .foregroundColor(.white)
        .aspectRatio(2/3, contentMode: .fit)
        .offset(viewState)
//        .gesture(
//            DragGesture()
//                .onChanged { value in
//                    viewState = value.translation
//                }
//                .onEnded { value in
//                    viewState = .zero
//                }
//        )
    }
}
