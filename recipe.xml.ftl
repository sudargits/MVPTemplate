<?xml version="1.0"?>
<recipe>
    <merge from="AndroidManifest.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />

    <merge from="res/values/strings.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/values/strings.xml" />

    <copy from="res/layout/activity_simple.xml"
            to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />

    <instantiate from="src/app_package/SimpleActivity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />

<instantiate from="src/app_package/SimpleActivityConfigure.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityClass}Configure.java" />
                
                <instantiate from="src/app_package/SimpleActivityInput.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityClass}Input.java" />

                   <instantiate from="src/app_package/SimpleActivityModel.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityClass}Model.java" />

                   <instantiate from="src/app_package/SimpleActivityOutput.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityClass}Output.java" />

                   <instantiate from="src/app_package/SimpleActivityPresent.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityClass}Present.java" />

    <open file="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />
    <open file="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
</recipe>
