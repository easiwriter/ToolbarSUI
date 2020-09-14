//
//  ToolbarItem.swift
//
//  Created by Keith Lander on 24/07/2020.
//  Copyright © 2020 Keith Lander. All rights reserved.
//

import SwiftUI

#if os(iOS) || targetEnvironment(macCatalyst)
public struct ToolbarItem {
    @usableFromInline
    public let icon: Image
    @usableFromInline
    public let title: String
    @usableFromInline
    public let disabled:Bool
    
    @inlinable
    public init(icon: Image,
                title: String,
                disabled: Bool){
        self.icon = icon
        self.title = title
        self.disabled = disabled
    }
    
    @inlinable
    public init(icon: String,
                title: String,
                disabled: Bool) {
        self = ToolbarItem(icon: Image(systemName: icon),
                           title: title,
                           disabled: disabled)
    }
}
#endif
