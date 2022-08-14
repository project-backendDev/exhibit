package com.project.exhibit.util;

public class SearchPageVO {
	
	private int cno;
	private String searchValue;
	private String searchType;
	private int nowPage; // nowPage - 현재페이지
	private int startPage; // startPage - 시작페이지
	private int endPage; // endPage - 끝페이지
	private int total; // total - 게시글 총 갯수
	private int cntPerPage; // cntPerPage - 페이지당 글 갯수, 마지막페이지
	private int lastPage; // lastPage - 마지막페이지
	private int start; // start, end - 페이지 분할 값
	private int end;
	private int cntPage = 5;
	
	//카테고리 추가
	private Integer category_Seq;
	private String category;
	
	public Integer getCategory_Seq() {
		return category_Seq;
	}

	public void setCategory_Seq(Integer category_Seq) {
		this.category_Seq = category_Seq;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public SearchPageVO() {
	}

	public SearchPageVO(int total, int nowPage, int cntPerPage) {
		this.nowPage = nowPage;
		this.cntPerPage = cntPerPage;
		this.total = total;
		memberLastPage(total, cntPerPage);
		memberStartEndPage(nowPage, cntPage);
		memberStartEnd(nowPage, cntPerPage);
	}

	// 제일 마지막 페이지 계산
	private void memberLastPage(int total, int cntPerPage) {
		// 1.1page 올림처리 -> 2페이지 , 갯수 10 당 -> 11 개라면
		lastPage = (int) Math.ceil((double) total / (double) cntPerPage);
	}

	// 시작, 끝 페이지 계산
	private void memberStartEndPage(int nowPage, int cntPage) {
		endPage = ((int) Math.ceil((double) nowPage / (double) cntPage)) * cntPage;
		if (getLastPage() < getEndPage()) {
			endPage = getLastPage();
		}
		startPage = getEndPage() - cntPage + 1;
		if (getStartPage() < 1) {
			startPage = 1;
		}
	}

	// 최대 관심사
	private void memberStartEnd(int nowPage, int cntPerPage) {
		end = nowPage * cntPerPage;
		start = end - cntPerPage + 1;
	}
	
	public String getSearchValue() {
		return searchValue;
	}

	public void setSearchValue(String searchValue) {
		this.searchValue = searchValue;
	}

	public String getSearchType() {
		return searchType;
	}

	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}


	public int getNowPage() {
		return nowPage;
	}

	public void setNowPage(int nowPage) {
		this.nowPage = nowPage;
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public int getCntPerPage() {
		return cntPerPage;
	}

	public void setCntPerPage(int cntPerPage) {
		this.cntPerPage = cntPerPage;
	}

	public int getLastPage() {
		return lastPage;
	}

	public void setLastPage(int lastPage) {
		this.lastPage = lastPage;
	}

	public int getStart() {
		return start;
	}

	public void setStart(int start) {
		this.start = start;
	}

	public int getEnd() {
		return end;
	}

	public void setEnd(int end) {
		this.end = end;
	}

	public int setCntPage() {
		return cntPage;
	}

	public void getCntPage(int cntPage) {
		this.cntPage = cntPage;
	}

	public int getCno() {
		return cno;
	}

	public void setCno(int cno) {
		this.cno = cno;
	}
	
	@Override
	public String toString() {
		return "PagingVO [nowPage=" + nowPage + ", startPage=" + startPage + ", endPage=" + endPage + ", total=" + total
				+ ", cntPerPage=" + cntPerPage + ", lastPage=" + lastPage + ", start=" + start + ", end=" + end
				+ ", cntPage=" + cntPage + ", searchType=" + searchType + ", searchValue=" + searchValue + "]";
	}
}
