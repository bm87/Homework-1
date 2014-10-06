//
//  ViewController.h
//  Homework1
//
//  Created by Braulio on 05/10/14.
//  Copyright (c) 2014 utzmg. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>

@interface ViewController : UIViewController {
    int count;
    
    __weak IBOutlet UILabel *labelcount;
    
}

@property (weak, nonatomic) IBOutlet UILabel *Label1;
@property (weak, nonatomic) IBOutlet UIImageView *Label2;
@property (weak, nonatomic) IBOutlet UIImageView *Iamgeslider;
@property (weak, nonatomic) IBOutlet UISlider *Slider;
@property (weak, nonatomic) IBOutlet UISegmentedControl *SegmentcontrolX;
@property (weak, nonatomic) IBOutlet UIImageView *ImageviewsegmentX;


- (IBAction)playButton:(id)sender;

-(IBAction)Slidermove:(id)sender;

-(IBAction)changecolorlabel:(id)sender;

-(IBAction)changebackground:(id)sender;

-(IBAction)changeimage:(id)sender;

-(IBAction)add:(id)sender;

-(IBAction)rest:(id)sender;

-(IBAction)clean:(id)sender;




@end

