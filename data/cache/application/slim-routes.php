<?php return array (
  0 => 
  array (
    'GET' => 
    array (
      '/espocrm/api/v1/Activities/upcoming' => 'route3',
      '/espocrm/api/v1/Activities' => 'route4',
      '/espocrm/api/v1/Timeline' => 'route5',
      '/espocrm/api/v1/Timeline/busyRanges' => 'route6',
      '/espocrm/api/v1/' => 'route15',
      '/espocrm/api/v1/App/user' => 'route16',
      '/espocrm/api/v1/App/about' => 'route18',
      '/espocrm/api/v1/Metadata' => 'route19',
      '/espocrm/api/v1/I18n' => 'route20',
      '/espocrm/api/v1/Settings' => 'route21',
      '/espocrm/api/v1/Stream' => 'route24',
      '/espocrm/api/v1/GlobalStream' => 'route25',
      '/espocrm/api/v1/GlobalSearch' => 'route26',
      '/espocrm/api/v1/Admin/jobs' => 'route37',
      '/espocrm/api/v1/CurrencyRate' => 'route43',
      '/espocrm/api/v1/Email/inbox/notReadCounts' => 'route75',
      '/espocrm/api/v1/Email/insertFieldData' => 'route76',
      '/espocrm/api/v1/EmailAddress/search' => 'route77',
      '/espocrm/api/v1/Oidc/authorizationData' => 'route87',
    ),
    'POST' => 
    array (
      '/espocrm/api/v1/App/destroyAuthToken' => 'route17',
      '/espocrm/api/v1/Admin/rebuild' => 'route35',
      '/espocrm/api/v1/Admin/clearCache' => 'route36',
      '/espocrm/api/v1/Action' => 'route45',
      '/espocrm/api/v1/MassAction' => 'route46',
      '/espocrm/api/v1/Export' => 'route49',
      '/espocrm/api/v1/Import' => 'route52',
      '/espocrm/api/v1/Import/file' => 'route53',
      '/espocrm/api/v1/Attachment/fromImageUrl' => 'route62',
      '/espocrm/api/v1/Email/importEml' => 'route66',
      '/espocrm/api/v1/Email/sendTest' => 'route67',
      '/espocrm/api/v1/Email/inbox/read' => 'route68',
      '/espocrm/api/v1/Email/inbox/important' => 'route70',
      '/espocrm/api/v1/Email/inbox/inTrash' => 'route72',
      '/espocrm/api/v1/UserSecurity/apiKey/generate' => 'route80',
      '/espocrm/api/v1/UserSecurity/password/recovery' => 'route82',
      '/espocrm/api/v1/UserSecurity/password/generate' => 'route83',
      '/espocrm/api/v1/User/passwordChangeRequest' => 'route84',
      '/espocrm/api/v1/User/changePasswordByRequest' => 'route85',
      '/espocrm/api/v1/Oidc/backchannelLogout' => 'route88',
    ),
    'PATCH' => 
    array (
      '/espocrm/api/v1/Settings' => 'route22',
    ),
    'PUT' => 
    array (
      '/espocrm/api/v1/Settings' => 'route23',
      '/espocrm/api/v1/CurrencyRate' => 'route44',
      '/espocrm/api/v1/Kanban/order' => 'route58',
      '/espocrm/api/v1/UserSecurity/password' => 'route81',
    ),
    'DELETE' => 
    array (
      '/espocrm/api/v1/Email/inbox/read' => 'route69',
      '/espocrm/api/v1/Email/inbox/important' => 'route71',
      '/espocrm/api/v1/Email/inbox/inTrash' => 'route73',
    ),
  ),
  1 => 
  array (
    'GET' => 
    array (
      0 => 
      array (
        'regex' => '~^(?|/espocrm/api/v1/Activities/([^/]+)/([^/]+)/composeEmailAddressList|/espocrm/api/v1/Activities/([^/]+)/([^/]+)/([^/]+)|/espocrm/api/v1/Activities/([^/]+)/([^/]+)/([^/]+)/list/([^/]+)|/espocrm/api/v1/Meeting/([^/]+)/attendees()()()()|/espocrm/api/v1/Call/([^/]+)/attendees()()()()()|/espocrm/api/v1/TargetList/([^/]+)/optedOut()()()()()()|/espocrm/api/v1/([^/]+)/action/([^/]+)()()()()()()|/espocrm/api/v1/([^/]+)/layout/([^/]+)()()()()()()()|/espocrm/api/v1/Admin/fieldManager/([^/]+)/([^/]+)()()()()()()()()|/espocrm/api/v1/MassAction/([^/]+)/status()()()()()()()()()()|/espocrm/api/v1/Export/([^/]+)/status()()()()()()()()()()())$~',
        'routeMap' => 
        array (
          3 => 
          array (
            0 => 'route0',
            1 => 
            array (
              'parentType' => 'parentType',
              'id' => 'id',
            ),
          ),
          4 => 
          array (
            0 => 'route1',
            1 => 
            array (
              'parentType' => 'parentType',
              'id' => 'id',
              'type' => 'type',
            ),
          ),
          5 => 
          array (
            0 => 'route2',
            1 => 
            array (
              'parentType' => 'parentType',
              'id' => 'id',
              'type' => 'type',
              'targetType' => 'targetType',
            ),
          ),
          6 => 
          array (
            0 => 'route7',
            1 => 
            array (
              'id' => 'id',
            ),
          ),
          7 => 
          array (
            0 => 'route8',
            1 => 
            array (
              'id' => 'id',
            ),
          ),
          8 => 
          array (
            0 => 'route10',
            1 => 
            array (
              'id' => 'id',
            ),
          ),
          9 => 
          array (
            0 => 'route31',
            1 => 
            array (
              'controller' => 'controller',
              'action' => 'action',
            ),
          ),
          10 => 
          array (
            0 => 'route32',
            1 => 
            array (
              'controller' => 'controller',
              'name' => 'name',
            ),
          ),
          11 => 
          array (
            0 => 'route38',
            1 => 
            array (
              'scope' => 'scope',
              'name' => 'name',
            ),
          ),
          12 => 
          array (
            0 => 'route47',
            1 => 
            array (
              'id' => 'id',
            ),
          ),
          13 => 
          array (
            0 => 'route50',
            1 => 
            array (
              'id' => 'id',
            ),
          ),
        ),
      ),
      1 => 
      array (
        'regex' => '~^(?|/espocrm/api/v1/Kanban/([^/]+)|/espocrm/api/v1/Attachment/file/([^/]+)()|/espocrm/api/v1/User/([^/]+)/stream/own()()|/espocrm/api/v1/User/([^/]+)/acl()()()|/espocrm/api/v1/([^/]+)/([^/]+)()()()|/espocrm/api/v1/([^/]+)()()()()()|/espocrm/api/v1/([^/]+)/([^/]+)/followers()()()()()|/espocrm/api/v1/([^/]+)/([^/]+)/stream()()()()()()|/espocrm/api/v1/([^/]+)/([^/]+)/posts()()()()()()()|/espocrm/api/v1/([^/]+)/([^/]+)/updateStream()()()()()()()()|/espocrm/api/v1/([^/]+)/([^/]+)/([^/]+)()()()()()()()())$~',
        'routeMap' => 
        array (
          2 => 
          array (
            0 => 'route59',
            1 => 
            array (
              'entityType' => 'entityType',
            ),
          ),
          3 => 
          array (
            0 => 'route60',
            1 => 
            array (
              'id' => 'id',
            ),
          ),
          4 => 
          array (
            0 => 'route78',
            1 => 
            array (
              'id' => 'id',
            ),
          ),
          5 => 
          array (
            0 => 'route79',
            1 => 
            array (
              'id' => 'id',
            ),
          ),
          6 => 
          array (
            0 => 'route89',
            1 => 
            array (
              'controller' => 'controller',
              'id' => 'id',
            ),
          ),
          7 => 
          array (
            0 => 'route90',
            1 => 
            array (
              'controller' => 'controller',
            ),
          ),
          8 => 
          array (
            0 => 'route95',
            1 => 
            array (
              'entityType' => 'entityType',
              'id' => 'id',
            ),
          ),
          9 => 
          array (
            0 => 'route98',
            1 => 
            array (
              'controller' => 'controller',
              'id' => 'id',
            ),
          ),
          10 => 
          array (
            0 => 'route99',
            1 => 
            array (
              'controller' => 'controller',
              'id' => 'id',
            ),
          ),
          11 => 
          array (
            0 => 'route100',
            1 => 
            array (
              'controller' => 'controller',
              'id' => 'id',
            ),
          ),
          12 => 
          array (
            0 => 'route107',
            1 => 
            array (
              'controller' => 'controller',
              'id' => 'id',
              'link' => 'link',
            ),
          ),
        ),
      ),
    ),
    'POST' => 
    array (
      0 => 
      array (
        'regex' => '~^(?|/espocrm/api/v1/Campaign/([^/]+)/generateMailMerge|/espocrm/api/v1/Campaign/unsubscribe/([^/]+)()|/espocrm/api/v1/Campaign/unsubscribe/([^/]+)/([^/]+)()|/espocrm/api/v1/LeadCapture/([^/]+)()()()|/espocrm/api/v1/([^/]+)/action/([^/]+)()()()|/espocrm/api/v1/Admin/fieldManager/([^/]+)()()()()()|/espocrm/api/v1/MassAction/([^/]+)/subscribe()()()()()()|/espocrm/api/v1/Export/([^/]+)/subscribe()()()()()()()|/espocrm/api/v1/Import/([^/]+)/revert()()()()()()()()|/espocrm/api/v1/Import/([^/]+)/removeDuplicates()()()()()()()()()|/espocrm/api/v1/Import/([^/]+)/unmarkDuplicates()()()()()()()()()())$~',
        'routeMap' => 
        array (
          2 => 
          array (
            0 => 'route9',
            1 => 
            array (
              'id' => 'id',
            ),
          ),
          3 => 
          array (
            0 => 'route11',
            1 => 
            array (
              'id' => 'id',
            ),
          ),
          4 => 
          array (
            0 => 'route13',
            1 => 
            array (
              'emailAddress' => 'emailAddress',
              'hash' => 'hash',
            ),
          ),
          5 => 
          array (
            0 => 'route27',
            1 => 
            array (
              'apiKey' => 'apiKey',
            ),
          ),
          6 => 
          array (
            0 => 'route29',
            1 => 
            array (
              'controller' => 'controller',
              'action' => 'action',
            ),
          ),
          7 => 
          array (
            0 => 'route39',
            1 => 
            array (
              'scope' => 'scope',
            ),
          ),
          8 => 
          array (
            0 => 'route48',
            1 => 
            array (
              'id' => 'id',
            ),
          ),
          9 => 
          array (
            0 => 'route51',
            1 => 
            array (
              'id' => 'id',
            ),
          ),
          10 => 
          array (
            0 => 'route54',
            1 => 
            array (
              'id' => 'id',
            ),
          ),
          11 => 
          array (
            0 => 'route55',
            1 => 
            array (
              'id' => 'id',
            ),
          ),
          12 => 
          array (
            0 => 'route56',
            1 => 
            array (
              'id' => 'id',
            ),
          ),
        ),
      ),
      1 => 
      array (
        'regex' => '~^(?|/espocrm/api/v1/Import/([^/]+)/exportErrors|/espocrm/api/v1/Attachment/chunk/([^/]+)()|/espocrm/api/v1/Attachment/copy/([^/]+)()()|/espocrm/api/v1/EmailTemplate/([^/]+)/prepare()()()|/espocrm/api/v1/Email/([^/]+)/attachments/copy()()()()|/espocrm/api/v1/Email/inbox/folders/([^/]+)()()()()()|/espocrm/api/v1/([^/]+)()()()()()()|/espocrm/api/v1/([^/]+)/([^/]+)/followers()()()()()()|/espocrm/api/v1/([^/]+)/([^/]+)/pin()()()()()()()|/espocrm/api/v1/([^/]+)/([^/]+)/([^/]+)()()()()()()())$~',
        'routeMap' => 
        array (
          2 => 
          array (
            0 => 'route57',
            1 => 
            array (
              'id' => 'id',
            ),
          ),
          3 => 
          array (
            0 => 'route61',
            1 => 
            array (
              'id' => 'id',
            ),
          ),
          4 => 
          array (
            0 => 'route63',
            1 => 
            array (
              'id' => 'id',
            ),
          ),
          5 => 
          array (
            0 => 'route64',
            1 => 
            array (
              'id' => 'id',
            ),
          ),
          6 => 
          array (
            0 => 'route65',
            1 => 
            array (
              'id' => 'id',
            ),
          ),
          7 => 
          array (
            0 => 'route74',
            1 => 
            array (
              'folderId' => 'folderId',
            ),
          ),
          8 => 
          array (
            0 => 'route91',
            1 => 
            array (
              'controller' => 'controller',
            ),
          ),
          9 => 
          array (
            0 => 'route96',
            1 => 
            array (
              'entityType' => 'entityType',
              'id' => 'id',
            ),
          ),
          10 => 
          array (
            0 => 'route103',
            1 => 
            array (
              'Note' => 'Note',
              'id' => 'id',
            ),
          ),
          11 => 
          array (
            0 => 'route108',
            1 => 
            array (
              'controller' => 'controller',
              'id' => 'id',
              'link' => 'link',
            ),
          ),
        ),
      ),
    ),
    'DELETE' => 
    array (
      0 => 
      array (
        'regex' => '~^(?|/espocrm/api/v1/Campaign/unsubscribe/([^/]+)|/espocrm/api/v1/Campaign/unsubscribe/([^/]+)/([^/]+)|/espocrm/api/v1/Admin/fieldManager/([^/]+)/([^/]+)()|/espocrm/api/v1/([^/]+)/([^/]+)()()|/espocrm/api/v1/([^/]+)/([^/]+)/followers()()()|/espocrm/api/v1/([^/]+)/([^/]+)/subscription()()()()|/espocrm/api/v1/([^/]+)/([^/]+)/pin()()()()()|/espocrm/api/v1/([^/]+)/([^/]+)/starSubscription()()()()()()|/espocrm/api/v1/([^/]+)/([^/]+)/([^/]+)()()()()()())$~',
        'routeMap' => 
        array (
          2 => 
          array (
            0 => 'route12',
            1 => 
            array (
              'id' => 'id',
            ),
          ),
          3 => 
          array (
            0 => 'route14',
            1 => 
            array (
              'emailAddress' => 'emailAddress',
              'hash' => 'hash',
            ),
          ),
          4 => 
          array (
            0 => 'route42',
            1 => 
            array (
              'scope' => 'scope',
              'name' => 'name',
            ),
          ),
          5 => 
          array (
            0 => 'route94',
            1 => 
            array (
              'controller' => 'controller',
              'id' => 'id',
            ),
          ),
          6 => 
          array (
            0 => 'route97',
            1 => 
            array (
              'entityType' => 'entityType',
              'id' => 'id',
            ),
          ),
          7 => 
          array (
            0 => 'route102',
            1 => 
            array (
              'controller' => 'controller',
              'id' => 'id',
            ),
          ),
          8 => 
          array (
            0 => 'route104',
            1 => 
            array (
              'Note' => 'Note',
              'id' => 'id',
            ),
          ),
          9 => 
          array (
            0 => 'route106',
            1 => 
            array (
              'entityType' => 'entityType',
              'id' => 'id',
            ),
          ),
          10 => 
          array (
            0 => 'route109',
            1 => 
            array (
              'controller' => 'controller',
              'id' => 'id',
              'link' => 'link',
            ),
          ),
        ),
      ),
    ),
    'OPTIONS' => 
    array (
      0 => 
      array (
        'regex' => '~^(?|/espocrm/api/v1/LeadCapture/([^/]+))$~',
        'routeMap' => 
        array (
          2 => 
          array (
            0 => 'route28',
            1 => 
            array (
              'apiKey' => 'apiKey',
            ),
          ),
        ),
      ),
    ),
    'PUT' => 
    array (
      0 => 
      array (
        'regex' => '~^(?|/espocrm/api/v1/([^/]+)/action/([^/]+)|/espocrm/api/v1/([^/]+)/layout/([^/]+)()|/espocrm/api/v1/([^/]+)/layout/([^/]+)/([^/]+)()|/espocrm/api/v1/Admin/fieldManager/([^/]+)/([^/]+)()()()|/espocrm/api/v1/Team/([^/]+)/userPosition()()()()()|/espocrm/api/v1/([^/]+)/([^/]+)()()()()()|/espocrm/api/v1/([^/]+)/([^/]+)/subscription()()()()()()|/espocrm/api/v1/([^/]+)/([^/]+)/starSubscription()()()()()()())$~',
        'routeMap' => 
        array (
          3 => 
          array (
            0 => 'route30',
            1 => 
            array (
              'controller' => 'controller',
              'action' => 'action',
            ),
          ),
          4 => 
          array (
            0 => 'route33',
            1 => 
            array (
              'controller' => 'controller',
              'name' => 'name',
            ),
          ),
          5 => 
          array (
            0 => 'route34',
            1 => 
            array (
              'controller' => 'controller',
              'name' => 'name',
              'setId' => 'setId',
            ),
          ),
          6 => 
          array (
            0 => 'route40',
            1 => 
            array (
              'scope' => 'scope',
              'name' => 'name',
            ),
          ),
          7 => 
          array (
            0 => 'route86',
            1 => 
            array (
              'id' => 'id',
            ),
          ),
          8 => 
          array (
            0 => 'route92',
            1 => 
            array (
              'controller' => 'controller',
              'id' => 'id',
            ),
          ),
          9 => 
          array (
            0 => 'route101',
            1 => 
            array (
              'controller' => 'controller',
              'id' => 'id',
            ),
          ),
          10 => 
          array (
            0 => 'route105',
            1 => 
            array (
              'entityType' => 'entityType',
              'id' => 'id',
            ),
          ),
        ),
      ),
    ),
    'PATCH' => 
    array (
      0 => 
      array (
        'regex' => '~^(?|/espocrm/api/v1/Admin/fieldManager/([^/]+)/([^/]+)|/espocrm/api/v1/([^/]+)/([^/]+)())$~',
        'routeMap' => 
        array (
          3 => 
          array (
            0 => 'route41',
            1 => 
            array (
              'scope' => 'scope',
              'name' => 'name',
            ),
          ),
          4 => 
          array (
            0 => 'route93',
            1 => 
            array (
              'controller' => 'controller',
              'id' => 'id',
            ),
          ),
        ),
      ),
    ),
  ),
);