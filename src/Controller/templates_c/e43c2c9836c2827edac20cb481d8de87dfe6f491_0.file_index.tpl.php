<?php
/* Smarty version 5.4.3, created on 2025-01-25 13:38:10
  from 'file:template/home/index.tpl' */

/* @var \Smarty\Template $_smarty_tpl */
if ($_smarty_tpl->getCompiled()->isFresh($_smarty_tpl, array (
  'version' => '5.4.3',
  'unifunc' => 'content_6794bf1292cee8_40939597',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'e43c2c9836c2827edac20cb481d8de87dfe6f491' => 
    array (
      0 => 'template/home/index.tpl',
      1 => 1737799388,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
))) {
function content_6794bf1292cee8_40939597 (\Smarty\Template $_smarty_tpl) {
$_smarty_current_dir = 'D:\\OpenServer\\domains\\ticket.loc\\template\\home';
$_smarty_tpl->getInheritance()->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->getInheritance()->instanceBlock($_smarty_tpl, 'Block_21293527766794bf129240f7_53140675', "title");
?>


<?php 
$_smarty_tpl->getInheritance()->instanceBlock($_smarty_tpl, 'Block_18621877016794bf12926ea5_70472782', "content");
$_smarty_tpl->getInheritance()->endChild($_smarty_tpl, "template/layout/layout.tpl", $_smarty_current_dir);
}
/* {block "title"} */
class Block_21293527766794bf129240f7_53140675 extends \Smarty\Runtime\Block
{
public function callBlock(\Smarty\Template $_smarty_tpl) {
$_smarty_current_dir = 'D:\\OpenServer\\domains\\ticket.loc\\template\\home';
?>
Home<?php
}
}
/* {/block "title"} */
/* {block "content"} */
class Block_18621877016794bf12926ea5_70472782 extends \Smarty\Runtime\Block
{
public function callBlock(\Smarty\Template $_smarty_tpl) {
$_smarty_current_dir = 'D:\\OpenServer\\domains\\ticket.loc\\template\\home';
?>

    <div class="tm-bg-primary-dark tm-block-taller">
        <h2 class="tm-block-title">User List</h2>
        <div class="container" id="div-table-users-id-ajax">
            <?php echo htmlspecialchars_decode($_smarty_tpl->getValue('users'), ENT_QUOTES);?>

        </div>
        <nav class="container" id="pagination-id-ajax">
            <?php echo htmlspecialchars_decode($_smarty_tpl->getValue('pagination'), ENT_QUOTES);?>

        </nav>
    </div>
<?php
}
}
/* {/block "content"} */
}
