<?php
// Start a Session
//if( !session_id() ) @session_start();

// Initialize Composer Autoload
require_once 'vendor/autoload.php';

use Respect\Validation\Validator as v;
use Respect\Validation\Exceptions\ValidationException;

/*$validator = v::key('username', v::stringType()->notEmpty())
    ->key('email', v::email())
    ->key('password', v::stringType()->notEmpty())
    ->key('terms', v::trueVal())
    ->keyValue('password_konfirmation', 'equals', 'password');

try {
    $validator->assert([
            'username' => '',
            'email' => '',
            'password' => '',
            'terms' => '',
            'password_konfirmation' => '',
    ]);
} catch (ValidationException $exception) {
    $exception->findMessages([
        'username' => 'Введите имя',
        'email' => 'Не верный email',
        'password' => 'Введите пароль',
        'terms' => 'Согласитесь с правилами',
        'password_konfirmation' => 'Пароли не совпадают',
    ]);

    flash()->error($exception->getMessages());
}

echo flash();*/

$db = new \PDO('mysql:host=localhost;dbname=proj', 'root', '');

$auth = new \Delight\Auth\Auth($db);

try {
    $userId = $auth->register('serhii.tytar@gmail.com', '123', 'titar', function ($selector, $token) {

        $url = 'http://www.proj/verify_email?selector=' . \urlencode($selector) . '&token=' . \urlencode($token);

        echo $url; exit;
    });

    // we have signed up a new user with the ID `$userId`
}
catch (\Delight\Auth\UserAlreadyExistsException $e) {
    flash()->error(['sorry, this dude already registered']);
}
catch (\Delight\Auth\TooManyRequestsException $e) {
    flash()->error(['many request']);
}
?>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<?= flash() ?>
<!--
<form action="">
    <input type="text">
    <input type="text">
    <input type="text">
</form>-->
