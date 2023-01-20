package kr.co.study.dto;

import lombok.Data;

@Data
public class BoardDTO {
private  int seq;
private  int parent_seq;
private  int depth;
private  String title;
private  String content;
private  String nickname;
private  String regDate;
private  String modDate;
private  int visited;
private  String delflag;
}
