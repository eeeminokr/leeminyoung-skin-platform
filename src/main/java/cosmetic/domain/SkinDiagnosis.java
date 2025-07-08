package cosmetic.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class SkinDiagnosis {
    protected int id;
    protected int userId;
    protected int seq;
    protected String questionId;
    protected String answer;

    protected String cUser;
    protected String cdate;
    protected String uUser;
    protected String udate;

    public enum Type {
        NORMAL("1", "일반진단"),
        DETAILED("2", "현장진단"),
        ;

        private String id;
        private String name;

        Type(String id, String name) {
            this.id = id;
            this.name = name;
        }

        public String getId() {
            return id;
        }

        public String getName() {
            return name;
        }

        public static SkinDiagnosis.Type value(String id) {
            SkinDiagnosis.Type rtn = null;
            switch (id) {
                case "1":
                    rtn = SkinDiagnosis.Type.NORMAL;
                    break;
                case "2":
                    rtn = SkinDiagnosis.Type.DETAILED;
                    break;
                default:
                    break;
            }
            return rtn;
        }
    }

    // @Builder
    // public SkinDiagnosis(int id,String questionId,String answer,int userId,String
    // cUser,String cdate,String uUser,String udate) {
    // super();
    // this.id = id;
    // this.questionId = questionId;
    // this.answer = answer;
    // this.userId = userId;
    // this.cUser = cUser;
    // this.cdate = cdate;
    // this.uUser = uUser;
    // this.udate = udate;
    // }

}