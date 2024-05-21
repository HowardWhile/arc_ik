#ifndef MYJOINTBAR_H
#define MYJOINTBAR_H

#include <QWidget>

namespace Ui {
class MyJointBar;
}

class MyJointBar : public QWidget
{
    Q_OBJECT

public:
    explicit MyJointBar(QWidget *parent = nullptr);
    ~MyJointBar();

private:
    Ui::MyJointBar *ui;
};

#endif // MYJOINTBAR_H
