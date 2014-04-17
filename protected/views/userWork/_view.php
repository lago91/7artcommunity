<?php
/* @var $this UserWorkController */
/* @var $data userWork */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('idtrabajoUsuario')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->idtrabajoUsuario), array('view', 'id'=>$data->idtrabajoUsuario)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('usuario_idusuario')); ?>:</b>
	<?php echo CHtml::encode($data->usuario_idusuario); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('lugarTrabajo_idlugarTrabajo')); ?>:</b>
	<?php echo CHtml::encode($data->lugarTrabajo_idlugarTrabajo); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('puestoTrabajo_idpuestoTrabajo')); ?>:</b>
	<?php echo CHtml::encode($data->puestoTrabajo_idpuestoTrabajo); ?>
	<br />


</div>