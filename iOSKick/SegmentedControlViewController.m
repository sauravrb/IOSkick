//
//  SegmentedControlViewController.m
//  iOSKick
//
//  Created by OnePlatinum on 4/30/18.
//  Copyright © 2018 OnePlatinum. All rights reserved.
//

#import "SegmentedControlViewController.h"

@interface SegmentedControlViewController ()
@property (weak, nonatomic) IBOutlet UISegmentedControl *segColor;
@property (weak, nonatomic) IBOutlet UIView *uiShowColor;

@end

@implementation SegmentedControlViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Segment";
    [[_segColor.subviews objectAtIndex:2] setTintColor:[UIColor redColor]];
    [[_segColor.subviews objectAtIndex:1] setTintColor:[UIColor orangeColor]];
    [[_segColor.subviews objectAtIndex:0] setTintColor:[UIColor blueColor]];
    // Do any additional setup after loading the view.
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)segments:(id)sender {
    if (_segColor.selectedSegmentIndex==0) {
        _uiShowColor.backgroundColor = [UIColor redColor];
    }
    else if (_segColor.selectedSegmentIndex==1){
        _uiShowColor.backgroundColor = [UIColor orangeColor];
    }
    else if (_segColor.selectedSegmentIndex==2){
        _uiShowColor.backgroundColor = [UIColor blueColor];
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
