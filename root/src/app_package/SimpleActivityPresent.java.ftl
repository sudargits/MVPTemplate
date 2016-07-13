package ${packageName};

/**
 * Created by gits on VIP.
 * Present for process
 */
public class ${activityClass}Present implements ${activityClass}Input  {
    public ${activityClass}Output output;
    
    @Override
    public void doSomething(String strA,String strB){
        ${activityClass}Model response = new ${activityClass}Model();
        response.setVarA(strA);
        response.setVarB(strB);
        output.displaySomething(response);
    }

}