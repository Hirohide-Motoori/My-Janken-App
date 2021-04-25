//
//  ContentView.swift
//  My Janken
//
//  Created by MOTOORI HIROHIDE on 2021/02/14.
//

import SwiftUI

struct ContentView: View {
    @State var answerNumber = 0
    var body: some View {
        VStack {
            //スペースを追加
            Spacer()
            
            if answerNumber == 0 {
                Text("これからジャンケン")
                    .padding(.bottom)
            } else if answerNumber == 1 {
                // グーを指定
                Image("gu")
                    // リサイズを指定
                    .resizable()
                    // アスペクト比の指定
                    .aspectRatio(contentMode: .fit)
                //スペース追加
                Spacer()
                Text("グー")
                    .padding(.bottom)
            } else if answerNumber == 2 {
                // グーを指定
                Image("pa")
                    // リサイズを指定
                    .resizable()
                    // アスペクト比の指定
                    .aspectRatio(contentMode: .fit)
                //スペース追加
                Spacer()

                Text("パー")
                    .padding(.bottom)
            } else {
                // グーを指定
                Image("choki")
                    // リサイズを指定
                    .resizable()
                    // アスペクト比の指定
                    .aspectRatio(contentMode: .fit)
                //スペース追加
                Spacer()

                Text("チョキ")
                    .padding(.bottom)
            }
            Button(action: {
                //新しいジャンケンの結果を一時的に格納するための変数
                var newAnswerNumber = 0

                //繰り返し処理↓
                repeat {
                    newAnswerNumber = Int.random(in: 1...3)
                } while answerNumber == newAnswerNumber
                
                //新規のジャンケンの結果を格納
                answerNumber = newAnswerNumber
            }) {
                Text("ジャンケンをする")
                    .frame(maxWidth: .infinity)
                    .frame(height: 100)
                    .font(.title)
                    .background(Color.yellow)
                    .foregroundColor(Color/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
