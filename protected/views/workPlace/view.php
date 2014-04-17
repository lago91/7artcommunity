<?php
/* @var $this WorkPlaceController */
/* @var $model workPlace */

$this->breadcrumbs=array(
	'Work Places'=>array('index'),
	$model->idlugarTrabajo,
);

$this->menu=array(
	array('label'=>'List workPlace', 'url'=>array('index')),
	array('label'=>'Create workPlace', 'url'=>array('create')),
	array('label'=>'Update workPlace', 'url'=>array('update', 'id'=>$model->idlugarTrabajo)),
	array('label'=>'Delete workPlace', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->idlugarTrabajo),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage workPlace', 'url'=>array('admin')),
);
?>

<h1>View workPlace #<?php echo $model->idlugarTrabajo; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'idlugarTrabajo',
		'lugarTrabajo',
		'status',
	),
)); ?>
