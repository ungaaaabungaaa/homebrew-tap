class Qeth < Formula
  desc "Local tools for RAG data, agent traces, crawling, and survey routes"
  homepage "https://github.com/ungaaaabungaaa/qeth"
  url "https://registry.npmjs.org/@ungaaaabungaaa/qeth/-/qeth-0.1.0.tgz"
  sha256 "af27eb829adb2a22f977aa15eeea223e96ae048f09996855eb4086663670e14e"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/qeth --version").strip
    assert_match "qeth mission plan", shell_output("#{bin}/qeth --help")

    examples = libexec/"lib/node_modules/@ungaaaabungaaa/qeth/examples"
    rag = JSON.parse(shell_output("#{bin}/qeth rag scan #{examples}/chunks.json --json"))
    assert_equal "rag-scan", rag.fetch("kind")

    trace = JSON.parse(shell_output("#{bin}/qeth trace #{examples}/trace.json --json"))
    assert_equal "trace", trace.fetch("kind")

    mission = JSON.parse(shell_output("#{bin}/qeth mission plan #{examples}/survey-area.geojson --json"))
    assert_equal "mission-plan", mission.fetch("kind")
  end
end
