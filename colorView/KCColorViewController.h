//
//  KCColorViewController.h
//  colorView
//
//  Created by kaga chan on 22/8/14.
//  Copyright (c) 2014 ada. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KCColorView.h"

@interface KCColorViewController : UIViewController
@property() IBOutlet KCColorView *tagView;

- (IBAction)addTagButton:(id)sender;
@end
