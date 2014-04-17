<?php
/* @var $this ProfilePhotoController */
/* @var $model profilePhoto */

$this->breadcrumbs=array(
	'Profile Photos'=>array('index'),
	$model->idfotoPerfil,
);

$this->menu=array(
	array('label'=>'List profilePhoto', 'url'=>array('index')),
	array('label'=>'Create profilePhoto', 'url'=>array('create')),
	array('label'=>'Update profilePhoto', 'url'=>array('update', 'id'=>$model->idfotoPerfil)),
	array('label'=>'Delete profilePhoto', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->idfotoPerfil),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage profilePhoto', 'url'=>array('admin')),
);
?>

<h1>View profilePhoto #<?php echo $model->idfotoPerfil; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'idfotoPerfil',
		'fotoPerfilcol',
		'status',
		'usuario_idusuario',
	),
)); ?>
