const base = {
    get() {
        return {
            url : "http://localhost:8080/xinnengyuanchongdainxitong/",
            name: "xinnengyuanchongdainxitong",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/xinnengyuanchongdainxitong/front/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "新能源充电系统"
        } 
    }
}
export default base
