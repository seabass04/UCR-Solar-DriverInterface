#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <QQuickWidget>
#include <QPalette>
#include <QIcon>


MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    this->setWindowTitle("Driver Interface");

    QPalette pal = palette(); //set backgroud color
    pal.setColor(QPalette::Window, Qt::black);
    this->setPalette(pal);

    ui->velocitygauge->setSource(QUrl::fromLocalFile(":/velocityGauge.qml")); //left gauge
    ui->velocitygauge->show();
    ui->velocityLabel->setText("Speed \n MPH");
    ui->velocityLabel->setStyleSheet("QLabel { color : white; }");

    ui->gauge2->setSource(QUrl::fromLocalFile(":/gauge2.qml")); //right gauge
    ui->gauge2->show();
}

MainWindow::~MainWindow()
{
    delete ui;
}

