<?php
/* @var $this NewsController */
/* @var $model news */

$this->breadcrumbs=array(
	'News'=>array('index'),
	$model->idnoticia=>array('view','id'=>$model->idnoticia),
	'Update',
);

$this->menu=array(
	array('label'=>'List news', 'url'=>array('index')),
	array('label'=>'Create news', 'url'=>array('create')),
	array('label'=>'View news', 'url'=>array('view', 'id'=>$model->idnoticia)),
	array('label'=>'Manage news', 'url'=>array('admin')),
);
?>

<h1>Update news <?php echo $model->idnoticia; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>