//
//  TableViewController.m
//  iOSKick
//
//  Created by OnePlatinum on 4/20/18.
//  Copyright © 2018 OnePlatinum. All rights reserved.
//

#import "TableViewController.h"
#import "CustomTableViewCell.h"
#import "AddedTableViewCell.h"
@interface TableViewController ()<UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation TableViewController
{
    NSArray *tableData;
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    self.tableView.estimatedRowHeight = 90.0;
    
    
    tableData = [NSArray arrayWithObjects:@"Egg Benedict", @"Mushroom Risotto", @"Full Breakfast", @"Hamburger", @"Ham and Egg Sandwich", @"Creme Brelee", @"White Chocolate Donut", @"Starbucks Coffee", @"Vegetable Curry", @"Instant Noodle with Egg", @"Noodle with BBQ Pork", @"Japanese Noodle with Pork", @"Green Tea", @"Thai Shrimp Cake", @"Angry Birds Cake", @"Ham and Cheese Panini", nil];
    // Do any additional setup after loading the view.
    
    NSLog(@"3rd element of tabledata %@",tableData[2]);
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [tableData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    AddedTableViewCell* addedCell = [tableView dequeueReusableCellWithIdentifier:@"AddedTVC"];
   addedCell.txtName.text = tableData[indexPath.row];
    addedCell.txtDetails.text = NSLocalizedString(@"Sub detail long text and longer text and longest text and even longer text", @"");
    return addedCell;
    
    
//    if(indexPath.row %2 == 0) {
//       CustomTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"CustomTVC"];
//        cell.labelFirst.text = tableData[indexPath.row];
//        cell.labelSecond.text = NSLocalizedString(@"Sub detail long text and longer text and longest text and even longer text", @"");
//        return cell;
//    } else {
//        static NSString *simpleTableIdentifier = @"SimpleTableItem";
//        UITableViewCell * defaultCell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
//        defaultCell.textLabel.text = [tableData objectAtIndex:indexPath.row];
//        return defaultCell;
//    }
//
   
        
    
//    UITableViewCell* cell = [[UITableViewCell alloc] init];
//    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
