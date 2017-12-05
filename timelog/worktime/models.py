from django.db import models


class WorkTime(models.Model):
    name = models.CharField('work name', max_length=128)
    work_description = models.TextField('work description')
    started_at = models.DateTimeField('work started at')
    ended_at = models.DateTimeField('work ended at')
    created_at = models.DateTimeField('created at', auto_now_add=True)

    def __str__(self):
        return self.name
