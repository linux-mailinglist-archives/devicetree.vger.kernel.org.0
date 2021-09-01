Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 545103FD684
	for <lists+devicetree@lfdr.de>; Wed,  1 Sep 2021 11:20:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243538AbhIAJUn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Sep 2021 05:20:43 -0400
Received: from out5-smtp.messagingengine.com ([66.111.4.29]:46105 "EHLO
        out5-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S243537AbhIAJUm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Sep 2021 05:20:42 -0400
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
        by mailout.nyi.internal (Postfix) with ESMTP id EE4505C0174;
        Wed,  1 Sep 2021 05:19:45 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute2.internal (MEProxy); Wed, 01 Sep 2021 05:19:45 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm3; bh=M8TWAQt88eeOT
        2KFO7IKmDQX5fX2NQMj3RqZ9XBZzq8=; b=YWR+2j4fbp1wkqxvzF+OZ1R+rfXpR
        IMUJ/ChPWhHGJArkU7ZppchgrO3Zk3IxU9RX5Uz+wuqSptY4q/6D1i+HTivAZp7I
        aC1JrmGVjWMzfYow/IBS76UEZYbS9/waiqt1/yboEtszDwt6nWO4bwqmdu94YWUn
        Fmouq+XiKkr7REq4Na2JtiTQK66Yh25iI8MeZerA313TMFwPlZOHxxhHlQXqTJzk
        MeivuV+85IIDOeKUNW0H4Q/Qc5oj/dK4oiRKviUkYdwksy/Pay/a8cghbjIh70M5
        WA3u9GYiuTreF/m8NyVCfsYBPr5gG0Ekh4mZCMwJOXJs/q0DQ3XhozFqA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm3; bh=M8TWAQt88eeOT2KFO7IKmDQX5fX2NQMj3RqZ9XBZzq8=; b=hEvuT2ME
        874SsJGXG+m5lgc/V04T5P/BWB2cBKxtbxCvaf38AZXJS8sa1i99Kv4VE3AX7HcV
        o8dE9/jQTtIp78MFL0mGhqcCGtqhxx1RknGNXSkVmNshzWdCx9P8iS6cojtZS3vp
        HVhtD4rFd03ZIsltwbGBn1FOHpu2DpFCn24cdK7G197RPJG6wQq1dFvfA75UMRTe
        rJGfhH9HnOhY7yFRuSDogFp7n40HPVJtfrY8h28zYX6o9xAyH8G8VbfI6Pl3bmYY
        tkf4WeHin+Z2uG3G7q8Bgotm3KNFWeLNxRt4ySE69INGRFhwHvRYonn9MQVai89E
        N5/Mga43f+rGzQ==
X-ME-Sender: <xms:sUUvYSgeq-3522QSr2lSI1lAbkIEFy1URrMaXQAKk7SlbEJuS3EyZA>
    <xme:sUUvYTDjybNboSo1hu5752b5Rbvst9UkHyLsHrzZbJAmRBybOFnay7Y-neXvUchBM
    ZewrmutrqH1rQ7jDnA>
X-ME-Received: <xmr:sUUvYaEzs_bImw3w7hHBU70lwuAryleUxyNcjIwkturzo1gN8srDVLqb-SN0epZyXYQrFnPGfuAfvs-coWAp48SN4lBmXmv3p0xU>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddruddvfedgudegucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    govehorghsthgrlhdqhfeguddvqddtvdculdduhedtmdenucfjughrpefhvffufffkofgj
    fhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgvucftihhprghrugcuoehmrg
    igihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtthgvrhhnpeevjeeijedtvefg
    fffgjeeugffguedtleetkeegteeufedtuddttdfgfffhgfeuffenucffohhmrghinhepug
    gvvhhitggvthhrvggvrdhorhhgnecuvehluhhsthgvrhfuihiivgepgeenucfrrghrrghm
    pehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:sUUvYbQN_4WGEjCs82Bye3FK-aVZpHYcdFeazIP7OEmzOQjTyI3tSA>
    <xmx:sUUvYfxRHCp5McSyO9jjQVi7Y6HRYU1UFrbktc5vYq2M-WoQQKO0LA>
    <xmx:sUUvYZ7s7fzKQ39aMLUBZj6wIv4PcZ_M8CO7o_NFQH9RdMWWUcK9FA>
    <xmx:sUUvYWyZMh4ww13UT0tff4_RjU7CLkt2WhMA44RKHMK6xs6fcLhsmA>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 1 Sep 2021 05:19:45 -0400 (EDT)
From:   Maxime Ripard <maxime@cerno.tech>
To:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <maxime@cerno.tech>,
        =?UTF-8?q?Jernej=20=C5=A0krabec?= <jernej.skrabec@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com,
        Lee Jones <lee.jones@linaro.org>
Subject: [PATCH v2 28/52] dt-bindings: mfd: Convert X-Powers AC100 binding to a schema
Date:   Wed,  1 Sep 2021 11:18:28 +0200
Message-Id: <20210901091852.479202-29-maxime@cerno.tech>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210901091852.479202-1-maxime@cerno.tech>
References: <20210901091852.479202-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The X-Powers AC100 hybrid devices are supported by Linux thanks to its
device tree binding.

Now that we have the DT validation in place, let's convert the device
tree bindings for that driver over to a YAML schema.

Cc: Lee Jones <lee.jones@linaro.org>
Acked-by: Chen-Yu Tsai <wens@csie.org>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>

---

Changes from v1:
  - Added maximum number of clocks properties
---
 .../devicetree/bindings/mfd/ac100.txt         |  50 --------
 .../bindings/mfd/x-powers,ac100.yaml          | 116 ++++++++++++++++++
 2 files changed, 116 insertions(+), 50 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/mfd/ac100.txt
 create mode 100644 Documentation/devicetree/bindings/mfd/x-powers,ac100.yaml

diff --git a/Documentation/devicetree/bindings/mfd/ac100.txt b/Documentation/devicetree/bindings/mfd/ac100.txt
deleted file mode 100644
index dff219f07493..000000000000
--- a/Documentation/devicetree/bindings/mfd/ac100.txt
+++ /dev/null
@@ -1,50 +0,0 @@
-X-Powers AC100 Codec/RTC IC Device Tree bindings
-
-AC100 is a audio codec and RTC subsystem combo IC. The 2 parts are
-separated, including power supplies and interrupt lines, but share
-a common register address space and host interface.
-
-Required properties:
-- compatible: "x-powers,ac100"
-- reg: The I2C slave address or RSB hardware address for the chip
-- sub-nodes:
-  - codec
-    - compatible:		"x-powers,ac100-codec"
-    - interrupts:		SoC NMI / GPIO interrupt connected to the
-    				IRQ_AUDIO pin
-    - #clock-cells:		Shall be 0
-    - clock-output-names:	"4M_adda"
-
-    - see clock/clock-bindings.txt for common clock bindings
-
-  - rtc
-    - compatible:		"x-powers,ac100-rtc"
-    - clocks:			A phandle to the codec's "4M_adda" clock
-    - #clock-cells:		Shall be 1
-    - clock-output-names:	"cko1_rtc", "cko2_rtc", "cko3_rtc"
-
-    - see clock/clock-bindings.txt for common clock bindings
-
-Example:
-
-ac100: codec@e89 {
-	compatible = "x-powers,ac100";
-	reg = <0xe89>;
-
-	ac100_codec: codec {
-		compatible = "x-powers,ac100-codec";
-		interrupt-parent = <&r_pio>;
-		interrupts = <0 9 IRQ_TYPE_LEVEL_LOW>; /* PL9 */
-		#clock-cells = <0>;
-		clock-output-names = "4M_adda";
-	};
-
-	ac100_rtc: rtc {
-		compatible = "x-powers,ac100-rtc";
-		interrupt-parent = <&nmi_intc>;
-		interrupts = <0 IRQ_TYPE_LEVEL_LOW>;
-		clocks = <&ac100_codec>;
-		#clock-cells = <1>;
-		clock-output-names = "cko1_rtc", "cko2_rtc", "cko3_rtc";
-	};
-};
diff --git a/Documentation/devicetree/bindings/mfd/x-powers,ac100.yaml b/Documentation/devicetree/bindings/mfd/x-powers,ac100.yaml
new file mode 100644
index 000000000000..de330c9869ff
--- /dev/null
+++ b/Documentation/devicetree/bindings/mfd/x-powers,ac100.yaml
@@ -0,0 +1,116 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/mfd/x-powers,ac100.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: X-Powers AC100 Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+
+properties:
+  compatible:
+    const: x-powers,ac100
+
+  reg:
+    maxItems: 1
+
+  codec:
+    type: object
+
+    properties:
+      "#clock-cells":
+        const: 0
+
+      compatible:
+        const: x-powers,ac100-codec
+
+      interrupts:
+        maxItems: 1
+
+      clock-output-names:
+        maxItems: 1
+        description: >
+          Name of the 4M_adda clock exposed by the codec
+
+    required:
+      - "#clock-cells"
+      - compatible
+      - interrupts
+      - clock-output-names
+
+    additionalProperties: false
+
+  rtc:
+    type: object
+
+    properties:
+      "#clock-cells":
+        const: 1
+
+      compatible:
+        const: x-powers,ac100-rtc
+
+      interrupts:
+        maxItems: 1
+
+      clocks:
+        maxItems: 1
+        description: >
+           A phandle to the codec's "4M_adda" clock
+
+      clock-output-names:
+        maxItems: 3
+        description: >
+          Name of the cko1, cko2 and cko3 clocks exposed by the codec
+
+    required:
+      - "#clock-cells"
+      - compatible
+      - interrupts
+      - clocks
+      - clock-output-names
+
+    additionalProperties: false
+
+required:
+  - compatible
+  - reg
+  - codec
+  - rtc
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    rsb {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        codec@e89 {
+            compatible = "x-powers,ac100";
+            reg = <0xe89>;
+
+            ac100_codec: codec {
+                compatible = "x-powers,ac100-codec";
+                interrupt-parent = <&r_pio>;
+                interrupts = <0 9 IRQ_TYPE_LEVEL_LOW>; /* PL9 */
+                #clock-cells = <0>;
+                clock-output-names = "4M_adda";
+            };
+
+            ac100_rtc: rtc {
+                compatible = "x-powers,ac100-rtc";
+                interrupt-parent = <&nmi_intc>;
+                interrupts = <0 IRQ_TYPE_LEVEL_LOW>;
+                clocks = <&ac100_codec>;
+                #clock-cells = <1>;
+                clock-output-names = "cko1_rtc", "cko2_rtc", "cko3_rtc";
+            };
+        };
+    };
+
+...
-- 
2.31.1

