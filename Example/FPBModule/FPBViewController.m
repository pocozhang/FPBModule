//
//  FPBViewController.m
//  FPBModule
//
//  Created by 15626448137@163.com on 04/20/2020.
//  Copyright (c) 2020 15626448137@163.com. All rights reserved.
//

#import "FPBViewController.h"
#import "FUCommonPolicyTableHeaderView.h"
#import "FUDigital3CSelectedCell.h"
#import "NSBundle+SubBundle.h"
#import "UIImageView+FUWebImage.h"
#import "ViewController.h"
#import "FuTools.h"

@interface FPBViewController ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation FPBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
//       FUCommonPolicyTableHeaderView *view = [FUCommonPolicyTableHeaderView FUCommonPolicyTableHeaderView];
       
    UIImageView *imgView = [[UIImageView alloc] init];
    [imgView fu_setImageWithAffixId:@"540888b862b54dab84024f2df6d0a1b2" requesturl:@"http://47.74.177.113/insurance-finance-vs-api/api/fuse/file/oper/file/get" placeholderImage:nil];
    imgView.frame = CGRectMake(0, 0, 100, 100);
    
    [self.view addSubview:imgView];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(clickAction)];
    tap.numberOfTouchesRequired = 1;
    imgView.userInteractionEnabled = true;
    [imgView addGestureRecognizer:tap];
    
//        FUDigital3CSelectedCell *cell = [[FUDigital3CSelectedCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"FUDigital3CSelectedCell"];
//
//        UITableView *tableview = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
//        tableview.delegate = self;
//        tableview.dataSource = self;
//        tableview.separatorStyle = UITableViewCellSelectionStyleNone;
//        tableview.estimatedRowHeight = UITableViewAutomaticDimension;
//
//        NSBundle * __nonnull subBundle = [NSBundle bundleForClass:[FUCommonPolicyTableHeaderView class]];
////    [NSBundle getSubBundleWithBundleName:@"FPBModule" podName:@""];
//        UINib *nib = [UINib nibWithNibName:@"FUDigital3CSelectedCell" bundle:subBundle];
//
//        [tableview registerNib:nib forCellReuseIdentifier:@"FUDigital3CSelectedCell"];
//
//        [self.view addSubview:tableview];
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)clickAction {
    ViewController *view = [[ViewController alloc] init];
    [self presentViewController:view animated:true completion:^{
    
    }];
}


- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"FUDigital3CSelectedCell" forIndexPath:indexPath];
    
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
