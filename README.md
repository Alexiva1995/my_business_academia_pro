# My Business Academia Pro ![Status badge](https://img.shields.io/badge/status-complete-green)

<p align="center"><a href="https://mybusinessacademypro.com/academia/" target="_blank"><img src="https://mybusinessacademypro.com/wp-content/uploads/2020/06/beyond-academy-150x150.png" ></a></p>
✨ E-learning platform with streaming, which allows the control of an academy oriented to live events, a learning system for courses with their respective evaluations. Integration with payment system such as Stripe, Conpaymets



## 🚀 Installation
1. Clone this project.
2. Go to the project folder `cd my_business_academia_pro`
3. Create the `.env` file from the `.env.example` file found in the root of the project (you must put your credentials to connect to your local database manager)
4. Display the command line and run the command `composer install` to install the necessary packages
5. Run the database script in your database manager. You can find the file in the `extra_files` folder with the name of `mbapro_academy`
6. In the `.env` file you must make some additional configurations. First you must configure the `BROADCAST DRIVER` option with the value `pusher`.  Then you must configure the credentials of the payment processors that are used in the system `(Stripe, Paypal and Coinpayments)` as well as the `Pusher` credentials. These data can be found in the folder `extra_files` in a file with the name `credentials`
7. You must replace the `IPNController.php` and `Ajax Controller.php` files found in the path `vendor/hexters/coinpayment/src/Http/Controllers` for the operation of the payment processor Coinpayment. The files that you must paste can be found in the folder `extra_files`
8. Additionally in the `.env` file you must configure a connection to a second database that is used for the streaming system. You must add this line to the database section `DB_STREAMING_DATABASE=streaming`. You can get the database script in the `extra_files` folder with the name `mbapro_streaming`. You must run it in your database manager.
9. Turn on the server for the locale enviroment with `php artisan serve` command

## 🛠 Deployment
1. Once the installation and necessary configurations are finished, you can upload the folder of the complete project to a remote server

## 🦀 Database
You can find the database file in the `extra_files` folder with the name of `mbapro_academy`

## 🧾 License
My Business Academy Pro All Rigth Reserved ©

## ✨ Programming languages and framework
* PHP Laravel Versión 7.28.4
* MySQL
* JavaScript
* Jquery
* HTML5
* AJAX
