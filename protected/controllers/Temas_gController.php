<?php

class Temas_gController extends Controller
{
	/**
	 * @var string the default layout for the views. Defaults to '//layouts/column2', meaning
	 * using two-column layout. See 'protected/views/layouts/column2.php'.
	 */
	public $layout='//layouts/column2';

	/**
	 * @return array action filters
	 */
	public function filters()
	{
		return array(
			'accessControl', // perform access control for CRUD operations
		);
	}

	/**
	 * Specifies the access control rules.
	 * This method is used by the 'accessControl' filter.
	 * @return array access control rules
	 */
	public function accessRules()
	{
		return array(
			array('allow',  // allow all users to perform 'index' and 'view' actions
				'actions'=>array('index','view'),
				'users'=>array('*'),
			),
			array('allow', // allow authenticated user to perform 'create' and 'update' actions
				'actions'=>array('create','update'),
				'users'=>array('admin'),
			),
			array('allow', // allow admin user to perform 'admin' and 'delete' actions
				'actions'=>array('admin','delete'),
				'users'=>array('*'),
			),
			array('deny',  // deny all users
				'users'=>array('*'),
			),
		);
	}

	/**
	 * Displays a particular model.
	 * @param integer $id the ID of the model to be displayed
	 */
	/*public function actionView($id)
	{
		$this->render('view',array(
			'model'=>$this->loadModel($id),
		));
	}*/
	
	public function actionView($id)
	{
$sql_count = "select count(*) from lecciones l 
		left join temas t on t.id_temas = l.id_temas
		where t.id_temas = '$id'"; 

	$sql="select l.nb_lecciones, l.id_temas, l.id_lecciones
 from lecciones l 
		left join temas t on t.id_temas = l.id_temas
		where t.id_temas = '$id' order by l.id_lecciones desc; ";
		$lecciones = Yii::app() -> db -> createCommand($sql) ->  query();
		$count_lecciones = Yii::app() -> db -> createCommand($sql_count) ->  queryScalar();
//var_dump($declaracion);

		$this->render('view',array(
			'model'=>$this->loadModel($id),'lecciones'=>$lecciones,'count_lecciones'=>$count_lecciones,
		));
	}
	
	/*public function actionView($id)
    {
$sql_count = "select count(*) from lecciones l
        left join temas t on t.id_temas = l.id_temas
        where t.id_temas = '$id'";

    $sql="select l.id_lecciones, l.nb_lecciones, t.id_temas from temas t
        left join lecciones l on l.id_temas = t.id_temas
        where  t.id_temas = '$id' order by t.id_temas desc; ";
        $lecciones = Yii::app() -> db -> createCommand($sql) ->  query();
        $count_lecciones = Yii::app() -> db -> createCommand($sql_count) ->  queryScalar();
//var_dump($declaracion);

        $this->render('view',array(
            'model'=>$this->loadModel($id),'lecciones'=>$lecciones,'count_lecciones'=>$count_lecciones,
        ));
    }
*/




	/**
	 * Creates a new model.
	 * If creation is successful, the browser will be redirected to the 'view' page.
	 */
	public function actionCreate()
	{
		$model=new Temas;

		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);

		if(isset($_POST['Temas']))
		{
			$model->attributes=$_POST['Temas'];
			if($model->save())
				$this->redirect(array('view','id'=>$model->id_temas));
		}

		$this->render('create',array(
			'model'=>$model,
		));
	}

	/**
	 * Updates a particular model.
	 * If update is successful, the browser will be redirected to the 'view' page.
	 * @param integer $id the ID of the model to be updated
	 */
	public function actionUpdate($id)
	{
		$model=$this->loadModel($id);

		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);

		if(isset($_POST['Temas']))
		{
			$model->attributes=$_POST['Temas'];
			if($model->save())
				$this->redirect(array('view','id'=>$model->id_temas));
		}

		$this->render('update',array(
			'model'=>$model,
		));
	}

	/**
	 * Deletes a particular model.
	 * If deletion is successful, the browser will be redirected to the 'admin' page.
	 * @param integer $id the ID of the model to be deleted
	 */
	public function actionDelete($id)
	{
		if(Yii::app()->request->isPostRequest)
		{
			// we only allow deletion via POST request
			$this->loadModel($id)->delete();

			// if AJAX request (triggered by deletion via admin grid view), we should not redirect the browser
			if(!isset($_GET['ajax']))
				$this->redirect(isset($_POST['returnUrl']) ? $_POST['returnUrl'] : array('admin'));
		}
		else
			throw new CHttpException(400,'Invalid request. Please do not repeat this request again.');
	}

	/**
	 * Lists all models.
	 */
	public function actionIndex()
	{
		$dataProvider=new CActiveDataProvider('Temas');
		$this->render('index',array(
			'dataProvider'=>$dataProvider,
		));
	}

	/**
	 * Manages all models.
	 */
	public function actionAdmin()
	{
		$model=new Temas('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['Temas']))
			$model->attributes=$_GET['Temas'];

		$this->render('admin',array(
			'model'=>$model,
		));
	}

	/**
	 * Returns the data model based on the primary key given in the GET variable.
	 * If the data model is not found, an HTTP exception will be raised.
	 * @param integer the ID of the model to be loaded
	 */
	public function loadModel($id)
	{
		$model=Temas::model()->findByPk($id);
		if($model===null)
			throw new CHttpException(404,'The requested page does not exist.');
		return $model;
	}

	/**
	 * Performs the AJAX validation.
	 * @param CModel the model to be validated
	 */
	protected function performAjaxValidation($model)
	{
		if(isset($_POST['ajax']) && $_POST['ajax']==='temas-form')
		{
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}
	}
}
