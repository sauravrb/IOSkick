//
//  SecondSegmentViewController.m
//  iOSKick
//
//  Created by OnePlatinum on 5/1/18.
//  Copyright © 2018 OnePlatinum. All rights reserved.
//

#import "SecondSegmentViewController.h"
#import "SegmentTableViewCell.h"

@interface SecondSegmentViewController ()
@property (weak, nonatomic) IBOutlet UISegmentedControl *segTable;
@property (weak, nonatomic) IBOutlet UITableView *tableContent;

@end

@implementation SecondSegmentViewController
{
    NSArray *tableData;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Segment With Table";
    
    tableData = [NSArray arrayWithObjects:@"One",@"Two",@"Three",@"Four",@"Five", nil];
    // Do any additional setup after loading the view.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [tableData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    SegmentTableViewCell* segmentTableCell = [tableView dequeueReusableCellWithIdentifier:@"segTableVC"];
    if (_segTable.selectedSegmentIndex==0) {
       segmentTableCell.txtFirst.text = tableData[indexPath.row];
    }else if (_segTable.selectedSegmentIndex==1){
       segmentTableCell.txtFirst.text = tableData[3];
    }
    return segmentTableCell;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)segment:(id)sender {
    [_tableContent reloadData];
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
