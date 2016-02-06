
# 国家环境质量数据
luckylucky7


```python
from IPython.display import HTML
HTML('<iframe src=http://datacenter.mep.gov.cn/report/air_daily/air_dairy.jsp?page=1 width=1000 height=500></iframe>')
# the webpage we would like to crawl
```




<iframe src=http://datacenter.mep.gov.cn/report/air_daily/air_dairy.jsp?page=1 width=1000 height=500></iframe>




```python
import urllib2
from bs4 import BeautifulSoup
import os
```


```python
# set work directory 
os.chdir('/Users/panhong1010/Documents/')
```


```python
url = "http://datacenter.mep.gov.cn/report/air_daily/air_dairy.jsp?page=1"
content = urllib2.urlopen(url).read() 
soup = BeautifulSoup(content)
print soup.title.text
table = soup.find("table", { "id" : "report1" })
```

    中华人民共和国环境保护部--政府网站数据中心


    /Users/panhong1010/anaconda/lib/python2.7/site-packages/bs4/__init__.py:166: UserWarning: No parser was explicitly specified, so I'm using the best available HTML parser for this system ("lxml"). This usually isn't a problem, but if you run this code on another system, or in a different virtual environment, it may use a different parser and behave differently.
    
    To get rid of this warning, change this:
    
     BeautifulSoup([your markup])
    
    to this:
    
     BeautifulSoup([your markup], "lxml")
    
      markup_type=markup_type))



