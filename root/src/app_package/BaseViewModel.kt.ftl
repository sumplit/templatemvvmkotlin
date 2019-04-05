package ${packageName}

import android.Manifest
import android.app.Application
import android.arch.lifecycle.AndroidViewModel
import android.content.Context
import android.content.pm.PackageManager
import android.support.v4.app.ActivityCompat

class ${className}ViewModel(context: Application, private val gitsRepository: GitsRepository) : AndroidViewModel(context) {

    var errorMessageToast = SingleLiveEvent<String>()

}