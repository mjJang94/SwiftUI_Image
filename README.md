# Swift UI Image 

## ContentMode
이미지에 resizable 수식어를 적용하면 자신이 주어진 공간 낸에서 최대한의 크기만큼 확장하려는 성질이 생긴다.
이러한 콘텐츠 모드를 변경하고자 한다면 아래 세가지의 수식어를 지정하여 적용하면 된다.
   
- Scale to Fill(**기본값**) - 비율과 관계없이 이미지를 늘려서 주어진 공간을 가득 채우게 한다.
- Aspect Fit(**.scaledRoFit()**) - 이미지 원본의 비율을 그대로 유지한 상태에서, 가능한 최대 크기까지 늘어난다. 이때, 최대 크기는 주어진 공간의 너비와 높이중 작은것을 기준으로 삼는다.
- Aspect Fill(**.scaledToFill()**) - 이미지 원본의 비율을 그대로 유지한 상태에서, 가능한 최대 크기까지 늘어난다. 이때, 최대 크기는 주어진 공간의 너비와 높이 중 큰 값을 기준으로 한다.
    
<pre>
<code>
   HStack(spacing: 20){
                Image("SwiftUI").resizable()
                    .frame(width: 100, height: 150)
                
                Image("SwiftUI").resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 150)
                
                Image("SwiftUI").resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 150)
                    .clipped()
            }
</pre>
</code>

## AspectRatio
이미지 비율에 대한 세부적인 조절이 필요하다면 aspectRatio 수식어를 사용해보자.   
얘 같은 경우에는 이미 **ContentMode가 반영된 상태**에서 추가적인 수정을 할 수 있다.   
<pre>
<code>
    HStack(spacing: 20) {
        Image("SwiftUI").resizable().aspectRatio(CGSize(width: 1.6, height: 1), contentMode: .fit).frame(width: 150, height: 150)
                       
        Image("SwiftUI").resizable().aspectRatio(0.7, contentMode: .fill)
            .frame(width: 150, height: 150)
            .clipped()
    }
</pre>
</code>

## ClipShape
clipShape 수식어를 이용하여 이미지를 원하는 모양으로 제단할 수 있다. 지정한 모습 외의 이미지는 잘라내는 기능이다.   
<pre>
<code>
    HStack(spacing: 20) {
        Image("SwiftUI").clipShape(Circle())
        Image("SwiftUI").clipShape(
            Rectangle().inset(by:10)
        )
        Image("SwiftUI").clipShape(
            Ellipse().path(in: CGRect(x: 10, y: 10, width: 80, height: 110))
        )
    }
  }
</pre>
</code>


