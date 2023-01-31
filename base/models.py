from django.db import models
from django.contrib.auth.models import User

# Create your models here.

class State(models.Model):
    id = models.CharField(max_length=255, blank=True, null=True)
    state_code = models.IntegerField(primary_key=True)
    state_name_en = models.CharField(max_length=255, blank=True, null=True)
    state_name_local = models.CharField(max_length=255, blank=True, null=True)
    state_or_ut = models.CharField(max_length=255, blank=True, null=True)

    def __str__(self):
        return self.state_name_en

    class Meta:
        managed = False
        db_table = 'state'


class District(models.Model):
    slno = models.CharField(max_length=255, blank=True, null=True)
    state_code = models.IntegerField()
    state_name = models.CharField(max_length=255, blank=True, null=True)
    district_code = models.IntegerField(primary_key=True)
    district_name = models.CharField(max_length=255, blank=True, null=True)
    f6 = models.CharField(db_column='F6', max_length=255, blank=True, null=True)  # Field name made lowercase.

    def __str__(self):
        return self.district_name

    class Meta:
        managed = False
        db_table = 'district'

class Profile(models.Model):
    userid = models.ForeignKey(User, models.DO_NOTHING, db_column='userid', blank=True, null=True)
    address = models.CharField(max_length=250, blank=True, null=True)
    mobileno = models.BigIntegerField(blank=True, null=True)
    district = models.ForeignKey(District, models.DO_NOTHING, db_column='district', blank=True, null=True)
    state = models.ForeignKey('State', models.DO_NOTHING, db_column='state', blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'profile'


