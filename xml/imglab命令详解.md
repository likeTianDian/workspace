#### Imglab命令详解

###### Usage: imglab [options] <image files/directories or XML file>

###### Options:
|参数|注释|
|:-|:-|
|  `-h`|                            Displays this information. |
| `-v`  |                          Display version. |

###### Creating XML files:
|参数|注释|
|:-|:-|
|`-c <arg>`|		创建一个名为<arg>的XML文件，列出一组图像。|
| `--convert <arg>` 	|将外部图像注释从<arg>格式转换为imglab格式。 *支持的格式包括: pascal-xml, pascal-v1, idl.* |
| `-r`|  		递归搜索目录中的图像。|

###### Cropping sub images:
|参数|注释|
|:-|:-|
|`--crop-size <arg>`|  	和--resample一起使用, 整个裁剪后的图像将<arg>倍于对象的宽度  (default 2.5). |
|`--cropped-object-size <arg>`|   和--resample一起使用, 使裁剪对象包含<arg>像素 (default 10000). |
|`--min-object-size <arg>`|       和--resample一起使用, 跳过小于<arg>像素的对象 (default 1). |
|`--one-object-per-image` |       和--resample一起使用, 每个图像只包含一个不可忽略的对象 (i.e. the central object). |
| `--resample`|    裁剪出以数据集中每个对象为中心的图像。输出是一个新的XML数据集。|

###### Editing/Transforming XML datasets:
|参数|注释|
|:-|:-|
| `--add <arg1> <arg2>`     |      将图像元数据从<arg1>添加到<arg2>。如果两个文件中都有图像标记，则删除<arg2>中的图像标记，  并用<arg1>中的图像标记替换。结果保存到merged.xml中，并且不修改<arg1>或<arg2>文件。|
|`--box-images` |                 为包含整个图像的每个图像添加一个框。|
|`--cluster <arg>`|               将XML文件中的所有对象聚集到<arg>不同的集群中并保存结果 cluster_###.xml and cluster_###.jpg files. |
| `--flip <arg>` |      从<arg> XML文件中读取一个XML图像数据集，并输出数据集的左右翻转版本和一个附带的名为flipped_<arg>的翻转XML文件。  我们还在翻转后调整对象部件标签，使新翻转的数据集具有与源数据集相同的平均部件布局。|
|`--flip-basic <arg>`| 这个选项就像-flip，只是我们翻转后不调整任何对象部件标签。相反，这些部分只是简单地镜像到翻转的数据集。|
|`--ignore <arg>`|     将标记为<arg>的框标记为忽略。生成的XML文件作为单独的文件输出，而原始文件不进行修改。|
|`--jpg`  |             当将图像保存到磁盘时，将它们写成jpg文件而不是png。 |
|`--parts <arg>` |      显示器将允许图像部分被标记。允许的部件集由<arg>定义，它应该是一个用空格分隔的部件列表。|
| `--rename <arg1> <arg2>`|  将所有<arg1>的标签重命名为<arg2>。|
|`--rm-if-overlaps <arg>`|   如果标记为<arg>的框与未标记为<arg>的框重叠，则删除所有标记为<arg>的框，并将结果保存到一个新的XML文件中。|
| `--rm-other-labels <arg>`|  删除所有未标记为<arg>的框，并将结果保存到一个新的XML文件中。|
|`--rmdiff` |    对于标记为difficult的框，将忽略的标志设置为true。|
|`--rmdupes`|    从数据集中删除重复的图像。这是通过比较每个图像文件的md5哈希值并删除重复的图像来实现的。|
| `--rmempty`|   删除所有不包含非忽略注释的图像，并将结果保存到一个新的XML文件中。|
|`--rmignore`|  删除所有标记为忽略的框，并将结果保存到一个新的XML文件中。|
|`--rmlabel <arg>`| 删除所有标记为<arg>的框，并将结果保存到一个新的XML文件中。|
| `--rmtrunc`   |    将部分位于图像外部的框的忽略标志设置为true。|
|`--rotate <arg>`|  读取XML图像数据集并输出一个逆时针旋转<arg>度的副本。输出保存到一个以rotated_<arg>为前缀的XML文件中。|
| `--seed <arg>` |   将随机种子设置为字符串<arg>。|
|`--shuffle`  |     随机打乱XML文件中列出的图像的顺序。|
| `--sort`    |      按字母顺序对XML文件中的图像进行排序。|
| `--sort-num-objects`|  将列出的图像排序为XML文件，以便首先列出包含许多对象的图像。|
|`--split <arg>`|       将XML文件的内容拆分为两个单独的文件。其中一个文件包含标记为<arg>的对象的图像，另一个文件包含所有其他图像。|
| `--split-train-test <arg>` |  将XML文件的内容拆分为两个单独的文件。包含<arg>图像片段的训练文件和包含其余(1-<arg>)图像的测试文件。  分区是通过将输入xml文件中的第一个图像放入训练分割中，然后将后面的图像放入测试分割中来确定地完成的。|

###### Viewing XML files:
|参数|注释|
|:-|:-|
|`--files`|     列出给定XML文件中的所有文件。|
| `-l`  |        列出给定XML文件中的所有标签。|
|`--size <arg>`|  使每个提取的对象包含大约<arg>像素(默认为8000)。|
| `--stats`  |     列出给定XML文件中对象标签的详细统计信息。|
|`--tile <arg>`|  取出所有对象并将它们保存为一个名为<arg>的大图像。|

> 参考: *https://blog.csdn.net/u010168781/article/details/91048497*