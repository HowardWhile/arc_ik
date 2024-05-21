#include "myjointbar.h"
#include "ui_myjointbar.h"

MyJointBar::MyJointBar(QWidget *parent) :
    QWidget(parent),
    ui(new Ui::MyJointBar)
{
    ui->setupUi(this);
}

MyJointBar::~MyJointBar()
{
    delete ui;
}
