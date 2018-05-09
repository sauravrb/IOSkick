//
//  SignupViewController.m
//  
//
//  Created by OnePlatinum on 4/19/18.
//

#import "SignupViewController.h"
#import "SecondSegmentViewController.h"


@interface SignupViewController ()
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *loader;
@property (weak, nonatomic) IBOutlet UISwitch *switchToggle;
@property (weak, nonatomic) IBOutlet UIButton *btnNext;
@property BOOL isAnimated;

@end

@implementation SignupViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = NSLocalizedString(@"Sign Up", @"");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)viewWillAppear:(BOOL)animated{
    
}
- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    self.isAnimated =true;
    [self.loader startAnimating];
    
}
- (IBAction)switch:(id)sender {
    [UIView transitionWithView:self.view duration:0.55 options:UIViewAnimationOptionTransitionCrossDissolve animations:^{
        if (self.isAnimated) {
            [self.loader stopAnimating];
            self.isAnimated = false;
        }else{
            [self.loader startAnimating];
            self.isAnimated = true;
        }

    } completion:^(BOOL finished) {
    }];
//    if (self.isAnimated) {
//        [self.loader stopAnimating];
//        self.isAnimated = false;
//    }else{
//        [self.loader startAnimating];
//        self.isAnimated = true;
//    }
}
- (IBAction)next:(id)sender {
    SecondLoginViewController* secondSegmentVC = [self.storyboard instantiateViewControllerWithIdentifier:@"SecondSegmentVC"];
    [self.navigationController pushViewController:secondSegmentVC animated:YES];
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
