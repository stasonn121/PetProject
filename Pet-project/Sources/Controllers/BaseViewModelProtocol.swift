//
//  BaseViewModelProtocol.swift
//  Pet-project
//
//  Created by Stas B. on 04.10.2021.
//

import Foundation

protocol BaseViewModelProtocol {
    var applicationDependency: ApplicationDependency { get }
    
    func route(to page: PageType) 
}
