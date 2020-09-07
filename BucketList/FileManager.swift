//
//  FileManager.swift
//  BucketList
//
//  Created by Chloe Fermanis on 7/9/20.
//  Copyright © 2020 Chloe Fermanis. All rights reserved.
//

import Foundation

extension FileManager {
    
    func getDocumentsDirectory() -> URL {
        // find all possible documents directories for this user
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)

        // just send back the first one, which ought to be the only one
        return paths[0]
    }
    
    func findDirectory(str: String, name: String) {
        
        let url = self.getDocumentsDirectory().appendingPathComponent(name)
        do {
            try str.write(to: url, atomically: true, encoding: .utf8)
            let input = try String(contentsOf: url)
            print(input)
        } catch {
            print(error.localizedDescription)
        }
    }
}
