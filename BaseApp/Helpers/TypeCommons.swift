//
//  TypeCommons.swift
//  BaseApp
//
//  Created by Mac mini on 31/05/2024.
//

import Foundation

typealias ClosureAction = ()->Void
typealias ClosureComplet = (Bool)->Void
typealias ClosureCustom<T> = ((_ item: T) -> Void)
