//
//  ContentView.swift
//  BucketList
//
//  Created by Chloe Fermanis on 7/9/20.
//  Copyright © 2020 Chloe Fermanis. All rights reserved.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        Text("Loading...")
    }
}

struct SuccessView: View {
    var body: some View {
        Text("Success!")
    }
}

struct FailedView: View {
    var body: some View {
        Text("Failed.")
    }
}

struct ContentView: View {
    
    enum LoadingState {
        case loading, success, failed
    }
    
    var loadingState = LoadingState.loading

    var body: some View {
        
        Group {
            
            if loadingState == .loading {
                LoadingView()
            } else if loadingState == .success {
                SuccessView()
            } else if loadingState == .failed {
                FailedView()
            }
        }
        
    }
}
//        Text("Hello, World!")
//            .onTapGesture {
//                FileManager.findDirectory(str: "Test Message", name: "message.txt")
//            }
//        }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
