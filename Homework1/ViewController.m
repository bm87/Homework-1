//
//  ViewController.m
//  Homework1
//
//  Created by Braulio on 05/10/14.
//  Copyright (c) 2014 utzmg. All rights reserved.
//

#import "ViewController.h"
#define nCoolPink   colorWithRed:255/255.0 green:135/255.0 blue:233/255.0 alpha:1.0
#define nCoolGreen  colorWithRed:255/255.0f green:99/255.0f blue:71/255.0f alpha:1.0
#define nCoolOrange colorWithRed:99/255.0f green:214/255.0f blue:74/255.0f alpha:1.0
#define nCoolBrown  colorWithRed:141/255.0f green:60/255.0f blue:15/255.0f alpha:1.0
#define nCoolBlue   colorWithRed:89/255.0f green:113/255.0f blue:173/255.0f alpha:10

@interface ViewController()
{
    MPMoviePlayerController *mpc;
}
@end

@implementation ViewController
@synthesize Iamgeslider;
@synthesize Slider;



-(IBAction)changecolorlabel:(id)sender{
    int randomcolor = rand() % 5;
    switch (randomcolor){
        case 1:
            self.Label1.textColor = [UIColor nCoolPink];
            break;
        case 2:
            self.Label1.textColor = [UIColor nCoolGreen];
            break;
        case 3:
            self.Label1.textColor = [UIColor nCoolOrange];
            break;
        case 4:
            self.Label1.textColor = [UIColor nCoolBrown];
            break;
        case 5:
            self.Label1.textColor = [UIColor nCoolBlue];
            break;
            
    }
}

-(IBAction)changebackground:(id)sender{
    int randombackground = rand() % 5;
    switch (randombackground) {
        case 1:
            self.view.backgroundColor = [UIColor blueColor];
            break;
        case 2:
            self.view.backgroundColor = [UIColor blackColor];
            break;
        case 3:
            self.view.backgroundColor = [UIColor orangeColor];
            break;
        case 4:
            self.view.backgroundColor = [UIColor yellowColor];
            break;
        case 5:
            self.view.backgroundColor = [UIColor greenColor];
            break;
    }
}

-(IBAction)changeimage:(id)sender{
    int randomimage = rand() % 5;
    switch (randomimage) {
        case 1:
            self.Label2.image = [UIImage imageNamed:(@"1.jpg")];
            break;
        case 2:
            self.Label2.image = [UIImage imageNamed:(@"2.jpg")];
            break;
        case 3:
            self.Label2.image = [UIImage imageNamed:(@"3.jpg")];
            break;
        case 4:
            self.Label2.image = [UIImage imageNamed:(@"4.jpg")];
            break;
        case 5:
            self.Label2.image = [UIImage imageNamed:(@"5.jpg")];
            break;
    }
}


- (IBAction)playButton:(id)sender {
    NSString *stringPath = [[NSBundle mainBundle]pathForResource:@"video" ofType:@"mp4"];
    NSURL *url = [NSURL fileURLWithPath:stringPath];
    mpc = [[MPMoviePlayerController alloc]initWithContentURL:url];
    [mpc setMovieSourceType:MPMovieSourceTypeFile];
    [[self view]addSubview:mpc.view];
    [mpc play];
           }

- (IBAction)Slidermove:(id)sender {
    Iamgeslider.alpha = Slider.value;
}

- (IBAction)segmentedClicked:(UISegmentedControl *)sender {
    
    if(_SegmentcontrolX.selectedSegmentIndex ==0 ){
        
        self.ImageviewsegmentX.image = [UIImage imageNamed: @"chivas.jpg"];
    }
    
    if(_SegmentcontrolX.selectedSegmentIndex ==1 ){
        
        self.ImageviewsegmentX.image = [UIImage imageNamed: @"atlas.jpg"];
    }
    
}

-(IBAction)add:(id)sender{
    count = count+1;
    labelcount.text = [NSString stringWithFormat:@"%i",count];
}

-(IBAction)rest:(id)sender{
    count = count-1;
    labelcount.text = [NSString stringWithFormat:@"%i",count];
}

-(IBAction)clean:(id)sender{
    count = 0;
    labelcount.text = [NSString stringWithFormat:@"%i",count];
}


- (void)viewDidLoad {
    count = 0;
    labelcount.text =@"0";
    
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}





@end
