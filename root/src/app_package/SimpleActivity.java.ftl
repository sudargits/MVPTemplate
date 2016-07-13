package ${packageName};

import android.app.Activity;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.support.v7.app.AppCompatActivity;
<#if applicationPackage??>import ${applicationPackage}.R;</#if>
import android.util.Log;

public class ${activityClass} extends AppCompatActivity implements ${activityClass}Output {

    public ${activityClass}Input input;
    
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.${layoutName});
        ${activityClass}Configure.getInstance().config(this);
        doSomething();
    }

    private void doSomething(){
        input.doSomething("this","input");
    } 
    @Override
    public void displaySomething(${activityClass}Model response){
        Log.d("RESULT","RESULT");    
    }

}
