//
//  KCTagView.h
//  colorView
//
//  Created by kaga chan on 22/8/14.
//  Copyright (c) 2014 ada. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KCColorView : UIView
@property NSMutableArray *colorTags;

- (void)addColor:(UIColor *)color;
+ (NSIndexPath *)getGridSize:(NSInteger)size;

@end
