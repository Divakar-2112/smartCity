step 1:

    // to check python version

        python3 --version


step 2:

   // to install django

        pip install django

    
step 3:

   // to check django version

        django-admin --version

step 4:

    // to create database

        create database db_smartCity;

step 5:

    // 1. to install jazzmin package for superadmin package

         pip install django-jazzmin


    // 2. to install mysqlclient for connecting a database

        pip install mysqlclient


    // 3. to install pillow package

        pip install pillow


    // 4. to migrate created models to database

        python3 manage.py makemigrations

        python3 manage.py migrate

step 6:

    // to run a project

        python3 manage.py runserver