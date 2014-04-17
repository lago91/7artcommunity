<?php
/* @var $this UserWorkController */
/* @var $model userWork */

$this->breadcrumbs=array(
	'User Works'=>array('index'),
	$model->idtrabajoUsuario,
);

$this->menu=array(
	array('label'=>'List userWork', 'url'=>array('index')),
	array('label'=>'Create userWork', 'url'=>array('create')),
	array('label'=>'Update userWork', 'url'=>array('update', 'id'=>$model->idtrabajoUsuario)),
	array('label'=>'Delete userWork', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->idtrabajoUsuario),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage userWork', 'url'=>array('admin')),
);
?>

<h1>View userWork #<?php echo $model->idtrabajoUsuario; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'idtrabajoUsuario',
		'usuario_idusuario',
		'lugarTrabajo_idlugarTrabajo',
		'puestoTrabajo_idpuestoTrabajo',
	),
)); ?>
