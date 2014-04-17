<?php
/* @var $this WorkStationController */
/* @var $model workStation */

$this->breadcrumbs=array(
	'Work Stations'=>array('index'),
	$model->idlugarTrabajo,
);

$this->menu=array(
	array('label'=>'List workStation', 'url'=>array('index')),
	array('label'=>'Create workStation', 'url'=>array('create')),
	array('label'=>'Update workStation', 'url'=>array('update', 'id'=>$model->idlugarTrabajo)),
	array('label'=>'Delete workStation', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->idlugarTrabajo),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage workStation', 'url'=>array('admin')),
);
?>

<h1>View workStation #<?php echo $model->idlugarTrabajo; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'idlugarTrabajo',
		'lugarTrabajo',
		'status',
	),
)); ?>
