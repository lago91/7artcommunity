<?php
/* @var $this ProfilePhotoController */
/* @var $model profilePhoto */

$this->breadcrumbs=array(
	'Profile Photos'=>array('index'),
	$model->idfotoPerfil=>array('view','id'=>$model->idfotoPerfil),
	'Update',
);

$this->menu=array(
	array('label'=>'List profilePhoto', 'url'=>array('index')),
	array('label'=>'Create profilePhoto', 'url'=>array('create')),
	array('label'=>'View profilePhoto', 'url'=>array('view', 'id'=>$model->idfotoPerfil)),
	array('label'=>'Manage profilePhoto', 'url'=>array('admin')),
);
?>

<h1>Update profilePhoto <?php echo $model->idfotoPerfil; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>