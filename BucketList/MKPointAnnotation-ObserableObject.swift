//
//  MKPointAnnotation-ObserableObject.swift
//  BucketList
//
//  Created by Chloe Fermanis on 11/9/20.
//  Copyright © 2020 Chloe Fermanis. All rights reserved.
//

import MapKit

extension MKPointAnnotation: ObservableObject {
    
    public var wrappedTitle: String {
        get {
            self.title ?? "Unknown value"
        }
        set {
            title = newValue
        }
    }
    
    public var wrappedSubtitle: String {
        get {
            self.subtitle ?? "Unknown value"
        }
        set {
            subtitle = newValue
        }
    }
    
}
