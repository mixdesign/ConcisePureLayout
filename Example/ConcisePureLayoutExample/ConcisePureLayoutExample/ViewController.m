//
//  ViewController.m
//  ConcisePureLayoutExample
//
//  Created by Almas Adilbek on 11/7/15.
//  Copyright © 2015 Mixdesign. All rights reserved.
//

#import "ViewController.h"
#import "ALView+PureLayout.h"
#import "UIView+ConcisePureLayout.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Configure view controller.
    self.edgesForExtendedLayout = UIRectEdgeNone;

    // Build UIs.

    // Scrollview.
    UIScrollView *scrollView = [UIScrollView newAutoLayoutView];
    scrollView.showsVerticalScrollIndicator = YES;
    scrollView.alwaysBounceVertical = YES;
    [self.view addSubview:scrollView];
    [scrollView autoPinEdgesToSuperviewEdges];

    // Content view.
    UIView *contentView = [UIView newAutoLayoutView];
    [scrollView addSubview:contentView];
    [contentView aa_sameWidthWith:self.view];
    [contentView autoPinEdgesToSuperviewEdges];

    // Header background.
    UIImageView *headerView = [UIImageView newAutoLayoutView];
    headerView.contentMode = UIViewContentModeScaleAspectFill;
    headerView.clipsToBounds = YES;
    [headerView aa_setHeight:377];
    headerView.image = [UIImage imageNamed:@"profileBg.png"];
    [contentView addSubview:headerView];
    [headerView aa_superviewTop:0];
    [headerView aa_superviewFitWidth];

    // Avatar container.
    UIImageView *avatarContainer = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"avatarCircleBackground.png"]];
    [avatarContainer aa_setDimensions];
    [contentView addSubview:avatarContainer];
    [avatarContainer aa_pinUnderView:headerView offset:-100];
    [avatarContainer aa_centerHorizontal];

    // Avatar view.
    UIImageView *avatarView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"almasAvatar.png"]];
    [avatarView aa_setDimensions];
    [avatarContainer addSubview:avatarView];
    [avatarView aa_centerInSuperview];

    // Username.
    UILabel *usernameLabel = [UILabel newAutoLayoutView];
    usernameLabel.backgroundColor = [UIColor clearColor];
    usernameLabel.font = [UIFont systemFontOfSize:16];
    usernameLabel.textColor = [UIColor blackColor];
    usernameLabel.text = @"ALMAS ADILBEK";
    [contentView addSubview:usernameLabel];
    [usernameLabel aa_pinUnderView:avatarContainer offset:12];
    [usernameLabel aa_centerHorizontal];

    // Profession.
    UILabel *professionLabel = [UILabel newAutoLayoutView];
    professionLabel.backgroundColor = [UIColor clearColor];
    professionLabel.font = [UIFont systemFontOfSize:12];
    professionLabel.textColor = [UIColor lightGrayColor];
    professionLabel.text = @"Developer | Designer";
    [contentView addSubview:professionLabel];
    [professionLabel aa_pinUnderView:usernameLabel];
    [professionLabel aa_centerHorizontal];

    // About title.
    const CGFloat pageMargin = 25;

    UILabel *aboutTitleLabel = [UILabel newAutoLayoutView];
    aboutTitleLabel.backgroundColor = [UIColor clearColor];
    aboutTitleLabel.font = [UIFont boldSystemFontOfSize:12];
    aboutTitleLabel.textColor = [UIColor orangeColor];
    aboutTitleLabel.text = @"ABOUT ME";
    [contentView addSubview:aboutTitleLabel];
    [aboutTitleLabel aa_superviewLeft:pageMargin];
    [aboutTitleLabel aa_pinUnderView:professionLabel offset:20];

    // About description.
    UILabel *aboutTextLabel = [UILabel newAutoLayoutView];
    aboutTextLabel.backgroundColor = [UIColor clearColor];
    aboutTextLabel.font = [UIFont systemFontOfSize:14];
    aboutTextLabel.textColor = [UIColor blackColor];
    aboutTextLabel.numberOfLines = 0;
    aboutTextLabel.lineBreakMode = NSLineBreakByWordWrapping;

    NSMutableParagraphStyle *paragraphStyles = [[NSMutableParagraphStyle alloc] init];
    paragraphStyles.alignment                = NSTextAlignmentJustified;
    paragraphStyles.firstLineHeadIndent      = 0.001f;
    paragraphStyles.lineSpacing = 5;
    NSString *stringTojustify                = @"Hi, let me tell about myself.\nI am a hardworking, self motivated, perfectionist, readily embracing cutting-edge technology, native iOS developer with more than 4 years of experience and a real passion for mobile application development. I am extremely focused on quality and maintainability when it comes to code and application architecture. I’m a designer as I a developer, crafting every single UI pixel for my work. I’m also fluent in standards-based web design.";
    NSDictionary *attributes                 = @{NSParagraphStyleAttributeName: paragraphStyles};
    NSAttributedString *attributedString     = [[NSAttributedString alloc] initWithString:stringTojustify attributes:attributes];

    aboutTextLabel.attributedText = attributedString;
    [contentView addSubview:aboutTextLabel];
    [aboutTextLabel aa_superviewFitWidthWithInset:pageMargin];
    [aboutTextLabel aa_left:aboutTitleLabel];
    [aboutTextLabel aa_pinUnderView:aboutTitleLabel offset:10];

    // # Social footer.

    // Comments.
    UIView *commentsView = [self iconTextViewWithIcon:@"iconComment.png" text:@"87"];
    [contentView addSubview:commentsView];
    [commentsView aa_superviewRight:pageMargin];
    [commentsView aa_pinUnderView:aboutTextLabel offset:20];
    [commentsView aa_superviewBottom:30]; // Set contentView content bottom constraint.

    // Likes
    UIView *likesView = [self iconTextViewWithIcon:@"iconLove.png" text:@"1,573"];
    [contentView addSubview:likesView];
    [likesView aa_pinBeforeView:commentsView offset:15];
    [likesView aa_verticalAlignWithView:commentsView];

    // Easy!
}

#pragma mark -
#pragma mark Helper

- (UIView *)iconTextViewWithIcon:(NSString *)iconName text:(NSString *)text {
    UIView * view = [UIView newAutoLayoutView];

    UIImageView *iconView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:iconName]];
    [iconView aa_setDimensions];
    [view addSubview:iconView];
    [iconView aa_superviewLeft:0];
    [iconView aa_superviewTop:0];
    [iconView aa_superviewBottom:0];

    UILabel *textLabel = [UILabel newAutoLayoutView];
    textLabel.backgroundColor = [UIColor clearColor];
    textLabel.font = [UIFont systemFontOfSize:13];
    textLabel.textColor = [UIColor grayColor];
    textLabel.text = text;
    [view addSubview:textLabel];
    [textLabel aa_pinAfterView:iconView offset:5];
    [textLabel aa_verticalAlignWithView:iconView];
    [textLabel aa_superviewRight:0];

    return view;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
