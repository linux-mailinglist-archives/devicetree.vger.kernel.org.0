Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3A5C13FD68D
	for <lists+devicetree@lfdr.de>; Wed,  1 Sep 2021 11:20:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243545AbhIAJVB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Sep 2021 05:21:01 -0400
Received: from new1-smtp.messagingengine.com ([66.111.4.221]:57847 "EHLO
        new1-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S243558AbhIAJU4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Sep 2021 05:20:56 -0400
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
        by mailnew.nyi.internal (Postfix) with ESMTP id 922485802FE;
        Wed,  1 Sep 2021 05:19:55 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute3.internal (MEProxy); Wed, 01 Sep 2021 05:19:55 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm3; bh=VeIYvzJ8Emm+U
        U4q5r17qzdmyxVu8DyWlALq5NYoVgE=; b=rJ6YNnx1oV8/yq156PtePd+lNJUaO
        i8eVS3O6BjSvppuAxDWht2KMGxg/p3rtFzYx2JTVjYCRb6r9gEMOypjh+czCLnvB
        u8zbcRPWpAJALu+uXtzNWs9/eUhMwZsT6ucAKo0N2z/GZIU8Ckmyy4Vi2NzxjOiu
        d+XPgHBCh6UIZ+SWjIlNqE7C2ncxKIe2SzdBdlBksTZ9RmcF2qL7j7LL87GM7HHp
        DUNoqc30fsAKbCNWKmD5VmMfSvdPa4yDwqwtZc01NqejutUCd6qBIHn1MPb/6PYU
        lRr7BsdqqcA7DjwHZGK6qmFeXmqC1mXIWdSzIdYwDEARTtRBpG1k82hPg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm3; bh=VeIYvzJ8Emm+UU4q5r17qzdmyxVu8DyWlALq5NYoVgE=; b=jGGxIEeS
        2OTftzdRC1GBCy89MR8/bjQje9ZV6hnkKm0YviMJGIlTsb+Saon5OpyVc9tzZSPg
        QochjS+7oJHPQEqzjk0SbvJoFixPuBIHss8X3G/O+GobB38EKkEBUocotC2u51/N
        pfdRO14eXdF8GzhqgsKNklJQuOrib/zRFRaWLE7EV3iWf/YLUgzxari8MZuL2upf
        mgq5jFnEcpOehefNh+WZ88dWafgcl7r3k+CyVc7WvY9DsrFu1qvzzdM1xvPWB4xl
        9UZrdbGvaBRcOxKq3POAcX03wEwVlWIQKSsyARbcdtrNEOp5jq4NPDhudbIbc+c/
        mFURgXEdCaOYzw==
X-ME-Sender: <xms:ukUvYWdBv6NiBtnhzNS5ZTKtTmVvH27NQASZrtiDFvwLWNEVVFErrQ>
    <xme:ukUvYQN_G3Io_zFsPgFAifn2Obb40Vq6_gj0JwjoxJZi66hZQvwPivM-yp7EGj2WV
    m1Pb7gt3ZVcq_LmW9w>
X-ME-Received: <xmr:ukUvYXge9vFGH89km6aXrLX-JNtumxF1DuZYfoXh8qAO0wMrbcAQo_xJ2zWKYjrbC9lP6xztUOg1gw9kpljwsdqzMDTH1227TqRc>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddruddvfedgudehucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    govehorghsthgrlhdqhfeguddvqddtvdculdduhedtmdenucfjughrpefhvffufffkofgj
    fhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgvucftihhprghrugcuoehmrg
    igihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtthgvrhhnpeevjeeijedtvefg
    fffgjeeugffguedtleetkeegteeufedtuddttdfgfffhgfeuffenucffohhmrghinhepug
    gvvhhitggvthhrvggvrdhorhhgnecuvehluhhsthgvrhfuihiivgepgeenucfrrghrrghm
    pehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:ukUvYT81rpAL6h5q79v9D7QlGP-i85i9ZXxUWCcr2843iG30iQIq8w>
    <xmx:ukUvYSsKWxJC6cbbvJUvgZVfT_YSLpKUNphPVHKUw6tM-IA7jZGImQ>
    <xmx:ukUvYaGScMYlKACANrrPSbUvEmVgh3i6J-JtrSJBfimlaEx43CJKlg>
    <xmx:u0UvYaGPRFO6w_huz9cuPuzkmOe0rUI01UM92ue3QZdE6Y9nN7Jq-g>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 1 Sep 2021 05:19:54 -0400 (EDT)
From:   Maxime Ripard <maxime@cerno.tech>
To:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <maxime@cerno.tech>,
        =?UTF-8?q?Jernej=20=C5=A0krabec?= <jernej.skrabec@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com,
        Icenowy Zheng <icenowy@aosc.io>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Ondrej Jirman <megous@megous.com>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v2 33/52] dt-bindings: regulator: Convert SY8106A binding to a schema
Date:   Wed,  1 Sep 2021 11:18:33 +0200
Message-Id: <20210901091852.479202-34-maxime@cerno.tech>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210901091852.479202-1-maxime@cerno.tech>
References: <20210901091852.479202-1-maxime@cerno.tech>
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
Reviewed-by: Rob Herring <robh@kernel.org>
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

