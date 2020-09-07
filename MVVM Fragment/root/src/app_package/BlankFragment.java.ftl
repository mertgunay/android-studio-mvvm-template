package ${packageName};

import android.os.Bundle;
import android.view.View;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.lifecycle.ViewModelProvider;

<#if applicationPackage??>
import ${applicationPackage}.BR;
import ${applicationPackage}.R;
import ${applicationPackage}.databinding.Fragment${fragmentName}Binding;
import ${applicationPackage}.ui.base.BaseFragment;
</#if>

public class ${fragmentClass}
        extends BaseFragment<Fragment${fragmentName}Binding, ${viewModelName}>
        implements ${navigatorName} {

    private Fragment${fragmentName}Binding mBinding;
    private ${viewModelName} mViewModel;

    public static ${fragmentClass} newInstance() {
        Bundle args = new Bundle();
        ${fragmentClass} fragment = new ${fragmentClass}();
        fragment.setArguments(args);
        return fragment;
    }

    @Override
    public int getLayoutId() {
        return R.layout.${layoutName};
    }

    @Override
    public int getBindingVariable() {
        return BR.viewModel;
    }

    @Override
    public String getLogName() {
        return null;
    }

    @Override
    public ${viewModelName} getViewModel() {
        return mViewModel = new ViewModelProvider(this).get(${viewModelName}.class);
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        mViewModel.setNavigator(this);
    }

    @Override
    public void onViewCreated(@NonNull View view, @Nullable Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        mBinding = getBinding();
    }
}