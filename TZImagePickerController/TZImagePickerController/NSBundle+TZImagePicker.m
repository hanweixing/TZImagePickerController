//
//  NSBundle+TZImagePicker.m
//  TZImagePickerController
//
//  Created by 谭真 on 16/08/18.
//  Copyright © 2016年 谭真. All rights reserved.
//

#import "NSBundle+TZImagePicker.h"
#import "TZImagePickerController.h"
#import "TKString.h"

@implementation NSBundle (TZImagePicker)

+ (instancetype)tz_imagePickerBundle {
    static NSBundle *tzBundle = nil;
    if (tzBundle == nil) {
        NSString *path = [[NSBundle mainBundle] pathForResource:@"TZImagePickerController" ofType:@"bundle"];
        if (!path) {
            path = [[NSBundle mainBundle] pathForResource:@"TZImagePickerController" ofType:@"bundle" inDirectory:@"Frameworks/TZImagePickerController.framework/"];
        }
        tzBundle = [NSBundle bundleWithPath:path];
    }
    return tzBundle;
}

+ (NSString *)tz_localizedStringForKey:(NSString *)key {
    return TKDisplayLocalizationString(key, nil);
}

@end
