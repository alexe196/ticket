<?php

namespace App\Controller;

use App\Repository\UserReposetory;
class HomeController extends GeneralController
{
    public function users()
    {
        $userReposetory = new UserReposetory();
        $user = $userReposetory->users();
        $this->smarty->assign('users', $user['data']);
        $this->smarty->assign('pagination', $user['pagination']);

        $this->smarty->display('template/home/index.tpl');
    }

    public static function user($id)
    {
        if (!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) === 'xmlhttprequest') {
            $userReposetory = new UserReposetory();
            header('Content-Type: application/json');
            print_r($userReposetory->user($id));
        }
    }
}