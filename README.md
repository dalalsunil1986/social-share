各个社会化产品的分享接口都各不相同，sharejs致力于提供统一的分享接口，以方便使用。

## 如何使用

引用sharejs

	<script src="/build/share.js" type="text/javascript" charset="utf-8"></script>


解析url

	sharejs.parse('weibo', {
		title : '分享文案',
		pic : '分享图片.jpg'
	});


## API文档

### parse(serviceId, options)

将指定服务解析成url的方法

_此方法面向最终开发者_

* __Parameter__ \<String\>serviceId 需要解析的服务名，如不存在会抛出异常 
[已支持的服务列表]()

* __Parameter__ \<Object\>options 解析时需要用户自定义的参数，支持的参数如下    

<table>
	<tr>
		<td>title</td>
		<td>分享的文案</td>
	</tr>
	<tr>
		<td>url</td>
		<td>分享的链接</td>
	</tr>
	<tr>
		<td>pic</td>
		<td>分享的图片</td>
	</tr>
</table>

* __Return__ \<String\>url 最终返回的链接，链接会跳转到最终服务提供商


### pushService(serviceId, service)

添加服务，后添加的id会覆盖前面

_此方法面向服务提供方_

* __Parameter__ \<String\>serviceId 添加的服务名，如有重复会覆盖以前的

* __Parameter__ \<Object\>service 添加匹配关系，apiUrl和url为必填，有如下参数

<table>
	<tr>
		<td>apiUrl</td>
		<td>服务商的接口</td>
		<td>必填</td>
	</tr>
	<tr>
		<td>url</td>
		<td>分享链接的参数</td>
		<td>必填</td>
	</tr>
	<tr>
		<td>title</td>
		<td>分享文案的参数</td>
		<td></td>
	</tr>
	<tr>
		<td>pic</td>
		<td>分享图片的参数</td>
		<td></td>
	</tr>
</table>



## 如何添加服务

1. 确定serviceId，如example
2. 在`src/service`目录添加example.js文件，使用`pushService`方法添加匹配关系
3. 在`demo/demo.htm`中添加example的icon
4. 在[已支持的服务列表]()添加该服务

## 部署

执行部署脚本，输出到`build/share.js`

	sh build.sh

只打包部分服务

	sh build.sh -f weibo,qq

## 使用jquery

## 使用nodejs