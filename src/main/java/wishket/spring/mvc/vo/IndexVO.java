package wishket.spring.mvc.vo;

public class IndexVO {
    private String pno;
    private String title;
    private String availableBudget;
    private String projectTerm;
    private String type;
    private String detailTask;

    public IndexVO() {
    }

    public IndexVO(String pno, String title, String availableBudget, String projectTerm, String type, String detailTask) {
        this.pno = pno;
        this.title = title;
        this.availableBudget = availableBudget;
        this.projectTerm = projectTerm;
        this.type = type;
        this.detailTask = detailTask;
    }

    public IndexVO(String availableBudget) {
        this.availableBudget = availableBudget;
    }

    public String getDetailTask() {
        return detailTask;
    }

    public void setDetailTask(String detailTask) {
        this.detailTask = detailTask;
    }

    public String getPno() {
        return pno;
    }

    public void setPno(String pno) {
        this.pno = pno;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAvailableBudget() {
        return availableBudget;
    }

    public void setAvailableBudget(String availableBudget) {
        this.availableBudget = availableBudget;
    }

    public String getProjectTerm() {
        return projectTerm;
    }

    public void setProjectTerm(String projectTerm) {
        this.projectTerm = projectTerm;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
}