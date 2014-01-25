//
//  ControlFreakViewController.h
//  ControlFreak
//
//  Created by Mark Meyer on 1/25/14.
//  Copyright (c) 2014 Mark Meyer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ControlFreakViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UISlider *fontSizeSlider;
@property (weak, nonatomic) IBOutlet UIButton *updateTime;

- (IBAction)updateTimeTapped:(id)sender;
- (IBAction)fontSizeChanged:(id)sender;

- (IBAction)redChanged:(UISlider *)sender;
- (IBAction)greenChanged:(UISlider *)sender;
- (IBAction)blueChanged:(UISlider *)sender;


@end
