Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 87C953D107C
	for <lists+devicetree@lfdr.de>; Wed, 21 Jul 2021 16:04:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238906AbhGUNYB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jul 2021 09:24:01 -0400
Received: from new4-smtp.messagingengine.com ([66.111.4.230]:36463 "EHLO
        new4-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S238931AbhGUNX5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 21 Jul 2021 09:23:57 -0400
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
        by mailnew.nyi.internal (Postfix) with ESMTP id D4F1758046C;
        Wed, 21 Jul 2021 10:04:30 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute4.internal (MEProxy); Wed, 21 Jul 2021 10:04:30 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm3; bh=c+hLIAQ99eGDJ
        mpR27VO2gLSF+6XUX6mH1kTLMWYFLA=; b=rLn+cnHMZnNtGVDS5UptVjbM00BxC
        vo5NmWzfeNTobguQ9E1hpxKF2oM25QvypuSlobOwkGq8HP97iXFcKx6qk+lqqjLf
        VNonL7HyyKaduEsIr1/ADlqPjbEy26gxtBnk03R3t13w25w+aXaFYG2rqvu2bmGI
        LCXy5lxLemvfmgBe39seZIbDjZPhSWjokd9ar8iVvMU/uJUadO15GFaVBKK1CGzA
        dFo4rmhGvxTmrTWFwO8XVCtFQ4QBFQZCQrm8dSAkeIeLke3hBOGKwdhFW2IIWlsG
        hbm3wiWwjmGjxaSJDrFV50PbIHn6mDUfLseuKodcrHePj0ILRxOnTkH9w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm3; bh=c+hLIAQ99eGDJmpR27VO2gLSF+6XUX6mH1kTLMWYFLA=; b=pJjqbxL8
        3JMUsvO1FtEVcY4HBBno/W2NYzvPpDDfi7XVqz8hkIlUhFf9aNoVspS0cl7cv8iI
        y4L3j1gNkE1UdJjGRLFGFSyrax7pm/AQecK4B6B17M/L3hueuP+2R0vzsf+c7unD
        2PpReT8glJqfAFnPxn0gmLpP7O0ApVLg+CLEa8aotVYEH1ymrWlaU8kNK6plUx+A
        MkeJpma8LjY8KcxBkTgyEpIA+OBeSI1MovHdTyNn+MqmRJmQkvoY+9zHWWvLOtMZ
        RNUVJpef4M5PQkjZkkB72Zxa5a07MHMYV1NNZcsmQtuBjTV7VgaPFbh4Vdod0KvV
        hZOogmWADK/FGA==
X-ME-Sender: <xms:bSn4YJH-DARgvKPA4jjrwPwuhVSF_VFLskiDuR2IQmQy5Tl4HjvwSA>
    <xme:bSn4YOXF4BllgoctAH4IaArSIY-b85xFMs5_I1IJGt2Ntu_QVLk2ZjkECJpjvjvi1
    bc7I0P2eHHwM20bOsI>
X-ME-Received: <xmr:bSn4YLJY_PIvR5YXCnrPDlERcND8q0utcpO1DDSdRY_XXvI_05zjVSMZgjw-d4YiO3dOSfZuy8y_qFSfZAV48o-iXJXs6hwmD3id>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrfeeggdeiiecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenog
    evohgrshhtrghlqdfhgeduvddqtddvucdludehtddmnecujfgurhephffvufffkffojghf
    ggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhmvgcutfhiphgrrhguuceomhgrgi
    himhgvsegtvghrnhhordhtvggthheqnecuggftrfgrthhtvghrnhepveejieejtdevgfff
    gfejuefggfeutdelteekgeetueeftddutddtgfffhffgueffnecuffhomhgrihhnpeguvg
    hvihgtvghtrhgvvgdrohhrghenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhep
    mhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:bin4YPEbHZI5ZGyw6eVqR0HdWsidNvfYxKjFHnJSz-sb2SDDZCmhGg>
    <xmx:bin4YPUv71ltTB6W_KR6432bm6KvVhO_GeBP-dOmN8eYNujCvazX6Q>
    <xmx:bin4YKMlsFwq_LgKqL-Bq7m3jPSUZ-o7LTeoNaWNdpnblk4qFcXk6w>
    <xmx:bin4YPQa5XkMr2RmNkgEh0aawQcsUUW15TVwTA1tuQ3NwgNQRCfEVw>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 21 Jul 2021 10:04:29 -0400 (EDT)
From:   Maxime Ripard <maxime@cerno.tech>
To:     Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime@cerno.tech>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com,
        alsa-devel@alsa-project.org, Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>
Subject: [PATCH 01/54] ASoC: dt-bindings: Add WM8978 Binding
Date:   Wed, 21 Jul 2021 16:03:31 +0200
Message-Id: <20210721140424.725744-2-maxime@cerno.tech>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210721140424.725744-1-maxime@cerno.tech>
References: <20210721140424.725744-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Even though we had the wm8978 driver for some time and a number of
boards using it already, we never had a binding for it. Let's add it
based on what the driver expects and the boards are providing.

Cc: alsa-devel@alsa-project.org
Cc: devicetree@vger.kernel.org
Cc: Liam Girdwood <lgirdwood@gmail.com>
Cc: Mark Brown <broonie@kernel.org>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 .../devicetree/bindings/sound/wlf,wm8978.yaml | 58 +++++++++++++++++++
 1 file changed, 58 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/wlf,wm8978.yaml

diff --git a/Documentation/devicetree/bindings/sound/wlf,wm8978.yaml b/Documentation/devicetree/bindings/sound/wlf,wm8978.yaml
new file mode 100644
index 000000000000..6761380261e3
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/wlf,wm8978.yaml
@@ -0,0 +1,58 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/wlf,wm8978.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Wolfson WM8978 Codec Device Tree Bindings
+
+maintainers:
+  - Mark Brown <broonie@kernel.org>
+
+properties:
+  '#sound-dai-cells':
+    const: 0
+
+  compatible:
+    const: wlf,wm8978
+
+  reg:
+    maxItems: 1
+
+  spi-max-frequency:
+    maximum: 526000
+
+required:
+  - '#sound-dai-cells'
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    spi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        codec@0 {
+            #sound-dai-cells = <0>;
+            compatible = "wlf,wm8978";
+            reg = <0>;
+            spi-max-frequency = <500000>;
+        };
+    };
+
+  - |
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        codec@0 {
+            #sound-dai-cells = <0>;
+            compatible = "wlf,wm8978";
+            reg = <0>;
+        };
+    };
+
+...
-- 
2.31.1

