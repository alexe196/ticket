<?php
/* Smarty version 5.4.3, created on 2025-01-25 13:38:10
  from 'file:template/part/usertable.tpl' */

/* @var \Smarty\Template $_smarty_tpl */
if ($_smarty_tpl->getCompiled()->isFresh($_smarty_tpl, array (
  'version' => '5.4.3',
  'unifunc' => 'content_6794bf128ea392_37151117',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '022de194c64026bd03148d545fc0d8e1cd33bb89' => 
    array (
      0 => 'template/part/usertable.tpl',
      1 => 1737797139,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
))) {
function content_6794bf128ea392_37151117 (\Smarty\Template $_smarty_tpl) {
$_smarty_current_dir = 'D:\\OpenServer\\domains\\ticket.loc\\template\\part';
?><table class="table">
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
    <?php
$_from = $_smarty_tpl->getSmarty()->getRuntime('Foreach')->init($_smarty_tpl, $_smarty_tpl->getValue('users'), 'user');
$foreach0DoElse = true;
foreach ($_from ?? [] as $_smarty_tpl->getVariable('user')->value) {
$foreach0DoElse = false;
?>
        <tr>
            <td><?php echo $_smarty_tpl->getValue('user')->id;?>
</td>
            <td><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('transliterate')($_smarty_tpl->getValue('user')->name);?>
</td>
            <td><?php echo $_smarty_tpl->getValue('user')->email;?>
</td>
            <td><?php echo $_smarty_tpl->getValue('user')->name;?>
</td>
            <td><?php echo $_smarty_tpl->getValue('user')->group->name;?>
</td>
        </tr>
    <?php
}
$_smarty_tpl->getSmarty()->getRuntime('Foreach')->restore($_smarty_tpl, 1);?>
    </tbody>
</table><?php }
}
