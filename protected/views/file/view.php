<?php
/* @var $this FileController */
/* @var $model file */

$this->breadcrumbs=array(
	'Files'=>array('index'),
	$model->idarchivo,
);

$this->menu=array(
	array('label'=>'List file', 'url'=>array('index')),
	array('label'=>'Create file', 'url'=>array('create')),
	array('label'=>'Update file', 'url'=>array('update', 'id'=>$model->idarchivo)),
	array('label'=>'Delete file', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->idarchivo),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage file', 'url'=>array('admin')),
);
?>

<h1>View file #<?php echo $model->idarchivo; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'idarchivo',
		'archivo',
		'tipo',
	),
)); ?>
