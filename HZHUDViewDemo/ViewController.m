//
//  ViewController.m
//  HZHUDView
//
//  Created by MindminiMac on 16/11/3.
//  Copyright © 2016年 hezhizhi. All rights reserved.
//

#import "ViewController.h"
#import "HZHUDView.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) NSArray *arr;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    
    _arr = [NSArray arrayWithObjects:@"HZHUDStatusSuccess", @"HZHUDStatusFailure", @"HZHUDStatusInfo", @"HZHUDStatusLoading", @"HZHUDStatusLoadingText", @"HZHUDStatusLoadingWithText", @"HZHUDStatusLoadingWithImageText", @"HZHUDStatusMiddleText", @"HZHUDStatusBottomText", nil];
    
    UITableView *tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    tableView.delegate = self;
    tableView.dataSource = self;
    tableView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:tableView];
    [tableView reloadData];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _arr.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 50;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *cellId = @"cellId";
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId];
    cell.textLabel.text = _arr[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    switch (indexPath.row) {
        case 0:
            [HZHUDView showSuccessText:@"成功~"];
            break;
            
        case 1:
            [HZHUDView showFailureText:@"错误"];
            break;
            
        case 2:
            [HZHUDView showInfoText:@"警告"];
            break;
            
        case 3:
            [HZHUDView showLoading];
            break;
            
        case 4:
            [HZHUDView showLoadingText];
            break;
            
        case 5:
            [HZHUDView showLoadingWithText:@"自定义文字"];
            break;
            
        case 6:
            [HZHUDView showLoadingWithImage:[UIImage imageNamed:@"image"] text:@"自定义图片文字"];
            break;
            
        case 7:
            [HZHUDView showMiddleText:@"中间文字"];
            break;
            
        case 8:
            [HZHUDView showBottomText:@"底部文字"];
            break;
        default:
            break;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
