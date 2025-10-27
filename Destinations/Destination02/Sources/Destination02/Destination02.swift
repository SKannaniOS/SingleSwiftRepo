//
//  Destination02.swift
//  Destination02
//
//  Created by Satheesh Kannan on 26/10/25.
//

import Foundation
import MonoRepoNetworking
import MonoRepoCore

public class Destination02 {
    var core: MonoRepoCore
    var networking: MonoRepoNetworking
    
    public init() {
        self.core = MonoRepoCore()
        self.networking = MonoRepoNetworking()
    }
    
    public func callMonoRepoCore() {
        self.core.printClassName()
    }
    
    public func callMonoRepoNetworking() {
        self.core.printClassName()
        self.networking.printClassName()
    }
    
    public func printClassName() {
        print("The base class name is \(Self.self)")
    }
}


