//
//  ViewController.m
//  TimerCollapsibleList-Objective-C
//
//  Created by Evan Wang on 2022/3/10.
//

#import "ViewController.h"
#import "DataSource.h"

@interface ViewController()
@property(strong,nonatomic) UITableView* tableView;
@property(strong,nonatomic) DataSource* dataSource;
@property(strong,nonatomic) NSISO8601DateFormatter* formatter;
@end

@implementation ViewController

- (DataSource *)dataSource {
    if (!_dataSource) {
        _dataSource = [DataSource new];
    }
    return _dataSource;
}

- (NSISO8601DateFormatter *)formatter {
    if (!_formatter) {
        _formatter = [[NSISO8601DateFormatter alloc] init];
    }
    return _formatter;
}

- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
        [_tableView registerClass:UITableViewCell.class forCellReuseIdentifier:NSStringFromClass(UITableViewCell.class)];
        [_tableView registerClass:UITableViewHeaderFooterView.class forHeaderFooterViewReuseIdentifier:NSStringFromClass(UITableViewHeaderFooterView.class)];
        _tableView.dataSource = self;
        _tableView.delegate = self;
    }
    return _tableView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.tableView];
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    [self.tableView setFrame:self.view.bounds];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.dataSource.sections.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataSource.sections[section].items.count;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    UITableViewHeaderFooterView *headerView = [tableView dequeueReusableHeaderFooterViewWithIdentifier:NSStringFromClass(UITableViewHeaderFooterView.class)];
    SectionItem *sectionModel = self.dataSource.sections[section];
    UIListContentConfiguration *content = [headerView defaultContentConfiguration];
    NSString *timeText = [self.formatter stringFromDate:sectionModel.date];
    content.text = timeText;
    [headerView setContentConfiguration:content];
    return  headerView;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass(UITableViewCell.class) forIndexPath:indexPath];
    CellItem *item = self.dataSource.sections[indexPath.section].items[indexPath.row];
    UIListContentConfiguration *content = [cell defaultContentConfiguration];
    NSString *timeText = [self.formatter stringFromDate:item.date];
    content.text = timeText;
    [cell setContentConfiguration:content];
    return cell;
}
@end