```python
print table
```

    <table cellpadding="0" cellspacing="0" id="report1" onmouseout="report1432342out()" style="width:933px;table-layout:fixed;border-collapse:collapse">
    <colgroup>
    <col style="width:1px;"></col>
    <col style="width:96px;"></col>
    <col style="width:175px;"></col>
    <col style="width:195px;"></col>
    <col style="width:158px;"></col>
    <col style="width:148px;"></col>
    <col style="width:160px;"></col>
    </colgroup>
    <tr height="30" style="height:30px;">
    <td class="report1_10" onmouseover="report1432342over()"></td>
    <td class="report1_14" onmouseover="report1432342over()"></td>
    <td class="report1_6" colspan="4" onmouseover="report1432342over()">全 国 城 市 空 气 质 量 日 报</td>
    <td class="report1_3"></td>
    </tr>
    <tr height="30" style="height:30px;">
    <td class="report1_7" colspan="2">序号</td>
    <td class="report1_7" onmouseover="report1432342over()">城市</td>
    <td class="report1_7">日期</td>
    <td class="report1_7">AQI指数</td>
    <td class="report1_5">空气质量级别</td>
    <td class="report1_7" onmouseover="report1432342over()">首要污染物</td>
    </tr>
    <tr height="30" style="height:30px;">
    <td class="report1_11" colspan="2" onmouseover="report1432342over()" style="color:#00A7D1;">1</td>
    <td class="report1_11" style="color:#00A7D1;">北京市</td>
    <td class="report1_11" style="color:#00A7D1;">2015-11-24</td>
    <td class="report1_11" style="color:#00A7D1;">65</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00A7D1;">良</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00A7D1;">NO2</td>
    </tr>
    <tr height="30" style="height:30px;">
    <td class="report1_11" colspan="2" onmouseover="report1432342over()" style="color:#00A7D1;">2</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00A7D1;">天津市</td>
    <td class="report1_11" style="color:#00A7D1;">2015-11-24</td>
    <td class="report1_11" style="color:#00A7D1;">64</td>
    <td class="report1_11" style="color:#00A7D1;">良</td>
    <td class="report1_11" style="color:#00A7D1;">NO2</td>
    </tr>
    <tr height="30" style="height:30px;">
    <td class="report1_11" colspan="2" style="color:#00A7D1;">3</td>
    <td class="report1_11" style="color:#00A7D1;">石家庄市</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00A7D1;">2015-11-24</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00A7D1;">77</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00A7D1;">良</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00A7D1;">PM2.5</td>
    </tr>
    <tr height="30" style="height:30px;">
    <td class="report1_11" colspan="2" onmouseover="report1432342over()" style="color:#00A7D1;">4</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00A7D1;">唐山市</td>
    <td class="report1_11" style="color:#00A7D1;">2015-11-24</td>
    <td class="report1_11" style="color:#00A7D1;">68</td>
    <td class="report1_11" style="color:#00A7D1;">良</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00A7D1;">NO2</td>
    </tr>
    <tr height="30" style="height:30px;">
    <td class="report1_11" colspan="2" style="color:#00FF00;">5</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00FF00;">秦皇岛市</td>
    <td class="report1_11" style="color:#00FF00;">2015-11-24</td>
    <td class="report1_11" style="color:#00FF00;">33</td>
    <td class="report1_11" style="color:#00FF00;">优</td>
    <td class="report1_11" style="color:#00FF00;"></td>
    </tr>
    <tr height="30" style="height:30px;">
    <td class="report1_11" colspan="2" onmouseover="report1432342over()" style="color:#00A7D1;">6</td>
    <td class="report1_11" style="color:#00A7D1;">邯郸市</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00A7D1;">2015-11-24</td>
    <td class="report1_11" style="color:#00A7D1;">64</td>
    <td class="report1_11" style="color:#00A7D1;">良</td>
    <td class="report1_11" style="color:#00A7D1;">PM2.5</td>
    </tr>
    <tr height="30" style="height:30px;">
    <td class="report1_11" colspan="2" onmouseover="report1432342over()" style="color:#00A7D1;">7</td>
    <td class="report1_11" style="color:#00A7D1;">邢台市</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00A7D1;">2015-11-24</td>
    <td class="report1_11" style="color:#00A7D1;">63</td>
    <td class="report1_11" style="color:#00A7D1;">良</td>
    <td class="report1_11" style="color:#00A7D1;">PM10</td>
    </tr>
    <tr height="30" style="height:30px;">
    <td class="report1_11" colspan="2" style="color:#00A7D1;">8</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00A7D1;">保定市</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00A7D1;">2015-11-24</td>
    <td class="report1_11" style="color:#00A7D1;">63</td>
    <td class="report1_11" style="color:#00A7D1;">良</td>
    <td class="report1_11" style="color:#00A7D1;">PM2.5</td>
    </tr>
    <tr height="30" style="height:30px;">
    <td class="report1_11" colspan="2" style="color:#00FF00;">9</td>
    <td class="report1_11" style="color:#00FF00;">承德市</td>
    <td class="report1_11" style="color:#00FF00;">2015-11-24</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00FF00;">48</td>
    <td class="report1_11" style="color:#00FF00;">优</td>
    <td class="report1_11" style="color:#00FF00;"></td>
    </tr>
    <tr height="30" style="height:30px;">
    <td class="report1_11" colspan="2" onmouseover="report1432342over()" style="color:#00A7D1;">10</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00A7D1;">沧州市</td>
    <td class="report1_11" style="color:#00A7D1;">2015-11-24</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00A7D1;">59</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00A7D1;">良</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00A7D1;">NO2</td>
    </tr>
    <tr height="30" style="height:30px;">
    <td class="report1_11" colspan="2" onmouseover="report1432342over()" style="color:#00A7D1;">11</td>
    <td class="report1_11" style="color:#00A7D1;">廊坊市</td>
    <td class="report1_11" style="color:#00A7D1;">2015-11-24</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00A7D1;">75</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00A7D1;">良</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00A7D1;">PM2.5</td>
    </tr>
    <tr height="30" style="height:30px;">
    <td class="report1_11" colspan="2" onmouseover="report1432342over()" style="color:#00A7D1;">12</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00A7D1;">衡水市</td>
    <td class="report1_11" style="color:#00A7D1;">2015-11-24</td>
    <td class="report1_11" style="color:#00A7D1;">74</td>
    <td class="report1_11" style="color:#00A7D1;">良</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00A7D1;">PM2.5</td>
    </tr>
    <tr height="30" style="height:30px;">
    <td class="report1_11" colspan="2" style="color:#00A7D1;">13</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00A7D1;">张家口市</td>
    <td class="report1_11" style="color:#00A7D1;">2015-11-24</td>
    <td class="report1_11" style="color:#00A7D1;">61</td>
    <td class="report1_11" style="color:#00A7D1;">良</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00A7D1;">PM10</td>
    </tr>
    <tr height="30" style="height:30px;">
    <td class="report1_11" colspan="2" style="color:#00A7D1;">14</td>
    <td class="report1_11" style="color:#00A7D1;">太原市</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00A7D1;">2015-11-24</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00A7D1;">62</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00A7D1;">良</td>
    <td class="report1_11" style="color:#00A7D1;">SO2</td>
    </tr>
    <tr height="30" style="height:30px;">
    <td class="report1_11" colspan="2" onmouseover="report1432342over()" style="color:#00A7D1;">15</td>
    <td class="report1_11" style="color:#00A7D1;">大同市</td>
    <td class="report1_11" style="color:#00A7D1;">2015-11-24</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00A7D1;">68</td>
    <td class="report1_11" style="color:#00A7D1;">良</td>
    <td class="report1_11" style="color:#00A7D1;">SO2</td>
    </tr>
    <tr height="30" style="height:30px;">
    <td class="report1_11" colspan="2" style="color:#00A7D1;">16</td>
    <td class="report1_11" style="color:#00A7D1;">阳泉市</td>
    <td class="report1_11" style="color:#00A7D1;">2015-11-24</td>
    <td class="report1_11" style="color:#00A7D1;">69</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00A7D1;">良</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00A7D1;">PM2.5</td>
    </tr>
    <tr height="30" style="height:30px;">
    <td class="report1_11" colspan="2" style="color:#ADAD04;">17</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#ADAD04;">长治市</td>
    <td class="report1_11" style="color:#ADAD04;">2015-11-24</td>
    <td class="report1_11" style="color:#ADAD04;">111</td>
    <td class="report1_11" style="color:#ADAD04;">轻度污染</td>
    <td class="report1_11" style="color:#ADAD04;">PM10</td>
    </tr>
    <tr height="30" style="height:30px;">
    <td class="report1_11" colspan="2" style="color:#ADAD04;">18</td>
    <td class="report1_11" style="color:#ADAD04;">晋城市</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#ADAD04;">2015-11-24</td>
    <td class="report1_11" style="color:#ADAD04;">105</td>
    <td class="report1_11" style="color:#ADAD04;">轻度污染</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#ADAD04;">PM2.5</td>
    </tr>
    <tr height="30" style="height:30px;">
    <td class="report1_11" colspan="2" onmouseover="report1432342over()" style="color:#00A7D1;">19</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00A7D1;">朔州市</td>
    <td class="report1_11" style="color:#00A7D1;">2015-11-24</td>
    <td class="report1_11" style="color:#00A7D1;">76</td>
    <td class="report1_11" style="color:#00A7D1;">良</td>
    <td class="report1_11" style="color:#00A7D1;">SO2</td>
    </tr>
    <tr height="30" style="height:30px;">
    <td class="report1_11" colspan="2" onmouseover="report1432342over()" style="color:#00A7D1;">20</td>
    <td class="report1_11" style="color:#00A7D1;">晋中市</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00A7D1;">2015-11-24</td>
    <td class="report1_11" style="color:#00A7D1;">73</td>
    <td class="report1_11" style="color:#00A7D1;">良</td>
    <td class="report1_11" style="color:#00A7D1;">SO2</td>
    </tr>
    <tr height="30" style="height:30px;">
    <td class="report1_11" colspan="2" style="color:#00FF00;">21</td>
    <td class="report1_11" style="color:#00FF00;">运城市</td>
    <td class="report1_11" style="color:#00FF00;">2015-11-24</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00FF00;">44</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00FF00;">优</td>
    <td class="report1_11" style="color:#00FF00;"></td>
    </tr>
    <tr height="30" style="height:30px;">
    <td class="report1_11" colspan="2" onmouseover="report1432342over()" style="color:#00A7D1;">22</td>
    <td class="report1_11" style="color:#00A7D1;">忻州市</td>
    <td class="report1_11" style="color:#00A7D1;">2015-11-24</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00A7D1;">74</td>
    <td class="report1_11" style="color:#00A7D1;">良</td>
    <td class="report1_11" style="color:#00A7D1;">PM2.5</td>
    </tr>
    <tr height="30" style="height:30px;">
    <td class="report1_11" colspan="2" style="color:#00A7D1;">23</td>
    <td class="report1_11" style="color:#00A7D1;">临汾市</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00A7D1;">2015-11-24</td>
    <td class="report1_11" style="color:#00A7D1;">83</td>
    <td class="report1_11" style="color:#00A7D1;">良</td>
    <td class="report1_11" style="color:#00A7D1;">PM2.5</td>
    </tr>
    <tr height="30" style="height:30px;">
    <td class="report1_11" colspan="2" style="color:#00A7D1;">24</td>
    <td class="report1_11" style="color:#00A7D1;">吕梁市</td>
    <td class="report1_11" style="color:#00A7D1;">2015-11-24</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00A7D1;">67</td>
    <td class="report1_11" style="color:#00A7D1;">良</td>
    <td class="report1_11" style="color:#00A7D1;">CO</td>
    </tr>
    <tr height="30" style="height:30px;">
    <td class="report1_11" colspan="2" onmouseover="report1432342over()" style="color:#00A7D1;">25</td>
    <td class="report1_11" style="color:#00A7D1;">呼和浩特市</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00A7D1;">2015-11-24</td>
    <td class="report1_11" style="color:#00A7D1;">62</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00A7D1;">良</td>
    <td class="report1_11" style="color:#00A7D1;">PM2.5</td>
    </tr>
    <tr height="30" style="height:30px;">
    <td class="report1_11" colspan="2" style="color:#00A7D1;">26</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00A7D1;">包头市</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00A7D1;">2015-11-24</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00A7D1;">67</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00A7D1;">良</td>
    <td class="report1_11" style="color:#00A7D1;">PM10</td>
    </tr>
    <tr height="30" style="height:30px;">
    <td class="report1_11" colspan="2" style="color:#00FF00;">27</td>
    <td class="report1_11" style="color:#00FF00;">乌海市</td>
    <td class="report1_11" style="color:#00FF00;">2015-11-24</td>
    <td class="report1_11" style="color:#00FF00;">39</td>
    <td class="report1_11" style="color:#00FF00;">优</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00FF00;"></td>
    </tr>
    <tr height="30" style="height:30px;">
    <td class="report1_11" colspan="2" style="color:#00A7D1;">28</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00A7D1;">赤峰市</td>
    <td class="report1_11" style="color:#00A7D1;">2015-11-24</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00A7D1;">89</td>
    <td class="report1_11" style="color:#00A7D1;">良</td>
    <td class="report1_11" style="color:#00A7D1;">SO2</td>
    </tr>
    <tr height="30" style="height:30px;">
    <td class="report1_11" colspan="2" style="color:#00FF00;">29</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00FF00;">通辽市</td>
    <td class="report1_11" style="color:#00FF00;">2015-11-24</td>
    <td class="report1_11" style="color:#00FF00;">42</td>
    <td class="report1_11" style="color:#00FF00;">优</td>
    <td class="report1_11" style="color:#00FF00;"></td>
    </tr>
    <tr height="30" style="height:30px;">
    <td class="report1_11" colspan="2" style="color:#00FF00;">30</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00FF00;">鄂尔多斯市</td>
    <td class="report1_11" style="color:#00FF00;">2015-11-24</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00FF00;">33</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00FF00;">优</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00FF00;"></td>
    </tr>
    <tr height="25" style="height:25px;">
    <td class="report1_8" colspan="3">记录总数：<b><font color="#004e98">367</font></b>　　总页数：<b><font color="#004e98">13</font></b></td>
    <td class="report1_9">每页记录数：<b><font color="#004e98">30</font></b></td>
    <td class="report1_13" style="padding-right:4px;">首页 上一页</td>
    <td class="report1_9"><a href="javascript: jumpTo(2)">下一页</a> <a href="javascript: jumpTo(13)">末页</a></td>
    <td class="report1_13"><input name="pageNum" size="5" type="text" value="1"/> <input onclick="jump('13');" type="button" value="跳转"/></td>
    </tr>
    <tr height="25" style="height:25px;">
    <td class="report1_2"></td>
    <td class="report1_2"></td>
    <td class="report1_2"></td>
    <td class="report1_2" onmouseover="report1432342over()"></td>
    <td class="report1_2" onmouseover="report1432342over()"></td>
    <td class="report1_2" onmouseover="report1432342over()"></td>
    <td class="report1_13" onmouseover="report1432342over()"><a href="#" onclick="forwardToMain();"><img border="no" src="../images/button/forwardIndex.gif"/></a></td>
    </tr>
    <tr height="300" style="height:300px;">
    <td class="report1_2"></td>
    <td class="report1_12" colspan="6"><img border="no" height="300" ismap="" src="http://datacenter.mep.gov.cn:80/report/reportServlet?action=9&amp;graphId=110458&amp;time=1448445892664" usemap="#110458" width="932"/><map name="110458"><area coords="76,140,86,216" shape="rect" title="北京市 AQI指数 65"></area>
    <area coords="104,141,114,216" shape="rect" title="天津市 AQI指数 64"></area>
    <area coords="131,126,141,216" shape="rect" title="石家庄市 AQI指数 77"></area>
    <area coords="159,136,169,216" shape="rect" title="唐山市 AQI指数 68"></area>
    <area coords="187,178,197,216" shape="rect" title="秦皇岛市 AQI指数 33"></area>
    <area coords="215,141,225,216" shape="rect" title="邯郸市 AQI指数 64"></area>
    <area coords="243,142,253,216" shape="rect" title="邢台市 AQI指数 63"></area>
    <area coords="271,142,281,216" shape="rect" title="保定市 AQI指数 63"></area>
    <area coords="299,160,309,216" shape="rect" title="承德市 AQI指数 48"></area>
    <area coords="327,147,337,216" shape="rect" title="沧州市 AQI指数 59"></area>
    <area coords="354,128,364,216" shape="rect" title="廊坊市 AQI指数 75"></area>
    <area coords="382,129,392,216" shape="rect" title="衡水市 AQI指数 74"></area>
    <area coords="410,144,420,216" shape="rect" title="张家口市 AQI指数 61"></area>
    <area coords="438,143,448,216" shape="rect" title="太原市 AQI指数 62"></area>
    <area coords="466,136,476,216" shape="rect" title="大同市 AQI指数 68"></area>
    <area coords="494,135,504,216" shape="rect" title="阳泉市 AQI指数 69"></area>
    <area coords="522,85,532,216" shape="rect" title="长治市 AQI指数 111"></area>
    <area coords="549,92,559,216" shape="rect" title="晋城市 AQI指数 105"></area>
    <area coords="577,127,587,216" shape="rect" title="朔州市 AQI指数 76"></area>
    <area coords="605,130,615,216" shape="rect" title="晋中市 AQI指数 73"></area>
    <area coords="633,165,643,216" shape="rect" title="运城市 AQI指数 44"></area>
    <area coords="661,129,671,216" shape="rect" title="忻州市 AQI指数 74"></area>
    <area coords="689,118,699,216" shape="rect" title="临汾市 AQI指数 83"></area>
    <area coords="717,137,727,216" shape="rect" title="吕梁市 AQI指数 67"></area>
    <area coords="745,143,755,216" shape="rect" title="呼和浩特市 AQI指数 62"></area>
    <area coords="772,137,782,216" shape="rect" title="包头市 AQI指数 67"></area>
    <area coords="800,170,810,216" shape="rect" title="乌海市 AQI指数 39"></area>
    <area coords="828,111,838,216" shape="rect" title="赤峰市 AQI指数 89"></area>
    <area coords="856,167,866,216" shape="rect" title="通辽市 AQI指数 42"></area>
    <area coords="884,178,894,216" shape="rect" title="鄂尔多斯市 AQI指数 33"></area>
    </map></td>
    </tr>
    </table>



