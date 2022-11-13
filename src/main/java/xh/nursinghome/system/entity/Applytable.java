package xh.nursinghome.system.entity;

import java.sql.Date;

public class Applytable {


        private Integer Aid;
        private String Aname;
        private Integer Aage;
        private String Asex;
        private String Aphone;
        private String Aemail;
        private String Aaddress;

        private Date Applytime;

        private String Acometime;

        private Integer Anumber;
        private String Aactive;
        private String Aheath;
        private Double  AactiveTime;


        public Applytable(Integer aid, String aname, Integer aage, String asex, String aphone, String aemail, String aaddress, Integer anumber, Date applytime, String acometime, String aactive, String aheath, Double aactiveTime) {
            Aid = aid;
            Aname = aname;
            Aage = aage;
            Asex = asex;
            Aphone = aphone;
            Aemail = aemail;
            Aaddress = aaddress;
            Anumber = anumber;
            Applytime= applytime;
            Acometime=acometime;
            Aactive = aactive;
            Aheath = aheath;
            AactiveTime = aactiveTime;
        }



        @Override
        public String toString() {
            return "Apply{" +
                    "Aid=" + Aid +
                    ", Aname='" + Aname + '\'' +
                    ", Aage=" + Aage +
                    ", Asex='" + Asex + '\'' +
                    ", Aphone='" + Aphone + '\'' +
                    ", Aemail='" + Aemail + '\'' +
                    ", Aaddress='" + Aaddress + '\'' +
                    ", Applytime='" + Applytime + '\'' +
                    ", AcomeTime='" + Acometime + '\'' +
                    ", Anumber=" + Anumber +
                    ", Aactive='" + Aactive + '\'' +
                    ", Aheath='" + Aheath + '\'' +
                    ", AactiveTime=" + AactiveTime +
                    '}';
        }

        public Applytable() {
        }

        public Integer getAid() {
            return Aid;
        }

        public void setAid(Integer aid) {
            Aid = aid;
        }

        public String getAname() {
            return Aname;
        }

        public void setAname(String aname) {
            Aname = aname;
        }

        public Integer getAage() {
            return Aage;
        }

        public void setAage(Integer aage) {
            Aage = aage;
        }

        public String getAsex() {
            return Asex;
        }

        public void setAsex(String asex) {
            Asex = asex;
        }

        public String getAphone() {
            return Aphone;
        }

        public void setAphone(String aphone) {
            Aphone = aphone;
        }

        public String getAemail() {
            return Aemail;
        }

        public void setAemail(String aemail) {
            Aemail = aemail;
        }

        public String getAaddress() {
            return Aaddress;
        }

        public void setAaddress(String aaddress) {
            Aaddress = aaddress;
        }

        public Integer getAnumber() {
            return Anumber;
        }

        public void setAnumber(Integer anumber) {
            Anumber = anumber;
        }

        public Date getApplytime() {return Applytime;}

        public String getAcometime() {return Acometime;}

        public String getAactive() {
            return Aactive;
        }

        public void setAactive(String aactive) {
            Aactive = aactive;
        }

        public String getAheath() {
            return Aheath;
        }

        public void setAheath(String aheath) {
            Aheath = aheath;
        }

        public Double getAactiveTime() {
            return AactiveTime;
        }

        public void setAactiveTime(Double aactiveTime) {
            AactiveTime = aactiveTime;
        }

        public void setApplytime(Date applytime) {
            Applytime = applytime;
        }

        public void setAcometime(String acometime) {
            Acometime = acometime;
        }

        public void setAcomeTime(String acometime) {
            Acometime = acometime;
        }


}
