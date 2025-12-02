<?php
declare(strict_types=1);

namespace CoastObserver;

use CoastObserver\Controller\Admin\IndexController;
use Laminas\ServiceManager\Factory\InvokableFactory;

return [
    'router' => [
        'routes' => [
            'admin' => [
                'child_routes' => [
                    'coast-observer' => [
                        'type' => 'Literal',
                        'options' => [
                            'route' => '/coast-observer',
                            'defaults' => [
                                '__NAMESPACE__' => 'CoastObserver\Controller\Admin',
                                'controller'    => IndexController::class,
                                'action'        => 'index',
                            ],
                        ],
                        'may_terminate' => true,
                        'child_routes' => [
                            'tide-height' => [
                                'type' => 'Literal',
                                'options' => [
                                    'route' => '/tide-height',
                                    'defaults' => [
                                        'action' => 'tide-height', // → tideHeightAction()
                                    ],
                                ],
                            ],
                            'suggest-title' => [
                                'type' => 'Literal',
                                'options' => [
                                    'route' => '/suggest-title',
                                    'defaults' => [
                                        'action' => 'suggest-title', // → suggestTitleAction()
                                    ],
                                ],
                            ],
                        ],
                    ],
                ],
            ],
        ],
    ],

    'controllers' => [
        'factories' => [
            // contrôleur simple, sans injection : InvokableFactory
            IndexController::class => InvokableFactory::class,
        ],
    ],

    'view_manager' => [
        'template_path_stack' => [
            __DIR__ . '/../view',
        ],
    ],
];
