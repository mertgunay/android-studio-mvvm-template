<?xml version="1.0" encoding="utf-8"?>
<layout xmlns:android="http://schemas.android.com/apk/res/android"
		xmlns:tools="http://schemas.android.com/tools"
		tools:context="${packageName}.${fragmentClass}">
	<data>
	
        <import type="android.view.View"/>

        <variable
            name="viewModel"
            type="${packageName}.${viewModelName}"/>

    </data>
	
	<androidx.constraintlayout.widget.ConstraintLayout
		android:layout_width="match_parent"
		android:layout_height="match_parent">

		<TextView
			android:layout_width="match_parent"
			android:layout_height="match_parent"
			android:text="Hello" />

	</androidx.constraintlayout.widget.ConstraintLayout>
	
</layout>
