<?php
/* @var $this ReelController */
/* @var $model Reel */

$this->breadcrumbs=array(
	'Reels'=>array('index'),
	$model->idreel,
);

$this->menu=array(
	array('label'=>'List Reel', 'url'=>array('index')),
	array('label'=>'Create Reel', 'url'=>array('create')),
	array('label'=>'Update Reel', 'url'=>array('update', 'id'=>$model->idreel)),
	array('label'=>'Delete Reel', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->idreel),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Reel', 'url'=>array('admin')),
);
?>

<h1>View Reel #<?php echo $model->idreel; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'idreel',
		'reel',
		'status',
		'usuario_idusuario',
	),
)); ?>
