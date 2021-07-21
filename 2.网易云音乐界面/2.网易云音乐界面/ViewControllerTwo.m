//
//  ViewControllerTwo.m
//  2.网易云音乐界面
//
//  Created by mac on 2021/7/18.
//  Copyright © 2021 mac. All rights reserved.
//

#import "ViewControllerTwo.h"

@interface ViewControllerTwo ()

@end

@implementation ViewControllerTwo

- (void)viewDidLoad {
    [super viewDidLoad];
    //创建UITableView
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    [self.view addSubview:_tableView];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    _arrayData = @[@[@" "],
                   @[@"创作者中心"],
                   @[@"音乐服务", @"演出", @"商城", @"口袋彩铃", @"在线听歌免流量"],
                   @[@"小工具", @"设置", @"夜间模式", @"定时关闭", @"音乐黑名单", @"鲸云音效", @"添加Siri捷径", @"音乐闹钟", @"青少年模式"],
                   @[@"我的订单", @"优惠券", @"分享网易云音乐", @"关于"], @[@"退出登录"]];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"icon26.png"] style:UIBarButtonItemStylePlain target:self action:nil];
    [self.navigationItem.leftBarButtonItem setTintColor:[UIColor grayColor]];
    
    UIImage *rightImage = [[UIImage imageNamed:@"icon28.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIBarButtonItem *btnRight=[[UIBarButtonItem alloc] initWithImage:rightImage style:UIBarButtonItemStylePlain target:self action:nil];
    self.navigationItem.rightBarButtonItem = btnRight;
    self.navigationItem.title = @" ";
}
//获取组(分区)数
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 6;
}

