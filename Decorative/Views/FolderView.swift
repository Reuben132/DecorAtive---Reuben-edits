//
//  FolderListView.swift
//  Decorative
//
//  Created by Maya Taylor (student LM) on 3/8/23.
//

import SwiftUI

struct FolderView: View {
    @Binding var folder: File
   
    
    var body: some View {
        
        ZStack {
            
            Rectangle()
                .frame(width: .infinity, height: 60, alignment: .center)
                .foregroundColor(Color.orange)
                .cornerRadius(8)
            
            HStack(){
                
                Image("folder")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50.0, height: 50.0)
                    .padding()
                
                Text("\(folder.name)")
                    .font(Font.title2)
                    .padding()
                    .onTapGesture {
                        FolderListView(folder: type($folder)
                    }
                
                Spacer()
                
                
                
                
                Menu {
                    
                    Button {
                        Rename()
                    } label: {
                        Text("rename")
                    }
                    
                    Button {
                        MoveTo()
                    } label: {
                        Text("Move To ->")
                    }
                    Button {
                        Share()
                    } label: {
                        Text("Share")
                    }
                    Button {
                        MakeACopy()
                    } label: {
                        Text("Make a Copy")
                    }
                    

                } label: {
                    Image("options")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding()
                        .frame(width: 60, height: 60, alignment: .trailing)
                }
                
                
            }
        }
    }
    func Rename() {
        //
    }
    func MoveTo() {
        //
    }
    func Share() {
        //
    }
    func MakeACopy() {
        //
    }
}

