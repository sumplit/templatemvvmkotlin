package ${packageName}

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.Toast
import ${applicationPackage}.base.BaseFragment
import ${applicationPackage}.util.obtainViewModel
import ${applicationPackage}.databinding.${fragmentLayoutName?replace('_', ' ')?capitalize?replace(' ','')}Binding
import kotlinx.android.synthetic.main.${fragmentLayoutName}.*

class ${className}Fragment: BaseFragment(), ${className}UserActionListener {
	
	lateinit var mViewDataBinding: ${fragmentLayoutName?replace('_', ' ')?capitalize?replace(' ','')}Binding

	override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?,
						savedInstanceState: Bundle?): View? {

		mViewDataBinding = ${fragmentLayoutName?replace('_', ' ')?capitalize?replace(' ','')}Binding.inflate(inflater,container, false).apply{
			viewModel = (activity as ${className}Activity).obtainViewModel()
		}

		return mViewDataBinding.root
	}

	override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)

        
    }

	companion object {

		fun newInstance() = ${className}Fragment().apply {

		}
	}

}