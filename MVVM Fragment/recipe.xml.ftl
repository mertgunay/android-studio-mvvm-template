<?xml version="1.0"?>
<recipe>

    <#assign escapedResOut="${escapeXmlAttribute(resOut)}">
    <#assign escapedSrcOut="${escapeXmlAttribute(srcOut)}">

	<instantiate from="root/res/layout/blank_fragment.xml.ftl" 
					to="${escapedResOut}/layout/${escapeXmlAttribute(layoutName)}.xml" />
    <instantiate from="root/src/app_package/BlankFragment.java.ftl"
                   to="${escapedSrcOut}/${fragmentClass}.java" />
	<instantiate from="root/src/app_package/BlankNavigator.java.ftl"
                   to="${escapedSrcOut}/${navigatorName}.java" />
	<instantiate from="root/src/app_package/BlankVM.java.ftl"
                   to="${escapedSrcOut}/${viewModelName}.java" />
				   
	<open file="${escapedResOut}/layout/${escapeXmlAttribute(layoutName)}.xml" />
    <open file="${escapedSrcOut}/${fragmentClass}.java}" />
	<open file="${escapedSrcOut}/${navigatorName}.java}" />
	<open file="${escapedSrcOut}/${viewModelName}.java}" />
</recipe>
