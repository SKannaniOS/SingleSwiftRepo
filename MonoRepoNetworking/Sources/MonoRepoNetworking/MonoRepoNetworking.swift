//
//  MonoRepoNetworking.swift
//  MonoRepoNetworking
//
//  Created by Satheesh Kannan on 26/10/25.
//

import Foundation
import MonoRepoCore

public class MonoRepoNetworking {
    
    var core: MonoRepoCore
    
    public init() {
        self.core = MonoRepoCore()
    }
    
    public func callMonoRepoCore() {
        self.core.printClassName()
    }
    
    public func printClassName() {
        print("The base class name is \(Self.self)")
    }
}
