<?php
/* @var $this UserWorkController */
/* @var $model userWork */

$this->breadcrumbs=array(
	'User Works'=>array('index'),
	$model->idtrabajoUsuario=>array('view','id'=>$model->idtrabajoUsuario),
	'Update',
);

$this->menu=array(
	array('label'=>'List userWork', 'url'=>array('index')),
	array('label'=>'Create userWork', 'url'=>array('create')),
	array('label'=>'View userWork', 'url'=>array('view', 'id'=>$model->idtrabajoUsuario)),
	array('label'=>'Manage userWork', 'url'=>array('admin')),
);
?>

<h1>Update userWork <?php echo $model->idtrabajoUsuario; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>