<?php

namespace App\Service;

class Pagination
{

    public static function paginationPage($currentPage, $totalPages, $range = 5)
    {
        if ($totalPages <= 1) {
            return '';
        }

        $paginationHtml = '<div class="pagination-nav text-center">';

        $tatalPageCell = round($totalPages/$range, 0);


        if ($currentPage > 1) {
            $currentPrev = $currentPage - 1;
            $paginationHtml .= '<a class="pagination-href" data-pagination="'.$currentPrev.'">prev</a> ';
        }

        for ($i = 1; $i <= $tatalPageCell; $i++) {
            $class = $i == $currentPage ? ' active-pagination' : '';
            $paginationHtml .= '<a class="pagination-href'.$class.'" data-pagination="'.$i.'" >'.$i.'</a> ';
        }

        if ($currentPage < $tatalPageCell) {
            $currentNext = $currentPage + 1;
            $paginationHtml .= '<a class="pagination-href" data-pagination="'.$currentNext .'">next</a>';
        }

        $paginationHtml .= '</div>';

        return $paginationHtml;
    }

}