```python
for row in table.findAll("tr"):
    print row
    print "------"
```

    <tr height="30" style="height:30px;">
    <td class="report1_10" onmouseover="report1432342over()"></td>
    <td class="report1_14" onmouseover="report1432342over()"></td>
    <td class="report1_6" colspan="4" onmouseover="report1432342over()">全 国 城 市 空 气 质 量 日 报</td>
    <td class="report1_3"></td>
    </tr>
    ------
    <tr height="30" style="height:30px;">
    <td class="report1_7" colspan="2">序号</td>
    <td class="report1_7" onmouseover="report1432342over()">城市</td>
    <td class="report1_7">日期</td>
    <td class="report1_7">AQI指数</td>
    <td class="report1_5">空气质量级别</td>
    <td class="report1_7" onmouseover="report1432342over()">首要污染物</td>
    </tr>
    ------
    <tr height="30" style="height:30px;">
    <td class="report1_11" colspan="2" onmouseover="report1432342over()" style="color:#00A7D1;">1</td>
    <td class="report1_11" style="color:#00A7D1;">北京市</td>
    <td class="report1_11" style="color:#00A7D1;">2015-11-24</td>
    <td class="report1_11" style="color:#00A7D1;">65</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00A7D1;">良</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00A7D1;">NO2</td>
    </tr>
    ------
    <tr height="30" style="height:30px;">
    <td class="report1_11" colspan="2" onmouseover="report1432342over()" style="color:#00A7D1;">2</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00A7D1;">天津市</td>
    <td class="report1_11" style="color:#00A7D1;">2015-11-24</td>
    <td class="report1_11" style="color:#00A7D1;">64</td>
    <td class="report1_11" style="color:#00A7D1;">良</td>
    <td class="report1_11" style="color:#00A7D1;">NO2</td>
    </tr>
    ------
    <tr height="30" style="height:30px;">
    <td class="report1_11" colspan="2" style="color:#00A7D1;">3</td>
    <td class="report1_11" style="color:#00A7D1;">石家庄市</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00A7D1;">2015-11-24</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00A7D1;">77</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00A7D1;">良</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00A7D1;">PM2.5</td>
    </tr>
    ------
    <tr height="30" style="height:30px;">
    <td class="report1_11" colspan="2" onmouseover="report1432342over()" style="color:#00A7D1;">4</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00A7D1;">唐山市</td>
    <td class="report1_11" style="color:#00A7D1;">2015-11-24</td>
    <td class="report1_11" style="color:#00A7D1;">68</td>
    <td class="report1_11" style="color:#00A7D1;">良</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00A7D1;">NO2</td>
    </tr>
    ------
    <tr height="30" style="height:30px;">
    <td class="report1_11" colspan="2" style="color:#00FF00;">5</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00FF00;">秦皇岛市</td>
    <td class="report1_11" style="color:#00FF00;">2015-11-24</td>
    <td class="report1_11" style="color:#00FF00;">33</td>
    <td class="report1_11" style="color:#00FF00;">优</td>
    <td class="report1_11" style="color:#00FF00;"></td>
    </tr>
    ------
    <tr height="30" style="height:30px;">
    <td class="report1_11" colspan="2" onmouseover="report1432342over()" style="color:#00A7D1;">6</td>
    <td class="report1_11" style="color:#00A7D1;">邯郸市</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00A7D1;">2015-11-24</td>
    <td class="report1_11" style="color:#00A7D1;">64</td>
    <td class="report1_11" style="color:#00A7D1;">良</td>
    <td class="report1_11" style="color:#00A7D1;">PM2.5</td>
    </tr>
    ------
    <tr height="30" style="height:30px;">
    <td class="report1_11" colspan="2" onmouseover="report1432342over()" style="color:#00A7D1;">7</td>
    <td class="report1_11" style="color:#00A7D1;">邢台市</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00A7D1;">2015-11-24</td>
    <td class="report1_11" style="color:#00A7D1;">63</td>
    <td class="report1_11" style="color:#00A7D1;">良</td>
    <td class="report1_11" style="color:#00A7D1;">PM10</td>
    </tr>
    ------
    <tr height="30" style="height:30px;">
    <td class="report1_11" colspan="2" style="color:#00A7D1;">8</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00A7D1;">保定市</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00A7D1;">2015-11-24</td>
    <td class="report1_11" style="color:#00A7D1;">63</td>
    <td class="report1_11" style="color:#00A7D1;">良</td>
    <td class="report1_11" style="color:#00A7D1;">PM2.5</td>
    </tr>
    ------
    <tr height="30" style="height:30px;">
    <td class="report1_11" colspan="2" style="color:#00FF00;">9</td>
    <td class="report1_11" style="color:#00FF00;">承德市</td>
    <td class="report1_11" style="color:#00FF00;">2015-11-24</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00FF00;">48</td>
    <td class="report1_11" style="color:#00FF00;">优</td>
    <td class="report1_11" style="color:#00FF00;"></td>
    </tr>
    ------
    <tr height="30" style="height:30px;">
    <td class="report1_11" colspan="2" onmouseover="report1432342over()" style="color:#00A7D1;">10</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00A7D1;">沧州市</td>
    <td class="report1_11" style="color:#00A7D1;">2015-11-24</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00A7D1;">59</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00A7D1;">良</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00A7D1;">NO2</td>
    </tr>
    ------
    <tr height="30" style="height:30px;">
    <td class="report1_11" colspan="2" onmouseover="report1432342over()" style="color:#00A7D1;">11</td>
    <td class="report1_11" style="color:#00A7D1;">廊坊市</td>
    <td class="report1_11" style="color:#00A7D1;">2015-11-24</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00A7D1;">75</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00A7D1;">良</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00A7D1;">PM2.5</td>
    </tr>
    ------
    <tr height="30" style="height:30px;">
    <td class="report1_11" colspan="2" onmouseover="report1432342over()" style="color:#00A7D1;">12</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00A7D1;">衡水市</td>
    <td class="report1_11" style="color:#00A7D1;">2015-11-24</td>
    <td class="report1_11" style="color:#00A7D1;">74</td>
    <td class="report1_11" style="color:#00A7D1;">良</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00A7D1;">PM2.5</td>
    </tr>
    ------
    <tr height="30" style="height:30px;">
    <td class="report1_11" colspan="2" style="color:#00A7D1;">13</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00A7D1;">张家口市</td>
    <td class="report1_11" style="color:#00A7D1;">2015-11-24</td>
    <td class="report1_11" style="color:#00A7D1;">61</td>
    <td class="report1_11" style="color:#00A7D1;">良</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00A7D1;">PM10</td>
    </tr>
    ------
    <tr height="30" style="height:30px;">
    <td class="report1_11" colspan="2" style="color:#00A7D1;">14</td>
    <td class="report1_11" style="color:#00A7D1;">太原市</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00A7D1;">2015-11-24</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00A7D1;">62</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00A7D1;">良</td>
    <td class="report1_11" style="color:#00A7D1;">SO2</td>
    </tr>
    ------
    <tr height="30" style="height:30px;">
    <td class="report1_11" colspan="2" onmouseover="report1432342over()" style="color:#00A7D1;">15</td>
    <td class="report1_11" style="color:#00A7D1;">大同市</td>
    <td class="report1_11" style="color:#00A7D1;">2015-11-24</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00A7D1;">68</td>
    <td class="report1_11" style="color:#00A7D1;">良</td>
    <td class="report1_11" style="color:#00A7D1;">SO2</td>
    </tr>
    ------
    <tr height="30" style="height:30px;">
    <td class="report1_11" colspan="2" style="color:#00A7D1;">16</td>
    <td class="report1_11" style="color:#00A7D1;">阳泉市</td>
    <td class="report1_11" style="color:#00A7D1;">2015-11-24</td>
    <td class="report1_11" style="color:#00A7D1;">69</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00A7D1;">良</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00A7D1;">PM2.5</td>
    </tr>
    ------
    <tr height="30" style="height:30px;">
    <td class="report1_11" colspan="2" style="color:#ADAD04;">17</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#ADAD04;">长治市</td>
    <td class="report1_11" style="color:#ADAD04;">2015-11-24</td>
    <td class="report1_11" style="color:#ADAD04;">111</td>
    <td class="report1_11" style="color:#ADAD04;">轻度污染</td>
    <td class="report1_11" style="color:#ADAD04;">PM10</td>
    </tr>
    ------
    <tr height="30" style="height:30px;">
    <td class="report1_11" colspan="2" style="color:#ADAD04;">18</td>
    <td class="report1_11" style="color:#ADAD04;">晋城市</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#ADAD04;">2015-11-24</td>
    <td class="report1_11" style="color:#ADAD04;">105</td>
    <td class="report1_11" style="color:#ADAD04;">轻度污染</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#ADAD04;">PM2.5</td>
    </tr>
    ------
    <tr height="30" style="height:30px;">
    <td class="report1_11" colspan="2" onmouseover="report1432342over()" style="color:#00A7D1;">19</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00A7D1;">朔州市</td>
    <td class="report1_11" style="color:#00A7D1;">2015-11-24</td>
    <td class="report1_11" style="color:#00A7D1;">76</td>
    <td class="report1_11" style="color:#00A7D1;">良</td>
    <td class="report1_11" style="color:#00A7D1;">SO2</td>
    </tr>
    ------
    <tr height="30" style="height:30px;">
    <td class="report1_11" colspan="2" onmouseover="report1432342over()" style="color:#00A7D1;">20</td>
    <td class="report1_11" style="color:#00A7D1;">晋中市</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00A7D1;">2015-11-24</td>
    <td class="report1_11" style="color:#00A7D1;">73</td>
    <td class="report1_11" style="color:#00A7D1;">良</td>
    <td class="report1_11" style="color:#00A7D1;">SO2</td>
    </tr>
    ------
    <tr height="30" style="height:30px;">
    <td class="report1_11" colspan="2" style="color:#00FF00;">21</td>
    <td class="report1_11" style="color:#00FF00;">运城市</td>
    <td class="report1_11" style="color:#00FF00;">2015-11-24</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00FF00;">44</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00FF00;">优</td>
    <td class="report1_11" style="color:#00FF00;"></td>
    </tr>
    ------
    <tr height="30" style="height:30px;">
    <td class="report1_11" colspan="2" onmouseover="report1432342over()" style="color:#00A7D1;">22</td>
    <td class="report1_11" style="color:#00A7D1;">忻州市</td>
    <td class="report1_11" style="color:#00A7D1;">2015-11-24</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00A7D1;">74</td>
    <td class="report1_11" style="color:#00A7D1;">良</td>
    <td class="report1_11" style="color:#00A7D1;">PM2.5</td>
    </tr>
    ------
    <tr height="30" style="height:30px;">
    <td class="report1_11" colspan="2" style="color:#00A7D1;">23</td>
    <td class="report1_11" style="color:#00A7D1;">临汾市</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00A7D1;">2015-11-24</td>
    <td class="report1_11" style="color:#00A7D1;">83</td>
    <td class="report1_11" style="color:#00A7D1;">良</td>
    <td class="report1_11" style="color:#00A7D1;">PM2.5</td>
    </tr>
    ------
    <tr height="30" style="height:30px;">
    <td class="report1_11" colspan="2" style="color:#00A7D1;">24</td>
    <td class="report1_11" style="color:#00A7D1;">吕梁市</td>
    <td class="report1_11" style="color:#00A7D1;">2015-11-24</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00A7D1;">67</td>
    <td class="report1_11" style="color:#00A7D1;">良</td>
    <td class="report1_11" style="color:#00A7D1;">CO</td>
    </tr>
    ------
    <tr height="30" style="height:30px;">
    <td class="report1_11" colspan="2" onmouseover="report1432342over()" style="color:#00A7D1;">25</td>
    <td class="report1_11" style="color:#00A7D1;">呼和浩特市</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00A7D1;">2015-11-24</td>
    <td class="report1_11" style="color:#00A7D1;">62</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00A7D1;">良</td>
    <td class="report1_11" style="color:#00A7D1;">PM2.5</td>
    </tr>
    ------
    <tr height="30" style="height:30px;">
    <td class="report1_11" colspan="2" style="color:#00A7D1;">26</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00A7D1;">包头市</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00A7D1;">2015-11-24</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00A7D1;">67</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00A7D1;">良</td>
    <td class="report1_11" style="color:#00A7D1;">PM10</td>
    </tr>
    ------
    <tr height="30" style="height:30px;">
    <td class="report1_11" colspan="2" style="color:#00FF00;">27</td>
    <td class="report1_11" style="color:#00FF00;">乌海市</td>
    <td class="report1_11" style="color:#00FF00;">2015-11-24</td>
    <td class="report1_11" style="color:#00FF00;">39</td>
    <td class="report1_11" style="color:#00FF00;">优</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00FF00;"></td>
    </tr>
    ------
    <tr height="30" style="height:30px;">
    <td class="report1_11" colspan="2" style="color:#00A7D1;">28</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00A7D1;">赤峰市</td>
    <td class="report1_11" style="color:#00A7D1;">2015-11-24</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00A7D1;">89</td>
    <td class="report1_11" style="color:#00A7D1;">良</td>
    <td class="report1_11" style="color:#00A7D1;">SO2</td>
    </tr>
    ------
    <tr height="30" style="height:30px;">
    <td class="report1_11" colspan="2" style="color:#00FF00;">29</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00FF00;">通辽市</td>
    <td class="report1_11" style="color:#00FF00;">2015-11-24</td>
    <td class="report1_11" style="color:#00FF00;">42</td>
    <td class="report1_11" style="color:#00FF00;">优</td>
    <td class="report1_11" style="color:#00FF00;"></td>
    </tr>
    ------
    <tr height="30" style="height:30px;">
    <td class="report1_11" colspan="2" style="color:#00FF00;">30</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00FF00;">鄂尔多斯市</td>
    <td class="report1_11" style="color:#00FF00;">2015-11-24</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00FF00;">33</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00FF00;">优</td>
    <td class="report1_11" onmouseover="report1432342over()" style="color:#00FF00;"></td>
    </tr>
    ------
    <tr height="25" style="height:25px;">
    <td class="report1_8" colspan="3">记录总数：<b><font color="#004e98">367</font></b>　　总页数：<b><font color="#004e98">13</font></b></td>
    <td class="report1_9">每页记录数：<b><font color="#004e98">30</font></b></td>
    <td class="report1_13" style="padding-right:4px;">首页 上一页</td>
    <td class="report1_9"><a href="javascript: jumpTo(2)">下一页</a> <a href="javascript: jumpTo(13)">末页</a></td>
    <td class="report1_13"><input name="pageNum" size="5" type="text" value="1"/> <input onclick="jump('13');" type="button" value="跳转"/></td>
    </tr>
    ------
    <tr height="25" style="height:25px;">
    <td class="report1_2"></td>
    <td class="report1_2"></td>
    <td class="report1_2"></td>
    <td class="report1_2" onmouseover="report1432342over()"></td>
    <td class="report1_2" onmouseover="report1432342over()"></td>
    <td class="report1_2" onmouseover="report1432342over()"></td>
    <td class="report1_13" onmouseover="report1432342over()"><a href="#" onclick="forwardToMain();"><img border="no" src="../images/button/forwardIndex.gif"/></a></td>
    </tr>
    ------
    <tr height="300" style="height:300px;">
    <td class="report1_2"></td>
    <td class="report1_12" colspan="6"><img border="no" height="300" ismap="" src="http://datacenter.mep.gov.cn:80/report/reportServlet?action=9&amp;graphId=110458&amp;time=1448445892664" usemap="#110458" width="932"/><map name="110458"><area coords="76,140,86,216" shape="rect" title="北京市 AQI指数 65"></area>
    <area coords="104,141,114,216" shape="rect" title="天津市 AQI指数 64"></area>
    <area coords="131,126,141,216" shape="rect" title="石家庄市 AQI指数 77"></area>
    <area coords="159,136,169,216" shape="rect" title="唐山市 AQI指数 68"></area>
    <area coords="187,178,197,216" shape="rect" title="秦皇岛市 AQI指数 33"></area>
    <area coords="215,141,225,216" shape="rect" title="邯郸市 AQI指数 64"></area>
    <area coords="243,142,253,216" shape="rect" title="邢台市 AQI指数 63"></area>
    <area coords="271,142,281,216" shape="rect" title="保定市 AQI指数 63"></area>
    <area coords="299,160,309,216" shape="rect" title="承德市 AQI指数 48"></area>
    <area coords="327,147,337,216" shape="rect" title="沧州市 AQI指数 59"></area>
    <area coords="354,128,364,216" shape="rect" title="廊坊市 AQI指数 75"></area>
    <area coords="382,129,392,216" shape="rect" title="衡水市 AQI指数 74"></area>
    <area coords="410,144,420,216" shape="rect" title="张家口市 AQI指数 61"></area>
    <area coords="438,143,448,216" shape="rect" title="太原市 AQI指数 62"></area>
    <area coords="466,136,476,216" shape="rect" title="大同市 AQI指数 68"></area>
    <area coords="494,135,504,216" shape="rect" title="阳泉市 AQI指数 69"></area>
    <area coords="522,85,532,216" shape="rect" title="长治市 AQI指数 111"></area>
    <area coords="549,92,559,216" shape="rect" title="晋城市 AQI指数 105"></area>
    <area coords="577,127,587,216" shape="rect" title="朔州市 AQI指数 76"></area>
    <area coords="605,130,615,216" shape="rect" title="晋中市 AQI指数 73"></area>
    <area coords="633,165,643,216" shape="rect" title="运城市 AQI指数 44"></area>
    <area coords="661,129,671,216" shape="rect" title="忻州市 AQI指数 74"></area>
    <area coords="689,118,699,216" shape="rect" title="临汾市 AQI指数 83"></area>
    <area coords="717,137,727,216" shape="rect" title="吕梁市 AQI指数 67"></area>
    <area coords="745,143,755,216" shape="rect" title="呼和浩特市 AQI指数 62"></area>
    <area coords="772,137,782,216" shape="rect" title="包头市 AQI指数 67"></area>
    <area coords="800,170,810,216" shape="rect" title="乌海市 AQI指数 39"></area>
    <area coords="828,111,838,216" shape="rect" title="赤峰市 AQI指数 89"></area>
    <area coords="856,167,866,216" shape="rect" title="通辽市 AQI指数 42"></area>
    <area coords="884,178,894,216" shape="rect" title="鄂尔多斯市 AQI指数 33"></area>
    </map></td>
    </tr>
    ------



