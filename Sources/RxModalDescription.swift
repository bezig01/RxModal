//
//  RxModalDescription.swift
//  RxModal
//
//  Created by Jérôme Alves on 06/02/2021.
//

import Foundation

public protocol RxModalCustomStringConvertible {
    var rxModalDescription: String { get }
}

extension String {
    public init(rxModalDescribing value: Any) {
        if let value = value as? RxModalCustomStringConvertible {
            self = value.rxModalDescription
        } else {
            self = String(describing: value)
        }
    }
}
