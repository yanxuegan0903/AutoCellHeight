//
//  ViewController.m
//  AutoCellHeight
//
//  Created by vsKing on 2017/4/1.
//  Copyright © 2017年 vsKing. All rights reserved.
//

#import "ViewController.h"
#import "HeightCell.h"
#import "HeightModel.h"


@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;

@property (nonatomic, strong) NSArray<HeightModel *> *dataSource;

@property (nonatomic, strong) HeightCell *proCell;

@end

@implementation ViewController

- (NSArray<HeightModel *> *)dataSource{
    if (!_dataSource) {
        _dataSource = @[
                        
                        [[HeightModel alloc] initWithText:@"在那一片投射着被柳树枝叶切割而开\n的明亮光斑的空地中，数百道身影静静盘坐，这是一群略显青涩的少年少女，而此时，他们都是面目认真的微闭着双目，鼻息间的呼吸，呈现一种极有节奏之感，而随着呼\n吸的吐纳，他们的周身，仿佛是有着肉眼难辨的细微光芒出现。"],
                        [[HeightModel alloc] initWithText:@"微\n风\n悄\n然\n的\n吹\n拂\n而\n来"],
                        [[HeightModel alloc] initWithText:@"一名靠前的灰衣少年似乎与石台上的少年颇为熟悉，他听得大伙的窃窃私语，不由得得意一笑，压低声音道：“牧哥可是被选拔出来参加过“灵路”的人，我们整个北灵境中，可就牧哥一人有名额，\n你们应该也知道参加“灵路”的都是些什么变态吧？当年我们这北灵境可是因为此事沸腾了好一阵的，从那里出来的人，最后基本全部都是被“五大院”给预定了的。"],
                        [[HeightModel alloc] initWithText:@"不过就在\n他们说话间，一块碎木突然从石台上飞下，然后甩在那灰衣少年额头上，一道轻笑的骂声随之传来：“苏凌，你们真当我是摆设吗？信不信我告诉莫师，让你们接下来的假期都留在东院补习修炼？”众多\n少年少女忙抬起头来，只见得石台上修炼中的少年已经睁开了双目，漆黑的双目犹如夜空，其中灵气十足，在其嘴角，也是噙着一抹笑容，那笑容阳光而柔和，犹如点睛之笔一般，令得少年的面目，变得有些帅气起来。不得不说，这是一个挺有味道的少年郎。“嘿嘿，牧尘哥别啊，好不容易放点假，我还指望着回去乐乐呢，我爹要\n是知道我干这么丢人的事，非打死我不可。”那灰衣少年捂着额头，嘿嘿直笑。"]
                        
                        
                        
                        ];
    }
    
    return _dataSource;
}



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UITableView * tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    [self.view addSubview:tableView];
    [tableView registerClass:[HeightCell class] forCellReuseIdentifier:NSStringFromClass([HeightCell class])];
    tableView.delegate = self;
    tableView.dataSource = self;
    tableView.estimatedRowHeight = 44;
    self.proCell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([HeightCell class])];
    self.tableView = tableView;
    
    
    
    
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.dataSource count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    HeightCell * cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([HeightCell class]) forIndexPath:indexPath];
    [self config:cell indexPath:indexPath];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    HeightCell * cell = self.proCell;
    
    
    [self config:cell indexPath:indexPath];

    
    CGFloat height = [cell.label.text boundingRectWithSize:CGSizeMake(self.view.frame.size.width, 10000.0f) options:NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading attributes:@{NSFontAttributeName:cell.label.font} context:nil].size.height;
    
    
    NSLog(@"height = %f",height);
//
//    
//    
//    CGFloat fittingHeight = [cell.contentView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize].height;
//    
//    NSLog(@"height = %f",fittingHeight);
//    
//    return fittingHeight + 1;
    
    
    return height + 1;
}



- (void)config:(HeightCell *)cell indexPath:(NSIndexPath *)indexPath{
    cell.model = [self.dataSource objectAtIndex:indexPath.row];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