```python
for row in table.findAll("tr"):
    cells = row.findAll("td")
    rowNumber = cells[0].find(text = True)
    cityName = cells[1].find(text = True)
    date = cells[2].find(text = True)
    AQI = cells[3].find(text = True)
    
    print rowNumber,'\t', cityName,'\t', date, '\t', AQI, '----\n'
```

    None 	None 	全 国 城 市 空 气 质 量 日 报 	None ----
    
    序号 	城市 	日期 	AQI指数 ----
    
    1 	北京市 	2015-11-24 	65 ----
    
    2 	天津市 	2015-11-24 	64 ----
    
    3 	石家庄市 	2015-11-24 	77 ----
    
    4 	唐山市 	2015-11-24 	68 ----
    
    5 	秦皇岛市 	2015-11-24 	33 ----
    
    6 	邯郸市 	2015-11-24 	64 ----
    
    7 	邢台市 	2015-11-24 	63 ----
    
    8 	保定市 	2015-11-24 	63 ----
    
    9 	承德市 	2015-11-24 	48 ----
    
    10 	沧州市 	2015-11-24 	59 ----
    
    11 	廊坊市 	2015-11-24 	75 ----
    
    12 	衡水市 	2015-11-24 	74 ----
    
    13 	张家口市 	2015-11-24 	61 ----
    
    14 	太原市 	2015-11-24 	62 ----
    
    15 	大同市 	2015-11-24 	68 ----
    
    16 	阳泉市 	2015-11-24 	69 ----
    
    17 	长治市 	2015-11-24 	111 ----
    
    18 	晋城市 	2015-11-24 	105 ----
    
    19 	朔州市 	2015-11-24 	76 ----
    
    20 	晋中市 	2015-11-24 	73 ----
    
    21 	运城市 	2015-11-24 	44 ----
    
    22 	忻州市 	2015-11-24 	74 ----
    
    23 	临汾市 	2015-11-24 	83 ----
    
    24 	吕梁市 	2015-11-24 	67 ----
    
    25 	呼和浩特市 	2015-11-24 	62 ----
    
    26 	包头市 	2015-11-24 	67 ----
    
    27 	乌海市 	2015-11-24 	39 ----
    
    28 	赤峰市 	2015-11-24 	89 ----
    
    29 	通辽市 	2015-11-24 	42 ----
    
    30 	鄂尔多斯市 	2015-11-24 	33 ----
    
    记录总数： 	每页记录数： 	首页 上一页 	下一页 ----
    
    None 	None 	None 	None ----
    



    ---------------------------------------------------------------------------

    IndexError                                Traceback (most recent call last)

    <ipython-input-9-ccc186319708> in <module>()
          3     rowNumber = cells[0].find(text = True)
          4     cityName = cells[1].find(text = True)
    ----> 5     date = cells[2].find(text = True)
          6     AQI = cells[3].find(text = True)
          7 


    IndexError: list index out of range



