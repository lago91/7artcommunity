<?php
/* @var $this NewsFileController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'News Files',
);

$this->menu=array(
	array('label'=>'Create newsFile', 'url'=>array('create')),
	array('label'=>'Manage newsFile', 'url'=>array('admin')),
);
?>

<h1>News Files</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
