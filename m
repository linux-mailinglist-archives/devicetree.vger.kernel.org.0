Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C485F3D10AD
	for <lists+devicetree@lfdr.de>; Wed, 21 Jul 2021 16:05:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239110AbhGUNYz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jul 2021 09:24:55 -0400
Received: from new4-smtp.messagingengine.com ([66.111.4.230]:51783 "EHLO
        new4-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S239121AbhGUNYy (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 21 Jul 2021 09:24:54 -0400
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
        by mailnew.nyi.internal (Postfix) with ESMTP id F3BEE5809C2;
        Wed, 21 Jul 2021 10:05:30 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute1.internal (MEProxy); Wed, 21 Jul 2021 10:05:31 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm3; bh=DP6MSHtL1MGSb
        D3xAr2PwEvxYBbWEb/czAF4L6eehjA=; b=ScRa/i4QFo+Rr8AUK0JTLym/wszK3
        BL+uroFEGYxDj+cZ6HO4dGu33z+gRgS8fsBo3X+7zqoGFusK8zS3yn+EXQpWGxaz
        rghPl0rhiDc6H4E86ospLaWst/S3mqJT2KoUGbG/uRL+1Slfvubw3uSzpC08WHer
        KC6TtQGkR+NGSm9afSgob0LbKZrxqj9Lqhwz4rN4TYGlBONHJ1k8TiksnNsIiYsk
        Q0+xmfrUfOPQ00o+pNKevrz+8A2IPa2lQwJ83rrckkDPkYTVSsZlnU7Y5pJ0nty3
        s1i8GPqGCbuw92HbT+7tWj2QoB4uIY+Pxt5BPCyKGCh6WRebUB5NTnVgw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm3; bh=DP6MSHtL1MGSbD3xAr2PwEvxYBbWEb/czAF4L6eehjA=; b=i2TPg7Vj
        5nBl/c3ZhzmusFYMnYw4Ai3jvfOc8BDr+j/cHp0+25o+q73Pqy3mNaxbpW5QyQcF
        9DOc/8m1NRVmQa8NHHfb5QxSlPRooKDL8zCIc+jVwd92Dt9qLfEMFPuPyEnoRCZ7
        xF0sfbr9AIHCVGf7HxmzIQsXsSnEHnO4tX29Ii36/RcPI4b1eWamRohnhBnNftkn
        ibmA+w6VYHrsGuwohsaMfRO7efPGtqbNpr0ROgnqI/3VY9t5Gqbki7EHNtESCfTS
        1O3ll3Ty/viUTYjlBUyEVjhowvd7QE50jpdF7b1An2WPgLGkrRA0b69foPzPCW4G
        sMh+JdhOLMt61w==
X-ME-Sender: <xms:qin4YAYz0ve31B5OuDprXmBz0BqfPby7ujaQ_byTuAq81-wnOvdrfQ>
    <xme:qin4YLY51eORRJrSa71653cwxvQFRsyJP531ZvfgAwdW7co-4vqQCvKKZ0S74Ydra
    ivD2cehMVM7YwupQYw>
X-ME-Received: <xmr:qin4YK9uy5J_8c4iHR89tJQW09i-swKxTyrvE-0tIymbCSnqbg0_edItq9xrQ8h3CG9M5ClGOLtSzW3oAvWiwe3Q-61_xQNi46eD>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrfeeggdeiiecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenog
    evohgrshhtrghlqdfhgeduvddqtddvucdludehtddmnecujfgurhephffvufffkffojghf
    ggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhmvgcutfhiphgrrhguuceomhgrgi
    himhgvsegtvghrnhhordhtvggthheqnecuggftrfgrthhtvghrnhepveejieejtdevgfff
    gfejuefggfeutdelteekgeetueeftddutddtgfffhffgueffnecuffhomhgrihhnpeguvg
    hvihgtvghtrhgvvgdrohhrghenucevlhhushhtvghrufhiiigvpedvnecurfgrrhgrmhep
    mhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:qin4YKrGRlZ_hi3S5ZnTkh_Y8wPHbGzedSAQNzU66XUq-G2KGPxMiA>
    <xmx:qin4YLoWmx8jsIN-jOMe9SLI5SHPM6GwSWns9Sq4RXqlituiBy4pTw>
    <xmx:qin4YIRl0oserwvtVIqN_ho9w1bQEP180-xrRrFD8BO9iZ0fhbFxlw>
    <xmx:qin4YIjLPNlieXfYl5ztDn41cc4tW0xvuvygpk11LndmrNKoWQ3w4Q>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 21 Jul 2021 10:05:29 -0400 (EDT)
From:   Maxime Ripard <maxime@cerno.tech>
To:     Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime@cerno.tech>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com,
        Icenowy Zheng <icenowy@aosc.io>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Ondrej Jirman <megous@megous.com>
Subject: [PATCH 30/54] dt-bindings: regulator: Convert SY8106A binding to a schema
Date:   Wed, 21 Jul 2021 16:04:00 +0200
Message-Id: <20210721140424.725744-31-maxime@cerno.tech>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210721140424.725744-1-maxime@cerno.tech>
References: <20210721140424.725744-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Silergy SY8106A is a regulator controlled through i2c supported by
Linux with a matching device tree binding.

Now that we have the DT validation in place, let's convert the device
tree bindings for that driver over to a YAML schema.

Cc: Icenowy Zheng <icenowy@aosc.io>
Cc: Liam Girdwood <lgirdwood@gmail.com>
Cc: Mark Brown <broonie@kernel.org>
Cc: Ondrej Jirman <megous@megous.com>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 .../bindings/regulator/silergy,sy8106a.yaml   | 52 +++++++++++++++++++
 .../bindings/regulator/sy8106a-regulator.txt  | 23 --------
 2 files changed, 52 insertions(+), 23 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/regulator/silergy,sy8106a.yaml
 delete mode 100644 Documentation/devicetree/bindings/regulator/sy8106a-regulator.txt

diff --git a/Documentation/devicetree/bindings/regulator/silergy,sy8106a.yaml b/Documentation/devicetree/bindings/regulator/silergy,sy8106a.yaml
new file mode 100644
index 000000000000..a52a67c869b5
--- /dev/null
+++ b/Documentation/devicetree/bindings/regulator/silergy,sy8106a.yaml
@@ -0,0 +1,52 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/regulator/silergy,sy8106a.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Silergy SY8106A Voltage Regulator Device Tree Bindings
+
+maintainers:
+  - Ondrej Jirman <megous@megous.com>
+
+allOf:
+  - $ref: regulator.yaml#
+
+properties:
+  compatible:
+    const: silergy,sy8106a
+
+  reg:
+    maxItems: 1
+
+  silergy,fixed-microvolt:
+    description: >
+      The voltage when I2C regulating is disabled (set by external resistor
+      like a fixed voltage)
+
+required:
+  - compatible
+  - reg
+  - silergy,fixed-microvolt
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        regulator@65 {
+            compatible = "silergy,sy8106a";
+            reg = <0x65>;
+            regulator-name = "sy8106a-vdd";
+            silergy,fixed-microvolt = <1200000>;
+            regulator-min-microvolt = <1000000>;
+            regulator-max-microvolt = <1400000>;
+            regulator-boot-on;
+            regulator-always-on;
+        };
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/regulator/sy8106a-regulator.txt b/Documentation/devicetree/bindings/regulator/sy8106a-regulator.txt
deleted file mode 100644
index 39a8ca73f572..000000000000
--- a/Documentation/devicetree/bindings/regulator/sy8106a-regulator.txt
+++ /dev/null
@@ -1,23 +0,0 @@
-SY8106A Voltage regulator
-
-Required properties:
-- compatible: Must be "silergy,sy8106a"
-- reg: I2C slave address - must be <0x65>
-- silergy,fixed-microvolt - the voltage when I2C regulating is disabled (set
-  by external resistor like a fixed voltage)
-
-Any property defined as part of the core regulator binding, defined in
-./regulator.txt, can also be used.
-
-Example:
-
-	sy8106a {
-		compatible = "silergy,sy8106a";
-		reg = <0x65>;
-		regulator-name = "sy8106a-vdd";
-		silergy,fixed-microvolt = <1200000>;
-		regulator-min-microvolt = <1000000>;
-		regulator-max-microvolt = <1400000>;
-		regulator-boot-on;
-		regulator-always-on;
-	};
-- 
2.31.1

