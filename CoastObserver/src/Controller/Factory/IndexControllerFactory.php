<?php
declare(strict_types=1);

namespace CoastObserver;

use CoastObserver\Controller\Admin\IndexController;
use CoastObserver\Controller\Factory\IndexControllerFactory;
use CoastObserver\Service\OllamaClient;

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
            IndexController::class => IndexControllerFactory::class,
        ],
    ],

    'service_manager' => [
        'factories' => [
            OllamaClient::class => function () {
                // Adapte l'URL si Ollama n'est pas sur cette machine
                return new OllamaClient('http://localhost:11434');
            },
        ],
    ],

    'view_manager' => [
        'template_path_stack' => [
            __DIR__ . '/../view',
        ],
    ],
];
