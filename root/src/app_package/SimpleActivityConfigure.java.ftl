package ${packageName};

/**
 * Created by gits on Configurator
 */
public class ${activityClass}Configure {
    private static ${activityClass}Configure ourInstance = new ${activityClass}Configure();

    public static ${activityClass}Configure getInstance() {
        return ourInstance;
    }

    private ${activityClass}Configure() {
    }

    public void config(${activityClass} activity) {
        ${activityClass}Present present = new ${activityClass}Present();
        present.output = activity;
        activity.input = present;
    }
}
