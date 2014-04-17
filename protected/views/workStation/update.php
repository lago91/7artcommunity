<?php
/* @var $this WorkStationController */
/* @var $model workStation */

$this->breadcrumbs=array(
	'Work Stations'=>array('index'),
	$model->idlugarTrabajo=>array('view','id'=>$model->idlugarTrabajo),
	'Update',
);

$this->menu=array(
	array('label'=>'List workStation', 'url'=>array('index')),
	array('label'=>'Create workStation', 'url'=>array('create')),
	array('label'=>'View workStation', 'url'=>array('view', 'id'=>$model->idlugarTrabajo)),
	array('label'=>'Manage workStation', 'url'=>array('admin')),
);
?>

<h1>Update workStation <?php echo $model->idlugarTrabajo; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>