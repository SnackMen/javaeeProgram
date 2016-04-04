package pers.laowang.study2.el;

import java.util.HashMap;
import java.util.Map;
import java.util.TreeMap;

public class Questions {
    private String topic;
    private int numQuestion;
    private Map questions = new HashMap();

    public String getTopic() {
        return topic;
    }

    public void setTopic(String topic) {
        this.topic = topic;
    }

    public Map getQuestions() {
        return questions;
    }

    public void setQuestions(Map questions) {
        this.questions = questions;
    }

    public int getNumQuestion() {
        return numQuestion;
    }

    public void setNumQuestion(int numQuestion) {
        this.numQuestion = numQuestion;
    }
    public Questions(){
        Map topic = new TreeMap();
        topic.put("EL_1","How do I implicit objects?");
        topic.put("EL_2","How do I use JSTL?");
        topic.put("EL_3","How do I use the 'empty' operator?");
        questions.put("EL","topic");
    }
}
