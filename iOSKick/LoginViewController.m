//
//  ViewController.m
//  iOSKick
//
//  Created by OnePlatinum on 4/17/18.
//  Copyright © 2018 OnePlatinum. All rights reserved.
//

#import "LoginViewController.h"
#import "SecondLoginViewController.h"


@interface LoginViewController ()
@property (weak, nonatomic) IBOutlet UITextField *txtUsername;
@property (weak, nonatomic) IBOutlet UITextField *txtPassword;
@property (weak, nonatomic) IBOutlet UIButton *btnLogin;
@property (weak, nonatomic) IBOutlet UIImageView *ivTopImage;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicator;

@property BOOL isAnimating;

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = NSLocalizedString(@"First Screen", @"");
    
}

-(void) viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}

-(void) viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    self.isAnimating = YES;
    [self.activityIndicator startAnimating];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)login:(id)sender {
    NSLog(@"username %@ and password %@", self.txtUsername.text, self.txtPassword.text);
    [UIView transitionWithView:self.viewBackground duration:0.51 options:UIViewAnimationOptionTransitionFlipFromLeft animations:^{
        [self.activityIndicator stopAnimating];
        [self.ivTopImage setAlpha:0.0];
        if (!self.isAnimating) {
            [self.activityIndicator startAnimating];
            [self.ivTopImage setAlpha:1.0];
        }
        self.isAnimating = !self.isAnimating;
    } completion:^(BOOL finished) {
       
    }];
    SecondLoginViewController* secondLoginVC = [self.storyboard instantiateViewControllerWithIdentifier:@"SecondLoginVC"];
    [self.navigationController pushViewController:secondLoginVC animated:YES];
    
}
@end

