//
//  ControlFreakViewController.m
//  ControlFreak
//
//  Created by Mark Meyer on 1/25/14.
//  Copyright (c) 2014 Mark Meyer. All rights reserved.
//

#import "ControlFreakViewController.h"

@interface ControlFreakViewController ()

@end

@implementation ControlFreakViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self updateTimeTapped:Nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)updateTimeTapped:(id)sender {
    NSDate *now = [[NSDate alloc]init];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"hh:mm a"];
    
    self.timeLabel.text = [dateFormatter stringFromDate:now];
}

- (IBAction)fontSizeChanged:(id)sender {
    float fontSize = self.fontSizeSlider.value;
    [self.timeLabel setFont:[UIFont systemFontOfSize:fontSize]];
}

- (IBAction)redChanged:(UISlider *)sender {
    float red, green, blue, alpha;
    [self.view.backgroundColor getRed:&red green:&green blue:&blue alpha:&alpha];
    red = sender.value;
    self.view.backgroundColor = [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
    [self updateButton];
}

- (IBAction)greenChanged:(UISlider *)sender {
    float red, green, blue, alpha;
    [self.view.backgroundColor getRed:&red green:&green blue:&blue alpha:&alpha];
    green = sender.value;
    self.view.backgroundColor = [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
    [self updateButton];
}

- (IBAction)blueChanged:(UISlider *)sender {
    float red, green, blue, alpha;
    [self.view.backgroundColor getRed:&red green:&green blue:&blue alpha:&alpha];
    blue = sender.value;
    self.view.backgroundColor = [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
    [self updateButton];
}

- (void)updateButton {
    float red, green, blue, alpha;
    [self.view.backgroundColor getRed:&red green:&green blue:&blue alpha:&alpha];
    red = 1.0f - red;
    green = 1.0f - green;
    blue = 1.0f - blue;
    self.updateTime.backgroundColor = [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
}
@end
