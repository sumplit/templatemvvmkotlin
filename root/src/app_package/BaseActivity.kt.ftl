package ${packageName}

import android.content.Context
import android.content.Intent
import android.support.v7.app.AppCompatActivity
import android.os.Bundle
import android.view.Views
import ${applicationPackage}.R
import ${applicationPackage}.util.obtainViewModel
import ${applicationPackage}.util.replaceFragmentInActivity

class ${className}Activity: AppCompatActivity() {
	
    private lateinit var viewModel: ${className}ViewModel

	override fun onCreate(savedInstanceState: Bundle?){
		super.onCreate(savedInstanceState)
		setContentView(R.layout.${layoutName})
		
		// Hide navigation bar
        if (Build.VERSION.SDK_INT >= 19) {
            val v = window.decorView
            v.systemUiVisibility = (View.SYSTEM_UI_FLAG_LAYOUT_STABLE
                    or View.SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION
                    or View.SYSTEM_UI_FLAG_HIDE_NAVIGATION
                    or View.SYSTEM_UI_FLAG_IMMERSIVE_STICKY)
        }

        /*Ambil MovieId dari Intent untuk KEY_STRING disesuaikan dengan Activity sebelumnya
		val movieId = intent.getIntExtra("movieId", 0)
        */
        
        if (savedInstanceState == null) {
            supportFragmentManager.beginTransaction()
                    .replace(R.id.container, MainDetailFragment.newInstance(movieId))
                    .commitNow()
        }

        setupViewModel()
	}

	private fun setupViewModel() {
        viewModel = obtainViewModel().apply {  }
    }

    fun obtainViewModel(): ${className}ViewModel = obtainViewModel(${className}ViewModel::class.java)

}