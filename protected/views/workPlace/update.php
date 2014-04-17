<?php
/* @var $this WorkPlaceController */
/* @var $model workPlace */

$this->breadcrumbs=array(
	'Work Places'=>array('index'),
	$model->idlugarTrabajo=>array('view','id'=>$model->idlugarTrabajo),
	'Update',
);

$this->menu=array(
	array('label'=>'List workPlace', 'url'=>array('index')),
	array('label'=>'Create workPlace', 'url'=>array('create')),
	array('label'=>'View workPlace', 'url'=>array('view', 'id'=>$model->idlugarTrabajo)),
	array('label'=>'Manage workPlace', 'url'=>array('admin')),
);
?>

<h1>Update workPlace <?php echo $model->idlugarTrabajo; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>