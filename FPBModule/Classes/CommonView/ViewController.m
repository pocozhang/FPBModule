//
//  ViewController.m
//  text
//
//  Created by 张虎 on 2020/2/26.
//  Copyright © 2020 张虎. All rights reserved.
//

#import "ViewController.h"
#import "FUCommonPolicyTableHeaderView.h"
#import <FPBModule/FUDigital3CSelectedCell.h>
#import "NSBundle+SubBundle.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//   FUCommonPolicyTableHeaderView *view = [FUCommonPolicyTableHeaderView FUCommonPolicyTableHeaderView];
   
//    FUDigital3CSelectedCell *cell = [[FUDigital3CSelectedCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"FUDigital3CSelectedCell"];
    
    UITableView *tableview = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    tableview.delegate = self;
    tableview.dataSource = self;
    tableview.separatorStyle = UITableViewCellSelectionStyleNone;
    tableview.estimatedRowHeight = UITableViewAutomaticDimension;
    
    NSBundle * __nonnull subBundle = [NSBundle bundleForClass:[FUCommonPolicyTableHeaderView class]];
    //[NSBundle getSubBundleWithBundleName:@"FPBModule" podName:@""];
    UINib *nib = [UINib nibWithNibName:@"FUDigital3CSelectedCell" bundle:subBundle];
    
    [tableview registerNib:nib forCellReuseIdentifier:@"FUDigital3CSelectedCell"];
    
    [self.view addSubview:tableview];
    
//    UIImageView *view = [[UIImageView alloc] init];
    // Do any additional setup after loading the view.
}



- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    FUDigital3CSelectedCell *cell = (FUDigital3CSelectedCell*)[tableView dequeueReusableCellWithIdentifier:@"FUDigital3CSelectedCell" forIndexPath:indexPath];
    
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}



@end
