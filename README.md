简介 : 
```
在学习的过程中 , 经常需要使用 git 来管理学习笔记
因此需要经常创建递增的以数字为文件名的文件夹
还有经常
	git add .
	git commit -m "Some comments"
	git push
这个库专门为了方便进行管理而制作
```
使用说明 : 
```
autopush.sh : 只有一个参数 , 是文件夹的名称 , 脚本会自动搜索这个文件夹下的 README.md 文件 , 将其第三行作为 comment 进行提交 , 然后自动 push
create_new_folder.sh : 只有一个参数 , 是文件夹的说明 , 这个参数会被写在 README.md 文件的第三行 , 脚本还会将 ./templates/ 文件夹下的所有内容复制到新文件中
这样做的好处是相当于直接建立好了模版 , 不用再重复书写 c 或者其他语言的模版 , 当然这个文件夹下的内容也可以自己定制
```
为什么是第三行 ? 
```
因为 README.md 文件的默认格式为 : 
简介 : 
\`\`\`
Some comments in one line.
\`\`\`
```
