//
//  NSAppearance+DarkMode.m
//  Table Tool
//
//  Created by kngjj on 2023/5/11.
//  Copyright © 2023 Egger Apps. All rights reserved.
//

#import "NSAppearance+DarkMode.h"

@implementation NSAppearance (DarkMode)

- (BOOL)isDarkMode
{
    if (@available(macOS 10.14, *)) {
        NSAppearanceName basicAppearance = [self bestMatchFromAppearancesWithNames:@[
            NSAppearanceNameAqua,
            NSAppearanceNameDarkAqua
        ]];
        
        return [basicAppearance isEqualToString:NSAppearanceNameDarkAqua];
    }
    
    return NO;
}

@end
