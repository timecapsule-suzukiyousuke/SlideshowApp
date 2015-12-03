//
//  ViewController.m
//  SlideshowApp
//
//  Created by UedaTakeshi on 2015/12/03.
//  Copyright © 2015年 Ueda Takeshi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    UIImageView *aImageView;
    NSInteger countNumber;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    countNumber = 0;
    [self setupBackground];
    [self setupButton];
}
-(void)setupBackground{
    aImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 320, 500)];
    aImageView.image = [UIImage imageNamed:@"santa0.png"];
    [self.view addSubview:aImageView];
}

-(void)setupButton{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(0,0, 60, 20);
    button.center = CGPointMake(280, 510);
    [button setTitle:@"Button" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(changeImageUsingString:)
     forControlEvents:UIControlEventTouchUpInside];
    [button setImage: [UIImage imageNamed:@"button.png"] forState:UIControlStateNormal];
     [self.view addSubview:button];
    
     
     UIButton *button2 = [UIButton buttonWithType:UIButtonTypeCustom];
     button2.frame = CGRectMake(0, 0, 60, 20);
     button2.center = CGPointMake(40, 510);
     [button2 setTitle:@"Button2" forState:UIControlStateNormal];
    [button2 addTarget:self action:@selector(changeImageUsingIf:)
      forControlEvents:UIControlEventTouchUpInside];
    [button2 setImage: [UIImage imageNamed:@"button2.png"] forState:UIControlStateNormal];
    [self.view addSubview:button2];
    
    }
-(void)changeImageUsingString:(id)sender{
     countNumber++;
    
    aImageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"santa%ld.png",(long)countNumber]];
    if (countNumber==2) {
        countNumber = -1;
    }
    
}
-(void)changeImageUsingIf:(id)sender{
    countNumber++;
    if (countNumber==1) {
        aImageView.image = [UIImage imageNamed:@"santa2.png"];
    } else if (countNumber==2) {
        aImageView.image = [UIImage imageNamed:@"santa1.png"];
    } else if (countNumber==3) {
        aImageView.image = [UIImage imageNamed:@"santa0.png"];
        countNumber = 0;
    }
}
    




 








- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
