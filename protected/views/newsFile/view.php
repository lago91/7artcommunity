<?php
/* @var $this NewsFileController */
/* @var $model newsFile */

$this->breadcrumbs=array(
	'News Files'=>array('index'),
	$model->idnoticiaArchivo,
);

$this->menu=array(
	array('label'=>'List newsFile', 'url'=>array('index')),
	array('label'=>'Create newsFile', 'url'=>array('create')),
	array('label'=>'Update newsFile', 'url'=>array('update', 'id'=>$model->idnoticiaArchivo)),
	array('label'=>'Delete newsFile', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->idnoticiaArchivo),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage newsFile', 'url'=>array('admin')),
);
?>

<h1>View newsFile #<?php echo $model->idnoticiaArchivo; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'idnoticiaArchivo',
		'noticia_idnoticia',
		'tipoArchivo_idtipoArchivo',
	),
)); ?>
