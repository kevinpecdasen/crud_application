Instructions.
<ul>
    <li>Edit the .env file and setup the database essentials such as the db name, username, password.</li>
    <li>I have included an export "straightforward_laravel_crud.sql" that can be used.</li>
    <li>I have also setup a factory and a seeder to populate the contents of the store table. This can be used by running the command <code>php artisan db:seed --class=StoreSeeder</code></li>
    <li>Run composer install and npm install</li>
</ul>

Notes
<ul>
    <li>I manually created the registration, login, logout functionalities for the sake of this test program though I believe that it can be easily done by installing laravel breeze.</li>
    <li>I have added bootstrap 5 for a bit of styling.</li>
    <li>Form validation is done by Request Classes.</li>
</ul>
