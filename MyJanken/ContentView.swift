//
//  ContentView.swift
//  MyJanken
//

import SwiftUI

struct ContentView: View {
//    var jankens = [Image(.gu), Image(.choki), Image(.pa)]
    @State var jankenNumber = 0

    var body: some View {
        VStack {
            Spacer()

            if jankenNumber == 0 {
                Text("これからじゃんけんをします")
                    .padding(.bottom)
            } else if jankenNumber == 1 {
                Image(.gu)
                    .resizable()
                    .scaledToFit()
                Text("グー")
                    .font(.largeTitle)
            } else if jankenNumber == 2 {
                Image(.choki)
                    .resizable()
                    .scaledToFit()
                Text("チョキ")
                    .font(.largeTitle)
            } else {
                Image(.pa)
                    .resizable()
                    .scaledToFit()
                Text("パー")
                    .font(.largeTitle)
            }
            Button(action: {
                //新しいじゃんけんの結果を一時的に格納する変数を設ける
                var newJankenNumber = 0
                repeat {
                    newJankenNumber = Int.random(in: 1...3)
                } while jankenNumber == newJankenNumber
                jankenNumber = newJankenNumber
            }, label: {
                Text("じゃんけんを開始する")
                    .frame(maxWidth: .infinity)
                    .frame(height: 100)
                    .font(.title)
                    .background(.pink)
                    .foregroundColor(.white)
            })
        }
    }
}

#Preview {
    ContentView()
}
