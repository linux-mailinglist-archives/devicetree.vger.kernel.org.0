Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E03DB3FD679
	for <lists+devicetree@lfdr.de>; Wed,  1 Sep 2021 11:20:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243521AbhIAJUb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Sep 2021 05:20:31 -0400
Received: from out5-smtp.messagingengine.com ([66.111.4.29]:48347 "EHLO
        out5-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S243508AbhIAJUb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Sep 2021 05:20:31 -0400
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
        by mailout.nyi.internal (Postfix) with ESMTP id 5D02B5C022D;
        Wed,  1 Sep 2021 05:19:34 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute2.internal (MEProxy); Wed, 01 Sep 2021 05:19:34 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm3; bh=7C/4byJbc2ZXF
        koUlf1cngwD2kxjNZgrUa62Sa/ttCk=; b=apvdgy/aBiaIE9a09IUYswSMOInkp
        PYs5pG7zr0EoZS82WD4n9n9UFnPuropb/WOqjreaArg4c1ACL84xn0cF00s4WaEh
        Z6iA0wBonwrzTVB9SN3thICBgQz9aPaPDPRt+WJXlC1O3IckK2nTX2xXBeFo9qrH
        rW0qa83gX6eVPnf5AZGtNk2jckbzLpllFoIh34wCzUx6cPjbJPSQj5lNNMwCicvY
        jHeUDoJKcHhfpIzVzgZIpBnV9q4IH1//DP7eunr5B4ovzUixelr3UbRxiZJMiFpT
        cXw9hIFR/YXiqa4yzaWLUFvC2SEGXctJ7Ac0z4FZ6H7/A/VrrqvIz/8pw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm3; bh=7C/4byJbc2ZXFkoUlf1cngwD2kxjNZgrUa62Sa/ttCk=; b=PBf+TZO/
        JZo0qQ8Kzr4GnZqySmiV3fbRGlbTXyHail7v+0CZx+26h9rO7aFcTMrr63iUMkxI
        k8n6fvAK5muDK+7LIfrcl/HPIe3ImE5MJoN0jH3o6G75q0zb18yyfEm2nU047Lpi
        r+6PvCUH8shHIBtnYhpPKs/SB8Wf+lf0qbrQ7iRDb5bqkg/+/lyegtToKg3VEG0o
        QjgHzyVEZnRW7OfAXOXv6B5Xr2ob5J4isRwmaIrquBP5PoJrLK4vsfLns9C4zf6O
        C4K5ZjJnDasrJXwfX7gdjT5AZ8hKLIQp56HtB9XM5t8BVMOwegzUVR+6ehDC4j9H
        Wfjiriw+BUBTlw==
X-ME-Sender: <xms:pkUvYYckFjSK6x2w-JzYf0oWSAMRJI3scyq2XPTnECc4wTD92K6pZg>
    <xme:pkUvYaPzqBiwGVPYhr2IZkb7QdeMyhsMcKtEqHrn3RObIPjyCem9iTpypzeaj4EO6
    JhnEXxc9Edd-vab_p4>
X-ME-Received: <xmr:pkUvYZiGeDa3_SNscdkmT49fdM1-xcShC73D0khXygk1YZ0fGR6bOsGzeyblhKYmAdk2bE4-cOSy1h5lt5ZrUvu25nwNWUpzJ4tL>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddruddvfedgudegucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    govehorghsthgrlhdqhfeguddvqddtvdculdduhedtmdenucfjughrpefhvffufffkofgj
    fhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgvucftihhprghrugcuoehmrg
    igihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtthgvrhhnpeevjeeijedtvefg
    fffgjeeugffguedtleetkeegteeufedtuddttdfgfffhgfeuffenucffohhmrghinhepug
    gvvhhitggvthhrvggvrdhorhhgnecuvehluhhsthgvrhfuihiivgepvdenucfrrghrrghm
    pehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:pkUvYd9KQaO4R2FEHtMrFq8S2eJnM-P4FFDc9Tcxs-DbR2EcJPDmPg>
    <xmx:pkUvYUv_6M-vQRlOmEfB_IUS9IQG2iOibw4VnH5HSftouZFoI-RHXA>
    <xmx:pkUvYUGxnL86xQTx-Jau2W4_AJT1QlyphGqaS9CmZiQhUCryDfhJqg>
    <xmx:pkUvYZ-sEg2liI2EZi_0HTvoc3vfoU8Y2d6fbEw0whC2tfIHqhU-sA>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 1 Sep 2021 05:19:33 -0400 (EDT)
From:   Maxime Ripard <maxime@cerno.tech>
To:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <maxime@cerno.tech>,
        =?UTF-8?q?Jernej=20=C5=A0krabec?= <jernej.skrabec@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com,
        Johan Hovold <johan@kernel.org>
Subject: [PATCH v2 21/52] dt-bindings: gnss: Convert UBlox Neo-6M binding to a schema
Date:   Wed,  1 Sep 2021 11:18:21 +0200
Message-Id: <20210901091852.479202-22-maxime@cerno.tech>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210901091852.479202-1-maxime@cerno.tech>
References: <20210901091852.479202-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The UBlox Neo 6M is supported by Linux thanks to its device tree
binding.

Now that we have the DT validation in place, let's convert the device
tree bindings for that driver over to a YAML schema.

Cc: Johan Hovold <johan@kernel.org>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>

---

Changes from v1:
  - Fixed a typo
  - Fixed the example node name
---
 .../bindings/gnss/u-blox,neo-6m.yaml          | 62 +++++++++++++++++++
 .../devicetree/bindings/gnss/u-blox.txt       | 45 --------------
 2 files changed, 62 insertions(+), 45 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/gnss/u-blox,neo-6m.yaml
 delete mode 100644 Documentation/devicetree/bindings/gnss/u-blox.txt

diff --git a/Documentation/devicetree/bindings/gnss/u-blox,neo-6m.yaml b/Documentation/devicetree/bindings/gnss/u-blox,neo-6m.yaml
new file mode 100644
index 000000000000..396101a223e7
--- /dev/null
+++ b/Documentation/devicetree/bindings/gnss/u-blox,neo-6m.yaml
@@ -0,0 +1,62 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/gnss/u-blox,neo-6m.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: U-blox GNSS Receiver Device Tree Bindings
+
+maintainers:
+  - Johan Hovold <johan@kernel.org>
+
+description: >
+  The U-blox GNSS receivers can use UART, DDC (I2C), SPI and USB interfaces.
+
+properties:
+  compatible:
+    enum:
+      - u-blox,neo-6m
+      - u-blox,neo-8
+      - u-blox,neo-m8
+
+  reg:
+    description: >
+      The DDC Slave Address, SPI chip select address, the number of the USB hub
+      port or the USB host-controller port to which this device is attached,
+      depending on the bus used. Required for the DDC, SPI or USB busses.
+
+  vcc-supply:
+    description: >
+      Main voltage regulator
+
+  timepulse-gpios:
+    maxItems: 1
+    description: >
+      Time pulse GPIO
+
+  u-blox,extint-gpios:
+    maxItems: 1
+    description: >
+      GPIO connected to the "external interrupt" input pin
+  
+  v-bckp-supply:
+    description: >
+      Backup voltage regulator
+
+  current-speed: true
+
+required:
+  - compatible
+  - vcc-supply
+
+additionalProperties: false
+
+examples:
+  - |
+    serial {
+        gnss {
+            compatible = "u-blox,neo-8";
+            v-bckp-supply = <&gnss_v_bckp_reg>;
+            vcc-supply = <&gnss_vcc_reg>;
+        };
+    };
diff --git a/Documentation/devicetree/bindings/gnss/u-blox.txt b/Documentation/devicetree/bindings/gnss/u-blox.txt
deleted file mode 100644
index 7cdefd058fe0..000000000000
--- a/Documentation/devicetree/bindings/gnss/u-blox.txt
+++ /dev/null
@@ -1,45 +0,0 @@
-u-blox GNSS Receiver DT binding
-
-The u-blox GNSS receivers can use UART, DDC (I2C), SPI and USB interfaces.
-
-Please see Documentation/devicetree/bindings/gnss/gnss.txt for generic
-properties.
-
-Required properties:
-
-- compatible	: Must be one of
-
-			"u-blox,neo-6m"
-			"u-blox,neo-8"
-			"u-blox,neo-m8"
-
-- vcc-supply	: Main voltage regulator
-
-Required properties (DDC):
-- reg		: DDC (I2C) slave address
-
-Required properties (SPI):
-- reg		: SPI chip select address
-
-Required properties (USB):
-- reg		: Number of the USB hub port or the USB host-controller port
-                  to which this device is attached
-
-Optional properties:
-
-- timepulse-gpios	: Time pulse GPIO
-- u-blox,extint-gpios	: GPIO connected to the "external interrupt" input pin
-- v-bckp-supply	: Backup voltage regulator
-
-Example:
-
-serial@1234 {
-	compatible = "ns16550a";
-
-	gnss {
-		compatible = "u-blox,neo-8";
-
-		v-bckp-supply = <&gnss_v_bckp_reg>;
-		vcc-supply = <&gnss_vcc_reg>;
-	};
-};
-- 
2.31.1

