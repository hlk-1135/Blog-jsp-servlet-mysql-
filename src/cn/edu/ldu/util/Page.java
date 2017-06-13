package cn.edu.ldu.util;

public class Page {
	
	private int everyPage;          //每页显示的数量
	private int totalPage;          //总页数
	private int totalCount;         //总数量
	private int currentPage;        //当前页
	private int beginIndex;         //起始页
	private boolean hasPrepage;     //是否有上一页
	private boolean hasNextPage;    //是否有下一页
	
	public Page() {
	}

	public Page(int everyPage, int totalPage, int totalCount, int currentPage,
			int beginIndex, boolean hasPrepage, boolean hasNextPage) {
		this.everyPage = everyPage;
		this.totalPage = totalPage;
		this.totalCount = totalCount;
		this.currentPage = currentPage;
		this.beginIndex = beginIndex;
		this.hasPrepage = hasPrepage;
		this.hasNextPage = hasNextPage;
	}

	public int getEveryPage() {
		return everyPage;
	}

	public void setEveryPage(int everyPage) {
		this.everyPage = everyPage;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getBeginIndex() {
		return beginIndex;
	}

	public void setBeginIndex(int beginIndex) {
		this.beginIndex = beginIndex;
	}

	public boolean isHasPrepage() {
		return hasPrepage;
	}

	public void setHasPrepage(boolean hasPrepage) {
		this.hasPrepage = hasPrepage;
	}

	public boolean isHasNextPage() {
		return hasNextPage;
	}

	public void setHasNextPage(boolean hasNextPage) {
		this.hasNextPage = hasNextPage;
	}

}