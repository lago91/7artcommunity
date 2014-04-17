<?php
/* @var $this NewsController */
/* @var $model news */

$this->breadcrumbs=array(
	'News'=>array('index'),
	$model->idnoticia,
);

$this->menu=array(
	array('label'=>'List news', 'url'=>array('index')),
	array('label'=>'Create news', 'url'=>array('create')),
	array('label'=>'Update news', 'url'=>array('update', 'id'=>$model->idnoticia)),
	array('label'=>'Delete news', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->idnoticia),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage news', 'url'=>array('admin')),
);
?>

<h1>View news #<?php echo $model->idnoticia; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'idnoticia',
		'titulo',
		'descripcion',
		'fechaPublicacion',
		'usuario_idusuario',
		'votos',
		'status',
	),
)); ?>
