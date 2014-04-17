<?php
/* @var $this UsersController */
/* @var $model Users */

$this->breadcrumbs=array(
	'Users'=>array('index'),
	$model->idusuario=>array('view','id'=>$model->idusuario),
	'Update',
);

$this->menu=array(
	array('label'=>'List Users', 'url'=>array('index')),
	array('label'=>'Create Users', 'url'=>array('create')),
	array('label'=>'View Users', 'url'=>array('view', 'id'=>$model->idusuario)),
	array('label'=>'Manage Users', 'url'=>array('admin')),
);
?>

<h1>Update Users <?php echo $model->idusuario; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>