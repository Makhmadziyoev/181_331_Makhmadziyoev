#ifndef FILE_H
#define FILE_H
#include <QString>
#include <QObject>

class File : public QObject
{
    Q_OBJECT
public:
    explicit File(QObject *parent = nullptr);

signals:

public slots:
    bool write(const QString& source);

};

#endif // FILE_H
