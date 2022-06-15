/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package project;

/**
 *
 * @author HP
 */
public class professor {
    public professor()
    {
        
    }
    public void coursefram()
    {
          courseframe c =new courseframe();
         c.setLocation(700,250);
       c.setSize(400,400);
       c.setVisible(true);
    }
     public void addcourse()
    {
         addcourse us=new addcourse();
       us.setLocation(700,250);
       us.setSize(400,400);
       us.setVisible(true);
    }
     public void editucorseframe(String id)
     {
          editcourse ed=new editcourse(id);
       ed.setLocation(700,250);
       ed.setSize(400,400);
       ed.setVisible(true);
     }
     public void exframe(String id)
     {
       examframe us=new examframe(id);
       us.setLocation(700,250);
       us.setSize(400,400);
       us.setVisible(true);
     }
      public void addex(String id)
     {
       addexam add=new addexam(id);
       add.setLocation(700,250);
       add.setSize(400,400);
       add.setVisible(true);
     }
       public void addlec(String id)
     {
       addlect add=new addlect(id);
       add.setLocation(700,250);
       add.setSize(400,400);
       add.setVisible(true);
     }
       public void editex(String name)
     {
       editexam ed=new editexam(name);
       ed.setLocation(700,250);
       ed.setSize(400,400);
       ed.setVisible(true);
     }
       public void lecframe(String name)
       {
              lectureframe c =new lectureframe(name);
         c.setLocation(700,250);
       c.setSize(600,400);
       c.setVisible(true);
       }
       public void studframe()
       {
           Studentsframe c =new Studentsframe();
         c.setLocation(700,250);
       c.setSize(600,400);
       c.setVisible(true);
       }
         public void editlect(String name)
     {
       editlec ed=new editlec(name);
       ed.setLocation(700,250);
       ed.setSize(400,400);
       ed.setVisible(true);
       
     }
         public void addstud(String id,String name)
         {

       addstudent ad=new addstudent(id , name);
       ad.setLocation(700,250);
       ad.setSize(400,400);
       ad.setVisible(true);
         }
         public void studex(String id)
         {
              Studentex c =new Studentex(id);
         c.setLocation(700,250);
       c.setSize(600,400);
       c.setVisible(true);
         }
         public void studlec(String i)
         {
       studentlec c =new studentlec(i);
       c.setLocation(700,250);
       c.setSize(600,400);
       c.setVisible(true);
         }
         
          public void studlog(String id)
         {

       Studentlog ad=new Studentlog(id);
       ad.setLocation(700,250);
       ad.setSize(400,400);
       ad.setVisible(true);
         }
}