```python
for row in table.findAll("tr"):
    cells = row.findAll("td")
    rowNumber = cells[0].find(text = True)
    if rowNumber != None and rowNumber.isdigit():
        cityName = cells[1].find(text = True)
        date = cells[2].find(text = True)
        AQI = cells[3].find(text = True)

        print rowNumber,'\t', cityName,'\t', date, '\t', AQI, '----\n'
```

    1 	北京市 	2015-11-24 	65 ----
    
    2 	天津市 	2015-11-24 	64 ----
    
    3 	石家庄市 	2015-11-24 	77 ----
    
    4 	唐山市 	2015-11-24 	68 ----
    
    5 	秦皇岛市 	2015-11-24 	33 ----
    
    6 	邯郸市 	2015-11-24 	64 ----
    
    7 	邢台市 	2015-11-24 	63 ----
    
    8 	保定市 	2015-11-24 	63 ----
    
    9 	承德市 	2015-11-24 	48 ----
    
    10 	沧州市 	2015-11-24 	59 ----
    
    11 	廊坊市 	2015-11-24 	75 ----
    
    12 	衡水市 	2015-11-24 	74 ----
    
    13 	张家口市 	2015-11-24 	61 ----
    
    14 	太原市 	2015-11-24 	62 ----
    
    15 	大同市 	2015-11-24 	68 ----
    
    16 	阳泉市 	2015-11-24 	69 ----
    
    17 	长治市 	2015-11-24 	111 ----
    
    18 	晋城市 	2015-11-24 	105 ----
    
    19 	朔州市 	2015-11-24 	76 ----
    
    20 	晋中市 	2015-11-24 	73 ----
    
    21 	运城市 	2015-11-24 	44 ----
    
    22 	忻州市 	2015-11-24 	74 ----
    
    23 	临汾市 	2015-11-24 	83 ----
    
    24 	吕梁市 	2015-11-24 	67 ----
    
    25 	呼和浩特市 	2015-11-24 	62 ----
    
    26 	包头市 	2015-11-24 	67 ----
    
    27 	乌海市 	2015-11-24 	39 ----
    
    28 	赤峰市 	2015-11-24 	89 ----
    
    29 	通辽市 	2015-11-24 	42 ----
    
    30 	鄂尔多斯市 	2015-11-24 	33 ----
    



