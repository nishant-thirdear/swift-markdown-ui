import MarkdownUI
import SwiftUI

struct DingusView: View {
  @State private var markdown = #"""
    Here's some markdown text with LaTeX equations:

    ### Mathematical Expressions in Markdown

    The quadratic formula solves $ax^2 + bx + c = 0$ and is given by:

    $$x = \frac{-b \pm \sqrt{b^2 - 4ac}}{2a}$$

    The Gaussian distribution probability density function:

    $$f(x) = \frac{1}{\sigma\sqrt{2\pi}}e^{-\frac{1}{2}\left(\frac{x-\mu}{\sigma}\right)^2}$$

    Euler's identity is one of the most beautiful equations in mathematics:

    $$e^{i\pi} + 1 = 0$$

    This combines five fundamental constants: $e$, $i$, $\pi$, $1$, and $0$.
    """#

  var body: some View {
    DemoView {
      Section("Editor") {
        TextEditor(text: $markdown)
          .font(.system(.callout, design: .monospaced))
      }

      Section("Preview") {
        Markdown(self.markdown)
      }
    }
  }
}

struct DingusView_Previews: PreviewProvider {
  static var previews: some View {
    DingusView()
  }
}