//设置每个分区的行数
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 2) {
        return 5;
    } else if (section == 3) {
        return 9;
    } else if (section == 4) {
        return 4;
    } else {
        return 1;
    }
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell* cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:nil];
    cell.textLabel.text = _arrayData[indexPath.section][indexPath.row];
    cell.textLabel.font = [UIFont systemFontOfSize:20];
    if (indexPath.section == 0) {
        float wid = [UIScreen mainScreen].bounds.size.width / 4;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        //设置logoBtn
        UIButton* btnOne = [UIButton buttonWithType:UIButtonTypeSystem];
        btnOne.frame = CGRectMake(0, 55, wid, wid);
        btnOne.backgroundColor = [UIColor clearColor];
        [btnOne setTitle:@"我的消息" forState:UIControlStateNormal];
        [btnOne setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        //btnOne.titleLabel.frame.origin.y = 50;
        [btnOne setImage:[UIImage imageNamed:@"icon20.png"] forState:UIControlStateNormal];
        [btnOne setTintColor:[UIColor redColor]];
        btnOne.imageEdgeInsets = UIEdgeInsetsMake(-btnOne.titleLabel.intrinsicContentSize.height - 5, 0, 0, -btnOne.titleLabel.intrinsicContentSize.width);
        btnOne.titleEdgeInsets = UIEdgeInsetsMake(btnOne.currentImage.size.height + 10, -btnOne.currentImage.size.width, 0, 0);
        //btnOne.titleLabel.textAlignment = NSTextAlignmentCenter;
        [cell addSubview:btnOne];
        
        UIButton* btnTwo = [UIButton buttonWithType:UIButtonTypeSystem];
        btnTwo.frame = CGRectMake(wid, 55, wid, wid);
        btnTwo.backgroundColor = [UIColor clearColor];
        [btnTwo setTitle:@"我的好友" forState:UIControlStateNormal];
        [btnTwo setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [btnTwo setImage:[UIImage imageNamed:@"icon21.png"] forState:UIControlStateNormal];
        [btnTwo setTintColor:[UIColor redColor]];
        btnTwo.imageEdgeInsets = UIEdgeInsetsMake(-btnTwo.titleLabel.intrinsicContentSize.height - 5, 0, 0, -btnTwo.titleLabel.intrinsicContentSize.width);
        btnTwo.titleEdgeInsets = UIEdgeInsetsMake(btnTwo.currentImage.size.height + 10, -btnTwo.currentImage.size.width, 0, 0);
        //btnOne.titleLabel.textAlignment = NSTextAlignmentCenter;
        [cell addSubview:btnTwo];
        
        UIButton* btnThree = [UIButton buttonWithType:UIButtonTypeSystem];
        btnThree.frame = CGRectMake(wid * 2, 55, wid, wid);
        btnThree.backgroundColor = [UIColor clearColor];
        [btnThree setTitle:@"个人主页" forState:UIControlStateNormal];
        [btnThree setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [btnThree setImage:[UIImage imageNamed:@"icon22.png"] forState:UIControlStateNormal];
        [btnThree setTintColor:[UIColor redColor]];
        btnThree.imageEdgeInsets = UIEdgeInsetsMake(-btnThree.titleLabel.intrinsicContentSize.height - 5, 0, 0, -btnThree.titleLabel.intrinsicContentSize.width);
        btnThree.titleEdgeInsets = UIEdgeInsetsMake(btnThree.currentImage.size.height + 10, -btnThree.currentImage.size.width, 0, 0);
        //btnOne.titleLabel.textAlignment = NSTextAlignmentCenter;
        [cell addSubview:btnThree];
        
        UIButton* btnFour = [UIButton buttonWithType:UIButtonTypeSystem];
        btnFour.frame = CGRectMake(wid * 3, 55, wid, wid);
        btnFour.backgroundColor = [UIColor clearColor];
        [btnFour setTitle:@"个性装扮" forState:UIControlStateNormal];
        [btnFour setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [btnFour setImage:[UIImage imageNamed:@"icon23.png"] forState:UIControlStateNormal];
        [btnFour setTintColor:[UIColor redColor]];
        btnFour.imageEdgeInsets = UIEdgeInsetsMake(-btnFour.titleLabel.intrinsicContentSize.height - 5, 0, 0, -btnFour.titleLabel.intrinsicContentSize.width);
        btnFour.titleEdgeInsets = UIEdgeInsetsMake(btnFour.currentImage.size.height + 17, -btnFour.currentImage.size.width, 0, 0);
        [cell addSubview:btnFour];
        
        UIButton* btnMain = [UIButton buttonWithType:UIButtonTypeSystem];
        btnMain.frame = CGRectMake(0, 10, 220, 54);
        btnMain.backgroundColor = [UIColor clearColor];
        [btnMain setTitle:@"     网抑云emo🤮" forState:UIControlStateNormal];
        btnMain.titleLabel.font = [UIFont systemFontOfSize:18];
        [btnMain setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        UIImage* imageMain = [UIImage imageNamed:@"icon24.png"];
        [btnMain setImage:[imageMain imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
        [cell addSubview:btnMain];
        
        UIButton* btnElse = [UIButton buttonWithType:UIButtonTypeSystem];
        btnElse.frame = CGRectMake(310, 22, 90, 30);
        btnElse.backgroundColor = [UIColor clearColor];
        [btnElse setTitle:@" 赚云贝 >" forState:UIControlStateNormal];
        btnElse.titleLabel.font = [UIFont systemFontOfSize:12];
        [btnElse setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        UIImage* imageElse = [UIImage imageNamed:@"icon25.png"];
        [btnElse setImage:[imageElse imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
        //按钮设置为圆角
        [btnElse.layer setMasksToBounds:YES];
        [btnElse.layer setCornerRadius:15.0];
        //设置边框颜色
        btnElse.layer.borderWidth = 0.5;
        CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
        CGColorRef color = CGColorCreate(colorSpace, (CGFloat[]){0.1,0,0,0.3});
        [btnElse.layer setBorderColor:color];
        [cell addSubview:btnElse];
    }
    if (indexPath.section  == 1 && indexPath.row == 0) {
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        [[cell imageView] setImage:[UIImage imageNamed:@"icon3.png"]];
    }
    if (indexPath.section  == 2) {
        if (indexPath.row == 0) {
            cell.textLabel.font = [UIFont systemFontOfSize:15];
            cell.selectionStyle = UITableViewCellSelectionStyleNone;
        }
        if (indexPath.row != 0) {
            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
            NSString* strName = [NSString stringWithFormat:@"icon%ld.png",indexPath.row + 3];
            UIImage* image = [UIImage imageNamed:strName];
            [[cell imageView] setImage:image];
        }
    }
    if (indexPath.section  == 3) {
        if (indexPath.row == 0) {
            cell.textLabel.font = [UIFont systemFontOfSize:15];
            cell.selectionStyle = UITableViewCellSelectionStyleNone;
        }
        
        if (indexPath.row == 5) {
            cell.detailTextLabel.text = @"未开启";
        }
        if (indexPath.row == 8) {
            cell.detailTextLabel.text = @"未开启";
        }
        if (indexPath.row != 0) {
            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
            NSString* strName = [NSString stringWithFormat:@"icon%ld.png",indexPath.row + 7];
            UIImage* image = [UIImage imageNamed:strName];
            [[cell imageView] setImage:image];
        }
        if (indexPath.row == 2) {
            //add a switch
            _switchView = [[UISwitch alloc] initWithFrame:CGRectZero];
            [_switchView setOnTintColor:[UIColor redColor]];
            _switchView.on = [[NSUserDefaults standardUserDefaults]boolForKey:@"switchType"];
            [_switchView addTarget:self action:@selector(swChange:) forControlEvents:UIControlEventValueChanged];
            cell.accessoryView = _switchView;
        }
    }
    if (indexPath.section  == 4) {
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        NSString* strName = [NSString stringWithFormat:@"icon%ld.png",indexPath.row + 16];
        UIImage* image = [UIImage imageNamed:strName];
        [[cell imageView] setImage:image];
    }
    if (indexPath.section  == 5) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
        cell.textLabel.text = _arrayData[indexPath.section][indexPath.row];
        cell.textLabel.font = [UIFont systemFontOfSize:20];
        cell.textLabel.textColor = [UIColor redColor];
        cell.textLabel.textAlignment = NSTextAlignmentCenter;
    }
    //cell.backgroundColor = [UIColor clearColor];
    
    return cell;
}

//设置行的高度
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    //获取分区
    if (indexPath.section == 0) {
        return 160;
    }
    else if ((indexPath.section == 2 || indexPath.section == 3) && indexPath.row == 0) {
        return 40;
    }
    else {
        return 60;
    }
}

//组间距

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 0;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    UIView *headerView = [[UIView alloc] init];
    headerView.backgroundColor = [UIColor clearColor];
    return headerView;
}

//脚视图高度
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 5;
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
    UIView *footerView = [[UIView alloc] init];
    footerView.backgroundColor = [UIColor clearColor];
    return footerView;
}

//保存switch开关在本地
- (void) swChange:(UISwitch*)Switch{

    BOOL isOn = [ [ NSUserDefaults standardUserDefaults ] boolForKey:@"switchType" ];
    isOn = !isOn;
    [[NSUserDefaults standardUserDefaults]setBool:isOn forKey:@"switchType"];
    _switchView.on = isOn;
}

//- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
//    if (indexPath.section == 0) {
//        UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
//        UIView *myView = [[UIView alloc] initWithFrame:CGRectMake(10.0f,10.0f,100.0f,30.0f)];
//        myView.backgroundColor = [UIColor orangeColor];
//        [myView setTag:-1];
//
//        [cell addSubview:myView];
//    }
//}
//
//- (void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath {
//    if (indexPath.section == 1) {
//    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
//    UIView *myView = [cell viewWithTag:-1];
//    [myView removeFromSuperview];
//    }
//}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
