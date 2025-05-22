from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('citizen', '0001_initial'),
    ]

    operations = [
        migrations.DeleteModel(
            name='ComplaintUpdate',
        ),
    ]
