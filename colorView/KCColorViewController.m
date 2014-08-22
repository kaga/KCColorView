//
//  KCColorViewController.m
//  colorView
//
//  Created by kaga chan on 22/8/14.
//  Copyright (c) 2014 ada. All rights reserved.
//

#import "KCColorViewController.h"
#import "ASCFlatUIColor.h"

@interface KCColorViewController ()
@property() NSArray *colors;
@property() int index;
@end

@implementation KCColorViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    _colors = @[@"TURQUOISE",
                          @"GREEN SEA",
                          @"EMERALD",
                          @"NEPHRITIS",
                          @"PETER RIVER",
                          @"BELIZE HOLE",
                          @"AMETHYST",
                          @"WISTERIA",
                          @"WET ASPHALT",
                          @"MIDNIGHT BLUE",
                          @"SUN FLOWER",
                          @"ORANGE",
                          @"CARROT",
                          @"PUMPKIN",
                          @"ALIZARIN",
                          @"POMEGRANATE",
                          @"CLOUDS",
                          @"SILVER",
                          @"CONCRETE",
                          @"ASBESTOS"];
    _index = 0;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addTagButton:(id)sender
{
    NSInteger index = ++_index % [_colors count];
    [_tagView addColor:[ASCFlatUIColor colorWithFlatUIColorType:index]];
}
@end
