#ifndef _PATH_LABEL_H_
#define _PATH_LABEL_H_

#include <QLabel>

struct PathLabel :
	public QLabel
{
	PathLabel(const QString &_text, QWidget *_parent);
	~PathLabel(void);
	
public slots:
	void forwardPath(const QString &_pathName);
	void backPath();

private:
	void updateLabelText();

private:
	QStringList path;
};

#endif
