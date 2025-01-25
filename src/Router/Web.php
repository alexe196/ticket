<?php
namespace App\Router;

use FastRoute\RouteCollector;

class Web
{
    protected function addRouter()
    {
        $dispatcher = \FastRoute\simpleDispatcher(function (RouteCollector $r) {

            $r->addRoute('GET', '/', [\App\Controller\HomeController::class, 'users']);

            $r->addRoute('GET', '/user/{id:\d+}', [\App\Controller\HomeController::class, 'user']);

        });

        return $dispatcher;
    }

    public function run()
    {
        $dispatcher = $this->addRouter();

        $httpMethod = $_SERVER['REQUEST_METHOD'];
        $uri = $_SERVER['REQUEST_URI'];

        if (false !== $pos = strpos($uri, '?')) {
            $uri = substr($uri, 0, $pos);
        }
        $uri = rawurldecode($uri);

        $routeInfo = $dispatcher->dispatch($httpMethod, $uri);
        switch ($routeInfo[0]) {
            case \FastRoute\Dispatcher::NOT_FOUND:
                http_response_code(404);
                echo '404 - Page Not Found';
                break;

            case \FastRoute\Dispatcher::METHOD_NOT_ALLOWED:
                http_response_code(405);
                echo '405 - Method Not Allowed';
                break;

            case \FastRoute\Dispatcher::FOUND:
                $handler = $routeInfo[1];
                $vars = $routeInfo[2];

                if (is_array($handler) && is_string($handler[0])) {
                    $className = $handler[0];
                    $method = $handler[1];

                    if (class_exists($className)) {
                        $instance = new $className();

                        if (is_callable([$instance, $method])) {
                            call_user_func_array([$instance, $method], $vars);
                        } else {
                            echo "Method '$method' not callable in class '$className'";
                        }
                    } else {
                        echo "Class '$className' does not exist";
                    }
                } elseif (is_callable($handler)) {

                    call_user_func_array($handler, $vars);
                } else {
                    echo 'Handler not callable: ';
                    var_dump($handler);
                }
                break;
        }
    }
}