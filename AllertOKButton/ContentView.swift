//
//  ContentView.swift
//  AllertOKButton
//
//  Created by 河野保 on 2023/04/14.


import SwiftUI

struct ContentView: View {
    @State var isError: Bool = false
    var body: some View {
        Button("Alertテスト") {
        isError = true
        }
        .alert(isPresented: $isError) {
            Alert(title: Text("タイトル"),message: Text("メッセージ文"),
                primaryButton: .default(Text("OK"),action: {okAction()}),
                secondaryButton: .cancel(Text("キャンセル"),action: {})
            )
        }
    }
}
func okAction(){
    print("OKボタンが選ばれた")
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
