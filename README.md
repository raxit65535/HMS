# HMS
Enterprise Application determining the flow of Hotel Management System, in J2EE 


Project Setup Instruction :

Software Requirement :

This project is developed in  MyEclipse. You can Download MyEclipse from the following Link.
(Note : MyEclipse is a licenced software)
https://www.genuitec.com/products/myeclipse/

Download XAMPP for MySql Server :
http://filehippo.com/download_xampp/

Install any GUI version of MySql, e.g. SqlYogCommunity :
http://www.softpedia.com/dyn-postdownload.php/c21654702bad51333871b4174ae90f35/57cb26df/1414c/0/1
(recommended to use username :localhost  Port: 3306 and no password, If one preffers to change this, then you have to make changes in hibernate.cfg.xml file in accordance with your changes)

Find the necessary JARS from the link below and add them to the project build path:
https://drive.google.com/open?id=0B-hn2OyKzAYTVUlUWVJrM0tIQkk


Project is made using MVC Struts 1.3 and Hibernate 3.2, MyEclipse will add all the required distribution file automatically once you import the project from workspace, one should have to just add external jar files, from the above mentioned link.
Project is using JPA annotation for Database schema Design. You can find Hibernate.cfg.xml file, choose your sql dilect and specify the database name, It will automatically create all the Table schema from POJO class, once one database query (insert/update/delete) is being executed.
For data flow in MVC pattern one should reffer struts-config.xml file.

(Please feel free ping me on my email, if having issue while setting up the project)
(note : Please remove Project report.pdf file from the project, since it is just thesis work made on the project)
