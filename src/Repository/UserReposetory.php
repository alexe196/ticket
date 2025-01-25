<?php

namespace App\Repository;

use App\Controller\GeneralController;
use App\Model\User;
use App\Service\Pagination;
use Illuminate\Pagination\Paginator;

class UserReposetory extends GeneralController
{
    protected int $countPage = 10;

    public function users(): array
    {
        $currentPage = 1;
        Paginator::currentPageResolver(function () use ($currentPage) {
            return $currentPage;
        });

        $users = User::query()->paginate($this->countPage);

        if(!empty($users->items())) {
            $pagination = Pagination::paginationPage($users->currentPage(), $users->total(), $this->countPage);

            return [
                'data' => $this->getDataTplUser($users),
                'pagination' => $pagination,
            ];
        }

        return [];
    }

    public function user($id)
    {
        if (!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) === 'xmlhttprequest') {

            $currentPage = !empty($id) && is_numeric($id) ? (int) $id : 1;
            Paginator::currentPageResolver(function () use ($currentPage) {
                return $currentPage;
            });

            $users = User::query()->paginate($this->countPage);

            if(!empty($users->items())) {
                $pagination = Pagination::paginationPage($users->currentPage(), $users->total(), $this->countPage);

                return json_encode([
                    'data' => $this->getDataTplUser($users),
                    'pagination' => $pagination,
                ]);
            }

            return json_encode([]);
        }
    }

    protected function getDataTplUser($users)
    {
        ob_start();
        $this->smarty->assign('users', $users->items());
        $this->smarty->display('template/part/usertable.tpl');

        return ob_get_clean();
    }

    public function exempleUser()
    {
        $user = new User();
        $user->name = 'John Doe';
        $user->email = 'john.doe@example.com';
        $user->password = password_hash('password123', PASSWORD_BCRYPT);
        $user->save();


        $users = User::all();
        foreach ($users as $user) {
            echo $user->name . ' - ' . $user->email . PHP_EOL;
        }

        $user = User::find(1); // Найти по первичному ключу (id)
        if ($user) {
            echo $user->name . ' найден!';
        }

        $user->email = 'new.email@example.com';
        $user->save();

        $user->delete();
    }
}