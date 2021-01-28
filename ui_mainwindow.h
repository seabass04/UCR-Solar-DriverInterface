/********************************************************************************
** Form generated from reading UI file 'mainwindow.ui'
**
** Created by: Qt User Interface Compiler version 5.15.2
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_MAINWINDOW_H
#define UI_MAINWINDOW_H

#include <QtCore/QVariant>
#include <QtQuickWidgets/QQuickWidget>
#include <QtWidgets/QApplication>
#include <QtWidgets/QLabel>
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QStatusBar>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_MainWindow
{
public:
    QWidget *centralwidget;
    QQuickWidget *velocitygauge;
    QQuickWidget *gauge2;
    QLabel *velocityLabel;
    QStatusBar *statusbar;

    void setupUi(QMainWindow *MainWindow)
    {
        if (MainWindow->objectName().isEmpty())
            MainWindow->setObjectName(QString::fromUtf8("MainWindow"));
        MainWindow->resize(800, 600);
        centralwidget = new QWidget(MainWindow);
        centralwidget->setObjectName(QString::fromUtf8("centralwidget"));
        velocitygauge = new QQuickWidget(centralwidget);
        velocitygauge->setObjectName(QString::fromUtf8("velocitygauge"));
        velocitygauge->setGeometry(QRect(30, 120, 261, 241));
        velocitygauge->setResizeMode(QQuickWidget::SizeRootObjectToView);
        gauge2 = new QQuickWidget(centralwidget);
        gauge2->setObjectName(QString::fromUtf8("gauge2"));
        gauge2->setGeometry(QRect(310, 120, 261, 241));
        gauge2->setResizeMode(QQuickWidget::SizeRootObjectToView);
        velocityLabel = new QLabel(centralwidget);
        velocityLabel->setObjectName(QString::fromUtf8("velocityLabel"));
        velocityLabel->setGeometry(QRect(150, 200, 51, 31));
        MainWindow->setCentralWidget(centralwidget);
        statusbar = new QStatusBar(MainWindow);
        statusbar->setObjectName(QString::fromUtf8("statusbar"));
        MainWindow->setStatusBar(statusbar);

        retranslateUi(MainWindow);

        QMetaObject::connectSlotsByName(MainWindow);
    } // setupUi

    void retranslateUi(QMainWindow *MainWindow)
    {
        MainWindow->setWindowTitle(QCoreApplication::translate("MainWindow", "MainWindow", nullptr));
        velocityLabel->setText(QCoreApplication::translate("MainWindow", "TextLabel", nullptr));
    } // retranslateUi

};

namespace Ui {
    class MainWindow: public Ui_MainWindow {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_MAINWINDOW_H
