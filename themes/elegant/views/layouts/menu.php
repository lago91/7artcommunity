 <!--Menu-->
        <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">7 Art Community</a>

                </div>
                <div class="navbar-collapse collapse">
                    <form class="nav navbar-nav navbar-form " role="search">
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Buscar ...">
                            <span class='glyphicon glyphicon-search'></span>
                        </div>
                    </form>
					<?php $this->widget('zii.widgets.CMenu',array(
								'htmlOptions'=>array("class"=>"nav navbar-nav navbar-right"),
								'items'=>array(
									array('label'=>'Mi perfil', 'url'=>array('/site/usuario')),
									array('label'=>'Inicio', 'url'=>array('/site/noticias')),
									array('label'=>'Login', 'url'=>array('/site/login'), 'visible'=>Yii::app()->user->isGuest),
									array('label'=>'Logout ('.Yii::app()->user->name.')', 'url'=>array('/site/logout'), 'visible'=>!Yii::app()->user->isGuest)
								),
							)); ?>
                </div>
            </div>
        </div>
        <!--fin de menu-->