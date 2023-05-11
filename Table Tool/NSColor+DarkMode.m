//
//  NSColor+DarkMode.m
//  Table Tool
//
//  Created by kngjj on 2023/5/11.
//  Copyright © 2023 Egger Apps. All rights reserved.
//

#import "NSColor+DarkMode.h"
#import "NSAppearance+DarkMode.h"

@implementation NSColor (DarkMode)

- (NSColor *)colorWithName:(nullable NSColorName)colorName
             darkModeColor:(NSColor *)darkModeColor
{
     if (@available(macOS 10.15, *)) {
         NSColor *lightModeColor = self;
         
        return [NSColor colorWithName:colorName dynamicProvider:^NSColor * _Nonnull(NSAppearance * _Nonnull appearance) {
            return [appearance isDarkMode] ? darkModeColor : lightModeColor;
        }];
    }
    
    return self;
}

@end