```python
urlBase = "http://datacenter.mep.gov.cn/report/air_daily/air_dairy.jsp?page="
```


```python
for pageNum in range(1, 14):
    
    content = urllib2.urlopen(urlBase + str(pageNum)).read() #获取网页的html文本
    soup = BeautifulSoup(content) 
    table = soup.find("table", { "id" : "report1" })
    
    for row in table.findAll("tr"):
        cells = row.findAll("td")
        rowNumber = cells[0].find(text = True)
        
        if rowNumber != None and rowNumber.isdigit():
            cityName = cells[1].find(text = True)
            date = cells[2].find(text = True)
            AQI = cells[3].find(text = True)

            print rowNumber,',', cityName,',', date, ',', AQI, '\n'
```

    1 , 北京市 , 2015-11-24 , 65 
    
    2 , 天津市 , 2015-11-24 , 64 
    
    3 , 石家庄市 , 2015-11-24 , 77 
    
    4 , 唐山市 , 2015-11-24 , 68 
    
    5 , 秦皇岛市 , 2015-11-24 , 33 
    
    6 , 邯郸市 , 2015-11-24 , 64 
    
    7 , 邢台市 , 2015-11-24 , 63 
    
    8 , 保定市 , 2015-11-24 , 63 
    
    9 , 承德市 , 2015-11-24 , 48 
    
    10 , 沧州市 , 2015-11-24 , 59 
    
    11 , 廊坊市 , 2015-11-24 , 75 
    
    12 , 衡水市 , 2015-11-24 , 74 
    
    13 , 张家口市 , 2015-11-24 , 61 
    
    14 , 太原市 , 2015-11-24 , 62 
    
    15 , 大同市 , 2015-11-24 , 68 
    
    16 , 阳泉市 , 2015-11-24 , 69 
    
    17 , 长治市 , 2015-11-24 , 111 
    
    18 , 晋城市 , 2015-11-24 , 105 
    
    19 , 朔州市 , 2015-11-24 , 76 
    
    20 , 晋中市 , 2015-11-24 , 73 
    
    21 , 运城市 , 2015-11-24 , 44 
    
    22 , 忻州市 , 2015-11-24 , 74 
    
    23 , 临汾市 , 2015-11-24 , 83 
    
    24 , 吕梁市 , 2015-11-24 , 67 
    
    25 , 呼和浩特市 , 2015-11-24 , 62 
    
    26 , 包头市 , 2015-11-24 , 67 
    
    27 , 乌海市 , 2015-11-24 , 39 
    
    28 , 赤峰市 , 2015-11-24 , 89 
    
    29 , 通辽市 , 2015-11-24 , 42 
    
    30 , 鄂尔多斯市 , 2015-11-24 , 33 
    
    31 , 呼伦贝尔市 , 2015-11-24 , 52 
    
    32 , 巴彦淖尔市 , 2015-11-24 , 44 
    
    33 , 乌兰察布市 , 2015-11-24 , 78 
    
    34 , 兴安盟 , 2015-11-24 , 59 
    
    35 , 锡林郭勒盟 , 2015-11-24 , 60 
    
    36 , 阿拉善盟 , 2015-11-24 , 41 
    
    37 , 沈阳市 , 2015-11-24 , 58 
    
    38 , 大连市 , 2015-11-24 , 45 
    
    39 , 瓦房店市 , 2015-11-24 , 71 
    
    40 , 鞍山市 , 2015-11-24 , 75 
    
    41 , 抚顺市 , 2015-11-24 , 41 
    
    42 , 本溪市 , 2015-11-24 , 54 
    
    43 , 丹东市 , 2015-11-24 , 35 
    
    44 , 锦州市 , 2015-11-24 , 55 
    
    45 , 营口市 , 2015-11-24 , 43 
    
    46 , 阜新市 , 2015-11-24 , 43 
    
    47 , 辽阳市 , 2015-11-24 , 59 
    
    48 , 盘锦市 , 2015-11-24 , 39 
    
    49 , 铁岭市 , 2015-11-24 , 65 
    
    50 , 朝阳市 , 2015-11-24 , 62 
    
    51 , 葫芦岛市 , 2015-11-24 , 33 
    
    52 , 长春市 , 2015-11-24 , 64 
    
    53 , 吉林市 , 2015-11-24 , 88 
    
    54 , 四平市 , 2015-11-24 , 68 
    
    55 , 辽源市 , 2015-11-24 , 49 
    
    56 , 通化市 , 2015-11-24 , 119 
    
    57 , 白山市 , 2015-11-24 , 62 
    
    58 , 松原市 , 2015-11-24 , 62 
    
    59 , 白城市 , 2015-11-24 , 97 
    
    60 , 延边州 , 2015-11-24 , 54 
    
    61 , 哈尔滨市 , 2015-11-24 , 74 
    
    62 , 齐齐哈尔市 , 2015-11-24 , 50 
    
    63 , 鸡西市 , 2015-11-24 , 24 
    
    64 , 鹤岗市 , 2015-11-24 , 35 
    
    65 , 双鸭山市 , 2015-11-24 , 34 
    
    66 , 大庆市 , 2015-11-24 , 48 
    
    67 , 伊春市 , 2015-11-24 , 27 
    
    68 , 佳木斯市 , 2015-11-24 , 28 
    
    69 , 七台河市 , 2015-11-24 , 74 
    
    70 , 牡丹江市 , 2015-11-24 , 55 
    
    71 , 黑河市 , 2015-11-24 , 32 
    
    72 , 绥化市 , 2015-11-24 , 69 
    
    73 , 大兴安岭地区 , 2015-11-24 , 52 
    
    74 , 上海市 , 2015-11-24 , 35 
    
    75 , 南京市 , 2015-11-24 , 43 
    
    76 , 无锡市 , 2015-11-24 , 30 
    
    77 , 江阴市 , 2015-11-24 , 33 
    
    78 , 宜兴市 , 2015-11-24 , 40 
    
    79 , 徐州市 , 2015-11-24 , 38 
    
    80 , 常州市 , 2015-11-24 , 27 
    
    81 , 溧阳市 , 2015-11-24 , 38 
    
    82 , 金坛市 , 2015-11-24 , 37 
    
    83 , 苏州市 , 2015-11-24 , 39 
    
    84 , 常熟市 , 2015-11-24 , 31 
    
    85 , 张家港市 , 2015-11-24 , 38 
    
    86 , 昆山市 , 2015-11-24 , 30 
    
    87 , 吴江市 , 2015-11-24 , 34 
    
    88 , 太仓市 , 2015-11-24 , 38 
    
    89 , 南通市 , 2015-11-24 , 36 
    
    90 , 海门市 , 2015-11-24 , 36 
    
    91 , 连云港市 , 2015-11-24 , 30 
    
    92 , 淮安市 , 2015-11-24 , 29 
    
    93 , 盐城市 , 2015-11-24 , 37 
    
    94 , 扬州市 , 2015-11-24 , 32 
    
    95 , 镇江市 , 2015-11-24 , 28 
    
    96 , 句容市 , 2015-11-24 , 36 
    
    97 , 泰州市 , 2015-11-24 , 31 
    
    98 , 宿迁市 , 2015-11-24 , 42 
    
    99 , 杭州市 , 2015-11-24 , 58 
    
    100 , 富阳市 , 2015-11-24 , 44 
    
    101 , 临安市 , 2015-11-24 , 39 
    
    102 , 宁波市 , 2015-11-24 , 45 
    
    103 , 温州市 , 2015-11-24 , 44 
    
    104 , 嘉兴市 , 2015-11-24 , 43 
    
    105 , 湖州市 , 2015-11-24 , 33 
    
    106 , 诸暨市 , 2015-11-24 , None 
    
    107 , 金华市 , 2015-11-24 , 50 
    
    108 , 义乌市 , 2015-11-24 , 44 
    
    109 , 衢州市 , 2015-11-24 , 38 
    
    110 , 舟山市 , 2015-11-24 , 40 
    
    111 , 台州市 , 2015-11-24 , 33 
    
    112 , 丽水市 , 2015-11-24 , 38 
    
    113 , 绍兴市 , 2015-11-24 , 60 
    
    114 , 合肥市 , 2015-11-24 , 28 
    
    115 , 芜湖市 , 2015-11-24 , 54 
    
    116 , 蚌埠市 , 2015-11-24 , 36 
    
    117 , 淮南市 , 2015-11-24 , 53 
    
    118 , 马鞍山市 , 2015-11-24 , 31 
    
    119 , 淮北市 , 2015-11-24 , 45 
    
    120 , 铜陵市 , 2015-11-24 , 37 
    
    121 , 安庆市 , 2015-11-24 , 27 
    
    122 , 黄山市 , 2015-11-24 , 28 
    
    123 , 滁州市 , 2015-11-24 , 28 
    
    124 , 阜阳市 , 2015-11-24 , 34 
    
    125 , 宿州市 , 2015-11-24 , 70 
    
    126 , 六安市 , 2015-11-24 , 23 
    
    127 , 亳州市 , 2015-11-24 , 88 
    
    128 , 池州市 , 2015-11-24 , 35 
    
    129 , 宣城市 , 2015-11-24 , 44 
    
    130 , 福州市 , 2015-11-24 , 40 
    
    131 , 厦门市 , 2015-11-24 , 47 
    
    132 , 莆田市 , 2015-11-24 , 48 
    
    133 , 三明市 , 2015-11-24 , 45 
    
    134 , 泉州市 , 2015-11-24 , 46 
    
    135 , 漳州市 , 2015-11-24 , 60 
    
    136 , 南平市 , 2015-11-24 , 36 
    
    137 , 龙岩市 , 2015-11-24 , 50 
    
    138 , 宁德市 , 2015-11-24 , 45 
    
    139 , 南昌市 , 2015-11-24 , 28 
    
    140 , 景德镇市 , 2015-11-24 , 38 
    
    141 , 萍乡市 , 2015-11-24 , 35 
    
    142 , 九江市 , 2015-11-24 , 35 
    
    143 , 新余市 , 2015-11-24 , 44 
    
    144 , 鹰潭市 , 2015-11-24 , 43 
    
    145 , 赣州市 , 2015-11-24 , 46 
    
    146 , 吉安市 , 2015-11-24 , 57 
    
    147 , 宜春市 , 2015-11-24 , 49 
    
    148 , 抚州市 , 2015-11-24 , 33 
    
    149 , 上饶市 , 2015-11-24 , 41 
    
    150 , 济南市 , 2015-11-24 , 42 
    
    151 , 章丘市 , 2015-11-24 , 40 
    
    152 , 青岛市 , 2015-11-24 , 41 
    
    153 , 胶州市 , 2015-11-24 , 32 
    
    154 , 即墨市 , 2015-11-24 , 32 
    
    155 , 平度市 , 2015-11-24 , 31 
    
    156 , 胶南市 , 2015-11-24 , 40 
    
    157 , 莱西市 , 2015-11-24 , 29 
    
    158 , 淄博市 , 2015-11-24 , 34 
    
    159 , 枣庄市 , 2015-11-24 , 54 
    
    160 , 东营市 , 2015-11-24 , 30 
    
    161 , 烟台市 , 2015-11-24 , 33 
    
    162 , 莱州市 , 2015-11-24 , 36 
    
    163 , 蓬莱市 , 2015-11-24 , 35 
    
    164 , 招远市 , 2015-11-24 , 34 
    
    165 , 潍坊市 , 2015-11-24 , 38 
    
    166 , 寿光市 , 2015-11-24 , 34 
    
    167 , 济宁市 , 2015-11-24 , 55 
    
    168 , 泰安市 , 2015-11-24 , 37 
    
    169 , 威海市 , 2015-11-24 , 31 
    
    170 , 文登市 , 2015-11-24 , 33 
    
    171 , 荣成市 , 2015-11-24 , 28 
    
    172 , 乳山市 , 2015-11-24 , 26 
    
    173 , 日照市 , 2015-11-24 , 29 
    
    174 , 莱芜市 , 2015-11-24 , 40 
    
    175 , 临沂市 , 2015-11-24 , 46 
    
    176 , 德州市 , 2015-11-24 , 68 
    
    177 , 聊城市 , 2015-11-24 , 62 
    
    178 , 滨州市 , 2015-11-24 , 43 
    
    179 , 菏泽市 , 2015-11-24 , 59 
    
    180 , 郑州市 , 2015-11-24 , 51 
    
    181 , 开封市 , 2015-11-24 , 71 
    
    182 , 洛阳市 , 2015-11-24 , 37 
    
    183 , 平顶山市 , 2015-11-24 , 43 
    
    184 , 安阳市 , 2015-11-24 , 54 
    
    185 , 鹤壁市 , 2015-11-24 , 55 
    
    186 , 新乡市 , 2015-11-24 , 42 
    
    187 , 焦作市 , 2015-11-24 , 47 
    
    188 , 濮阳市 , 2015-11-24 , 80 
    
    189 , 许昌市 , 2015-11-24 , 50 
    
    190 , 漯河市 , 2015-11-24 , 72 
    
    191 , 三门峡市 , 2015-11-24 , 45 
    
    192 , 南阳市 , 2015-11-24 , 36 
    
    193 , 商丘市 , 2015-11-24 , 69 
    
    194 , 信阳市 , 2015-11-24 , 46 
    
    195 , 周口市 , 2015-11-24 , 59 
    
    196 , 驻马店市 , 2015-11-24 , 58 
    
    197 , 武汉市 , 2015-11-24 , 30 
    
    198 , 黄石市 , 2015-11-24 , 36 
    
    199 , 十堰市 , 2015-11-24 , 39 
    
    200 , 宜昌市 , 2015-11-24 , 33 
    
    201 , 襄阳市 , 2015-11-24 , 38 
    
    202 , 鄂州市 , 2015-11-24 , 29 
    
    203 , 荆门市 , 2015-11-24 , 31 
    
    204 , 孝感市 , 2015-11-24 , 42 
    
    205 , 荆州市 , 2015-11-24 , 38 
    
    206 , 黄冈市 , 2015-11-24 , 28 
    
    207 , 咸宁市 , 2015-11-24 , 29 
    
    208 , 随州市 , 2015-11-24 , 38 
    
    209 , 恩施州 , 2015-11-24 , 23 
    
    210 , 长沙市 , 2015-11-24 , 32 
    
    211 , 株洲市 , 2015-11-24 , 35 
    
    212 , 湘潭市 , 2015-11-24 , 32 
    
    213 , 衡阳市 , 2015-11-24 , 30 
    
    214 , 邵阳市 , 2015-11-24 , 29 
    
    215 , 岳阳市 , 2015-11-24 , 28 
    
    216 , 常德市 , 2015-11-24 , 39 
    
    217 , 张家界市 , 2015-11-24 , 37 
    
    218 , 益阳市 , 2015-11-24 , 38 
    
    219 , 郴州市 , 2015-11-24 , 48 
    
    220 , 永州市 , 2015-11-24 , 32 
    
    221 , 怀化市 , 2015-11-24 , 25 
    
    222 , 娄底市 , 2015-11-24 , 26 
    
    223 , 湘西州 , 2015-11-24 , 23 
    
    224 , 广州市 , 2015-11-24 , 68 
    
    225 , 韶关市 , 2015-11-24 , 42 
    
    226 , 深圳市 , 2015-11-24 , 63 
    
    227 , 珠海市 , 2015-11-24 , 73 
    
    228 , 汕头市 , 2015-11-24 , 70 
    
    229 , 佛山市 , 2015-11-24 , 67 
    
    230 , 江门市 , 2015-11-24 , 81 
    
    231 , 湛江市 , 2015-11-24 , 99 
    
    232 , 茂名市 , 2015-11-24 , 79 
    
    233 , 肇庆市 , 2015-11-24 , 60 
    
    234 , 惠州市 , 2015-11-24 , 48 
    
    235 , 梅州市 , 2015-11-24 , 52 
    
    236 , 汕尾市 , 2015-11-24 , 70 
    
    237 , 河源市 , 2015-11-24 , 49 
    
    238 , 阳江市 , 2015-11-24 , 99 
    
    239 , 清远市 , 2015-11-24 , 41 
    
    240 , 东莞市 , 2015-11-24 , 57 
    
    241 , 中山市 , 2015-11-24 , 72 
    
    242 , 潮州市 , 2015-11-24 , 79 
    
    243 , 揭阳市 , 2015-11-24 , 68 
    
    244 , 云浮市 , 2015-11-24 , 54 
    
    245 , 南宁市 , 2015-11-24 , 79 
    
    246 , 柳州市 , 2015-11-24 , 54 
    
    247 , 桂林市 , 2015-11-24 , 39 
    
    248 , 梧州市 , 2015-11-24 , 50 
    
    249 , 北海市 , 2015-11-24 , 82 
    
    250 , 防城港市 , 2015-11-24 , 95 
    
    251 , 钦州市 , 2015-11-24 , 85 
    
    252 , 贵港市 , 2015-11-24 , 58 
    
    253 , 玉林市 , 2015-11-24 , 69 
    
    254 , 百色市 , 2015-11-24 , 62 
    
    255 , 贺州市 , 2015-11-24 , 34 
    
    256 , 河池市 , 2015-11-24 , 74 
    
    257 , 来宾市 , 2015-11-24 , 35 
    
    258 , 崇左市 , 2015-11-24 , 60 
    
    259 , 海口市 , 2015-11-24 , 49 
    
    260 , 三亚市 , 2015-11-24 , 43 
    
    261 , 重庆市 , 2015-11-24 , 40 
    
    262 , 成都市 , 2015-11-24 , 49 
    
    263 , 自贡市 , 2015-11-24 , 37 
    
    264 , 攀枝花市 , 2015-11-24 , 63 
    
    265 , 泸州市 , 2015-11-24 , 36 
    
    266 , 德阳市 , 2015-11-24 , 35 
    
    267 , 绵阳市 , 2015-11-24 , 35 
    
    268 , 广元市 , 2015-11-24 , 44 
    
    269 , 遂宁市 , 2015-11-24 , 31 
    
    270 , 内江市 , 2015-11-24 , 28 
    
    271 , 乐山市 , 2015-11-24 , 41 
    
    272 , 南充市 , 2015-11-24 , 42 
    
    273 , 眉山市 , 2015-11-24 , 40 
    
    274 , 宜宾市 , 2015-11-24 , 36 
    
    275 , 广安市 , 2015-11-24 , 28 
    
    276 , 达州市 , 2015-11-24 , 52 
    
    277 , 雅安市 , 2015-11-24 , 45 
    
    278 , 巴中市 , 2015-11-24 , 43 
    
    279 , 资阳市 , 2015-11-24 , 39 
    
    280 , 阿坝州 , 2015-11-24 , 46 
    
    281 , 甘孜州 , 2015-11-24 , 42 
    
    282 , 凉山州 , 2015-11-24 , 56 
    
    283 , 贵阳市 , 2015-11-24 , 55 
    
    284 , 六盘水市 , 2015-11-24 , 66 
    
    285 , 遵义市 , 2015-11-24 , 34 
    
    286 , 安顺市 , 2015-11-24 , 42 
    
    287 , 铜仁地区 , 2015-11-24 , 32 
    
    288 , 黔西南州 , 2015-11-24 , 48 
    
    289 , 毕节市 , 2015-11-24 , 38 
    
    290 , 黔东南州 , 2015-11-24 , 25 
    
    291 , 黔南州 , 2015-11-24 , 40 
    
    292 , 昆明市 , 2015-11-24 , 54 
    
    293 , 曲靖市 , 2015-11-24 , 53 
    
    294 , 玉溪市 , 2015-11-24 , 51 
    
    295 , 保山市 , 2015-11-24 , 59 
    
    296 , 昭通市 , 2015-11-24 , 62 
    
    297 , 丽江市 , 2015-11-24 , 41 
    
    298 , 普洱市 , 2015-11-24 , 48 
    
    299 , 临沧市 , 2015-11-24 , 40 
    
    300 , 楚雄州 , 2015-11-24 , 50 
    
    301 , 红河州 , 2015-11-24 , 42 
    
    302 , 文山州 , 2015-11-24 , 46 
    
    303 , 西双版纳州 , 2015-11-24 , 52 
    
    304 , 大理州 , 2015-11-24 , 34 
    
    305 , 德宏州 , 2015-11-24 , 60 
    
    306 , 怒江州 , 2015-11-24 , 48 
    
    307 , 迪庆州 , 2015-11-24 , 50 
    
    308 , 拉萨市 , 2015-11-24 , 79 
    
    309 , 昌都地区 , 2015-11-24 , 62 
    
    310 , 山南地区 , 2015-11-24 , 54 
    
    311 , 日喀则地区 , 2015-11-24 , 59 
    
    312 , 那曲地区 , 2015-11-24 , 135 
    
    313 , 阿里地区 , 2015-11-24 , 42 
    
    314 , 林芝地区 , 2015-11-24 , 40 
    
    315 , 西安市 , 2015-11-24 , 45 
    
    316 , 铜川市 , 2015-11-24 , 43 
    
    317 , 宝鸡市 , 2015-11-24 , 55 
    
    318 , 咸阳市 , 2015-11-24 , 44 
    
    319 , 渭南市 , 2015-11-24 , 38 
    
    320 , 延安市 , 2015-11-24 , 53 
    
    321 , 汉中市 , 2015-11-24 , 34 
    
    322 , 榆林市 , 2015-11-24 , 65 
    
    323 , 安康市 , 2015-11-24 , 27 
    
    324 , 商洛市 , 2015-11-24 , 35 
    
    325 , 兰州市 , 2015-11-24 , 48 
    
    326 , 嘉峪关市 , 2015-11-24 , 53 
    
    327 , 金昌市 , 2015-11-24 , 70 
    
    328 , 白银市 , 2015-11-24 , 44 
    
    329 , 天水市 , 2015-11-24 , 38 
    
    330 , 武威市 , 2015-11-24 , 48 
    
    331 , 张掖市 , 2015-11-24 , 46 
    
    332 , 平凉市 , 2015-11-24 , 49 
    
    333 , 酒泉市 , 2015-11-24 , 50 
    
    334 , 庆阳市 , 2015-11-24 , 55 
    
    335 , 定西市 , 2015-11-24 , 44 
    
    336 , 陇南市 , 2015-11-24 , 32 
    
    337 , 临夏州 , 2015-11-24 , 33 
    
    338 , 甘南州 , 2015-11-24 , 46 
    
    339 , 西宁市 , 2015-11-24 , 55 
    
    340 , 海东地区 , 2015-11-24 , 47 
    
    341 , 海北州 , 2015-11-24 , 82 
    
    342 , 黄南州 , 2015-11-24 , 147 
    
    343 , 海南州 , 2015-11-24 , 108 
    
    344 , 果洛州 , 2015-11-24 , 62 
    
    345 , 玉树州 , 2015-11-24 , 132 
    
    346 , 海西州 , 2015-11-24 , 69 
    
    347 , 银川市 , 2015-11-24 , 71 
    
    348 , 石嘴山市 , 2015-11-24 , 64 
    
    349 , 吴忠市 , 2015-11-24 , 41 
    
    350 , 固原市 , 2015-11-24 , 44 
    
    351 , 中卫市 , 2015-11-24 , 64 
    
    352 , 乌鲁木齐市 , 2015-11-24 , 83 
    
    353 , 克拉玛依市 , 2015-11-24 , 34 
    
    354 , 吐鲁番地区 , 2015-11-24 , 74 
    
    355 , 哈密地区 , 2015-11-24 , 57 
    
    356 , 昌吉州 , 2015-11-24 , 77 
    
    357 , 博州 , 2015-11-24 , 49 
    
    358 , 库尔勒市 , 2015-11-24 , 74 
    
    359 , 阿克苏地区 , 2015-11-24 , 128 
    
    360 , 克州 , 2015-11-24 , 87 
    
    361 , 喀什地区 , 2015-11-24 , 144 
    
    362 , 和田地区 , 2015-11-24 , 76 
    
    363 , 伊犁哈萨克州 , 2015-11-24 , 65 
    
    364 , 塔城地区 , 2015-11-24 , 55 
    
    365 , 阿勒泰地区 , 2015-11-24 , 30 
    
    366 , 石河子市 , 2015-11-24 , 55 
    
    367 , 五家渠市 , 2015-11-24 , 100 
    



```python
str(None)
```




    'None'




```python
for pageNum in range(1, 14):
    
    content = urllib2.urlopen(urlBase + str(pageNum)).read() #获取网页的html文本
    soup = BeautifulSoup(content) 
    table = soup.find("table", { "id" : "report1" })
    
    for row in table.findAll("tr"):
        cells = row.findAll("td")
        rowNumber = cells[0].find(text = True)
        
        if rowNumber != None and rowNumber.isdigit():
            cityName = cells[1].find(text = True)
            date = cells[2].find(text = True)
            AQI = cells[3].find(text = True)

            line =  rowNumber +','+ cityName+','+date+ ','+ str(AQI)+ '\n'            
            with open('airquality.csv', 'a') as p:
                p.write(line.encode('utf-8'))
```




