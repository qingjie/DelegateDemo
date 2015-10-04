自己不想动手，委托给 delegate 处理，为了避免所托非人，delegate 需要遵守一个你和 delegate 都能接受的 protocol。一个类只要声明它遵守了某个你想要的 protocol，你就能把它信认为是你的 delegate。

生活示例：很多土豪老板都是大忙人，有多个秘书或者助理，老板只想躺着输数钱就好了，接电话、订餐等等这些杂事，统统交给秘书(delegate)去处理就好了，至于接电话或者订餐的具体注意事项，秘书早就跟老板有了约定(protocol)。


![Screenshot](Boss.png)
![Screenshot](Secretary.png)