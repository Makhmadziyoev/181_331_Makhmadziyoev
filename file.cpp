#include "file.h"
#include <QDebug>
#include <QFile>

File::File(QObject *parent) : QObject(parent)
{

}

bool File::write(const QString &source)
{
    qDebug() << source;

    QFile file("F:/181_331_Makhmadziyoev/181_331_Makhmadziyoev/page.html");
    if(file.open(QIODevice::WriteOnly | QIODevice::Text))
    {
       QTextStream stream(&file);
       stream << source;
       file.close();
       qDebug() << "HTML файл сохранен";
    }
    return true;
}

