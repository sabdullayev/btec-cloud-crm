<?php
return [
  'database' => [
    'host' => 'localhost',
    'port' => '',
    'charset' => NULL,
    'dbname' => 'espocrm',
    'user' => 'root',
    'password' => '',
    'platform' => 'Mysql'
  ],
  'smtpPassword' => '',
  'logger' => [
    'path' => 'data/logs/espo.log',
    'level' => 'WARNING',
    'rotation' => true,
    'maxFileNumber' => 30,
    'printTrace' => false,
    'databaseHandler' => false
  ],
  'restrictedMode' => false,
  'cleanupAppLog' => true,
  'cleanupAppLogPeriod' => '30 days',
  'webSocketMessager' => 'ZeroMQ',
  'clientSecurityHeadersDisabled' => false,
  'clientCspDisabled' => false,
  'clientCspScriptSourceList' => [
    0 => 'https://maps.googleapis.com'
  ],
  'adminUpgradeDisabled' => false,
  'isInstalled' => true,
  'microtimeInternal' => 1780289541.597964,
  'passwordSalt' => 'ad95c6dd3ddb0b12',
  'cryptKey' => '8664ce91c33a8f5123908ff512655a69',
  'hashSecretKey' => 'a9e5c452ad7cb141b371bf4eea334957',
  'actualDatabaseType' => 'mariadb',
  'actualDatabaseVersion' => '10.4.32',
  'instanceId' => '716575c6-3d40-4d9f-aaf4-92fad0c7509c'
];
