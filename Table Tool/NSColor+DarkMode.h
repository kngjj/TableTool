//
//  NSColor+DarkMode.h
//  Table Tool
//
//  Created by kngjj on 2023/5/11.
//  Copyright © 2023 Egger Apps. All rights reserved.
//

#import <Cocoa/Cocoa.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSColor (DarkMode)

- (NSColor *)colorWithName:(nullable NSColorName)colorName
             darkModeColor:(NSColor *)darkModeColor;

@end

NS_ASSUME_NONNULL_END
