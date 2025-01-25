{extends file="template/layout/layout.tpl"}

{block name="title"}Home{/block}

{block name="content"}
    <div class="tm-bg-primary-dark tm-block-taller">
        <h2 class="tm-block-title">User List</h2>
        <div class="container" id="div-table-users-id-ajax">
            {$users|unescape:'html'}
        </div>
        <nav class="container" id="pagination-id-ajax">
            {$pagination|unescape:'html'}
        </nav>
    </div>
{/block}