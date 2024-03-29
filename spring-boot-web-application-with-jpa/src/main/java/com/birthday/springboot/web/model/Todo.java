package com.birthday.springboot.web.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.validation.constraints.Size;

@Entity
public class Todo {

	@Id
	@GeneratedValue
    private int id;

    private String user;
    
    @Size(min = 1, message = "Enter  Firstname.")
    private String firstName;
    @Size(min = 1, message = "Enter Last Name.")
    private String lastName;
    @Size(min = 1, message = "Enter Birth Place.")
    private String place;
    
    @Size(min = 10, message = "Enter atleast 10 Characters.")
    private String desc;

    private Date targetDate;


    public Todo() {
        super();
    }
    
    
    
    public Todo(int id, String user, String firstName, String lastName, String place, String desc, Date targetDate,
			boolean isDone) {
		super();
		this.id = id;
		this.user = user;
		this.firstName = firstName;
		this.lastName = lastName;
		this.place = place;
		this.desc = desc;
		this.targetDate = targetDate;
	}










	public String getLastName() {
		return lastName;
	}


	public String getFirstName() {
		return firstName;
	}



	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}



	public void setLastName(String lastName) {
		this.lastName = lastName;
	}


	public String getPlace() {
		return place;
	}


	public void setPlace(String place) {
		this.place = place;
	}


	public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public Date getTargetDate() {
        return targetDate;
    }

    public void setTargetDate(Date targetDate) {
        this.targetDate = targetDate;
    }


    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + id;
        return result;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        Todo other = (Todo) obj;
        if (id != other.id) {
            return false;
        }
        return true;
    }



	@Override
	public String toString() {
		return "Todo [id=" + id + ", user=" + user + ", firstName=" + firstName + ", lastName=" + lastName + ", place="
				+ place + ", desc=" + desc + ", targetDate=" + targetDate + "]";
	}


}