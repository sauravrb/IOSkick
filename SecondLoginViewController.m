//
//  SecondLoginViewController.m
//  
//
//  Created by OnePlatinum on 4/19/18.
//

#import "SecondLoginViewController.h"
#import "SignupViewController.h"
#import "SegmentedControlViewController.h"

@interface SecondLoginViewController ()
@property (weak, nonatomic) IBOutlet UIButton *btnLogin;
@property (weak, nonatomic) IBOutlet UITextField *txtpassword;
@property (weak, nonatomic) IBOutlet UITextField *txtemail;
@property (weak, nonatomic) IBOutlet UIButton *btnSegment;

@end

@implementation SecondLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Secondview";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)login:(id)sender {
    NSLog(@"email: %@ \t password: %@", self.txtemail.text, self.txtpassword.text);
    SignupViewController* signupVC = [self.storyboard instantiateViewControllerWithIdentifier:@"SignupVC"];
    [self.navigationController pushViewController:signupVC animated:YES];

}

- (IBAction)segment:(id)sender {
    SegmentedControlViewController* segmentedControllerVC = [self.storyboard instantiateViewControllerWithIdentifier:@"SegmentedControllerVC"];
    [self.navigationController pushViewController:segmentedControllerVC animated:YES];
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
