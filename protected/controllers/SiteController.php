<?php

class SiteController extends Controller
{
	/**
	 * Declares class-based actions.
	 */
	public function actions()
	{
		return array(
			// captcha action renders the CAPTCHA image displayed on the contact page
			'captcha'=>array(
				'class'=>'CaptchaExtendedAction',
				'mode'=>CaptchaExtendedAction::MODE_DEFAULT,
			),
			// page action renders "static" pages stored under 'protected/views/site/pages'
			// They can be accessed via: index.php?r=site/page&view=FileName
			'page'=>array(
				'class'=>'CViewAction',
			),
		);
	}

	/**
	 * This is the default 'index' action that is invoked
	 * when an action is not explicitly requested by users.
	 */
	public function actionIndex()
	{
		// layout halaman index
		$this->layout='index-page';
		
		// one page about
		$criteriaAbout=new CDbCriteria(array(
			'condition'=>"t.key='About'",
		));
		$about=Pages::model()->findAll($criteriaAbout);

		// one page features
		$criteriaFeatures=new CDbCriteria(array('condition'=>"t.key='Features'"));
		$features=Pages::model()->findAll($criteriaFeatures);

		// one page services
		$criteriaServices=new CDbCriteria(array('condition'=>"t.key='Services'"));
		$services=Pages::model()->findAll($criteriaServices);

		// partner
		$partner=Partner::model()->findAll();

		// team
		$criteriaTeam=new CDbCriteria(array(
			'limit'=>'4',
			'order'=>'t.sequence ASC',
		));
		$team=Team::model()->findAll($criteriaTeam);

		// news
		$criteriaNews=new CDbCriteria(array('limit'=>'3',));
		$news=News::model()->findAll($criteriaNews);

		// form contact di halaman index
		$model=new Contacts('search');
		$model->unsetAttributes();
		if(isset($_GET['Contacts']))
			$model->attributes=$_GET['Contacts'];
		
		$this->render('index',array(
			'about'=>$about,
			'features'=>$features,
			'services'=>$services,
			'partner'=>$partner,
			'team'=>$team,
			'news'=>$news,
			'model'=>$model,
		));
	}

	// aksi kirim contact
	public function actionSendContact()
	{
		$model=new Contacts;

		if(isset($_POST['Contacts']))
		{
			$model->attributes=$_POST['Contacts'];
			$model->date=new CDbExpression('NOW()');

			if($model->save())
			{
				echo 'Thank you for contacting us. We will respond to you as soon as possible.';
			}
			else
			{
				echo 'Send contact failed, please fix some error:';
				foreach($model->errors as $err){
					echo '<br>'.' - '.$err[0];
				}
			}
		}
		else
		{
			echo 'Error ';
		}
	}

	// halaman admin
	public function actionAdmin()
	{
		$this->layout='admin';
		$this->render('admin');
	}

	/**
	 * This is the action to handle external exceptions.
	 */
	public function actionError()
	{
		if($error=Yii::app()->errorHandler->error)
		{
			if(Yii::app()->request->isAjaxRequest)
				echo $error['message'];
			else
				$this->render('error', $error);
		}
	}

	/**
	 * Displays the login page
	 */
	public function actionLogin()
	{
		$this->layout='login';
		$contacts=new LoginForm;

		// if it is ajax validation request
		if(isset($_POST['ajax']) && $_POST['ajax']==='login-form')
		{
			echo CActiveForm::validate($contacts);
			Yii::app()->end();
		}

		// collect user input data
		if(isset($_POST['LoginForm']))
		{
			$contacts->attributes=$_POST['LoginForm'];
			// validate user input and redirect to the previous page if valid
			if($contacts->validate() && $contacts->login())
				$this->redirect(array('site/admin'));
				// $this->redirect(Yii::app()->user->returnUrl);
		}
		// display the login form
		$this->render('login',array('model'=>$contacts));
	}

	/**
	 * Logs out the current user and redirect to homepage.
	 */
	public function actionLogout()
	{
		Yii::app()->user->logout();
		$this->redirect(Yii::app()->homeUrl);
	}


	/*public function actionImages(){
		
		$files=glob('images/*.{jpg,png}',GLOB_BRACE);
		
		$images = [
			[
				"image"=> Yii::app()->baseUrl."/images/users.png",
				"thumb"=> Yii::app()->baseUrl."/images/users.png",
				// "folder": "Small"
			],
			[
				"image"=> Yii::app()->baseUrl."/images/logo.png",
				"thumb"=> Yii::app()->baseUrl."/images/logo.png",
				// "folder": "Small"
			],
		];

		echo CJSON::encode($images);
	}*/

}