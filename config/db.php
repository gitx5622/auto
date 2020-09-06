<?php

return [
    'class' => 'yii\db\Connection',
    'dsn' => 'mysql://root:1165@db:3306/cicd',
//    'username' => 'root',
//    'password' => 'Password123#@!',
    'charset' => 'utf8',
    'attributes' => [PDO::ATTR_CASE => PDO::CASE_LOWER],
    // Schema cache options (for production environment)
    //'enableSchemaCache' => true,
    //'schemaCacheDuration' => 60,
    //'schemaCache' => 'cache',

];
