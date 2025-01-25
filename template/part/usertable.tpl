<table class="table">
    <thead>
    <tr>
        <th>№ п/п</th>
        <th>Name</th>
        <th>E-mail</th>
        <th>Имя</th>
        <th>Group</th>
    </tr>
    </thead>
    <tbody id="table-users-ajax">
    {foreach $users as $user}
        <tr>
            <td>{$user->id}</td>
            <td>{$user->name|transliterate}</td>
            <td>{$user->email}</td>
            <td>{$user->name}</td>
            <td>{$user->group->name}</td>
        </tr>
    {/foreach}
    </tbody>
</table>