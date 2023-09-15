Return-Path: <devicetree+bounces-430-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 517DB7A1835
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 10:13:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0ADA528223E
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 08:13:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27F8AD52D;
	Fri, 15 Sep 2023 08:12:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AC3DD30D
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 08:12:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 914B3C4167D;
	Fri, 15 Sep 2023 08:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694765528;
	bh=CkSv/2iqm/muqXmy71wsDxlzXALrxmFw7MCaIVpOrok=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=XdxUPCogOpfs9IHehhtYG3caLuvweNSlEK4bAiIjgeCttHua3fPVpLYZweg5GTieI
	 kBilDIbB/5U/9QHSU8LGkLnUFH6VHFmT0degok3LNb+mYnQQMwwz2htJT0vzfIMOO1
	 fHF4o/vhRU6jf2S5VzCMAQylpQolw2nftLr7gynQg8upl1m8iIvMHOGAUaySWXxKEc
	 NTWPjCj962fuFE3dX3tiugbvn2H5NgU0sLdZhpGJGVJZALsw/bO9f5I/mlqv/Vqnxv
	 nq3qqEQf017p4H4+ZO222YOaqRtZo+Z8mdjbTwzxSg7IpEAyjgh9RNckL+t3iZ/5i/
	 /LDVfGYY9EYZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7F743EE6439;
	Fri, 15 Sep 2023 08:12:08 +0000 (UTC)
From:
 Nikita Shubin via B4 Relay <devnull+nikita.shubin.maquefel.me@kernel.org>
Date: Fri, 15 Sep 2023 11:10:51 +0300
Subject: [PATCH v4 09/42] dt-bindings: soc: Add Cirrus EP93xx
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230915-ep93xx-v4-9-a1d779dcec10@maquefel.me>
References: <20230915-ep93xx-v4-0-a1d779dcec10@maquefel.me>
In-Reply-To: <20230915-ep93xx-v4-0-a1d779dcec10@maquefel.me>
To: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Nikita Shubin <nikita.shubin@maquefel.me>, 
 Alexander Sverdlin <alexander.sverdlin@gmail.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Arnd Bergmann <arnd@arndb.de>, 
 Alexander Sverdlin <alexander.sverdlin@gmail.com>
X-Mailer: b4 0.13-dev-e3e53
X-Developer-Signature: v=1; a=ed25519-sha256; t=1694765525; l=3868;
 i=nikita.shubin@maquefel.me; s=20230718; h=from:subject:message-id;
 bh=sETUUAT5hDZfN2BadAoOQHzR1eVKgsUzzClRS2h7n78=; =?utf-8?q?b=3DFTd8jF/0f33o?=
 =?utf-8?q?NxHEMwrxdWEQ1tN0Y9DN64lCQ+NR5l/s7/UZp0n5swGWziBb6J1iz0En6tMB0Q4h?=
 cI9WmBsuDLuzTNyjgVff87tB2ZdHedwx4VMzknp50OfgMmeV+shS
X-Developer-Key: i=nikita.shubin@maquefel.me; a=ed25519;
 pk=vqf5YIUJ7BJv3EJFaNNxWZgGuMgDH6rwufTLflwU9ac=
X-Endpoint-Received:
 by B4 Relay for nikita.shubin@maquefel.me/20230718 with auth_id=65
X-Original-From: Nikita Shubin <nikita.shubin@maquefel.me>
Reply-To: <nikita.shubin@maquefel.me>

From: Nikita Shubin <nikita.shubin@maquefel.me>

Add device tree bindings for the Cirrus Logic EP93xx SoC.

Signed-off-by: Nikita Shubin <nikita.shubin@maquefel.me>
---
 .../bindings/arm/cirrus/cirrus,ep9301.yaml         | 38 ++++++++++++
 .../bindings/soc/cirrus/cirrus,ep9301-syscon.yaml  | 71 ++++++++++++++++++++++
 2 files changed, 109 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/cirrus/cirrus,ep9301.yaml b/Documentation/devicetree/bindings/arm/cirrus/cirrus,ep9301.yaml
new file mode 100644
index 000000000000..97dd8b6aefa9
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/cirrus/cirrus,ep9301.yaml
@@ -0,0 +1,38 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/cirrus/cirrus,ep9301.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Cirrus Logic EP93xx platforms
+
+description:
+  The EP93xx SoC is a ARMv4T-based with 200 MHz ARM9 CPU.
+
+maintainers:
+  - Alexander Sverdlin <alexander.sverdlin@gmail.com>
+  - Nikita Shubin <nikita.shubin@maquefel.me>
+
+properties:
+  $nodename:
+    const: '/'
+  compatible:
+    oneOf:
+      - description: The TS-7250 is a compact, full-featured Single Board Computer (SBC)
+          based upon the Cirrus EP9302 ARM9 CPU
+        items:
+          - const: technologic,ts7250
+          - const: cirrus,ep9301
+
+      - description: The Liebherr BK3 is a derivate from ts7250 board
+        items:
+          - const: liebherr,bk3
+          - const: cirrus,ep9301
+
+      - description: EDB302 is an evaluation board by Cirrus Logic,
+          based on a Cirrus Logic EP9302 CPU
+        items:
+          - const: cirrus,edb9302
+          - const: cirrus,ep9301
+
+additionalProperties: true
diff --git a/Documentation/devicetree/bindings/soc/cirrus/cirrus,ep9301-syscon.yaml b/Documentation/devicetree/bindings/soc/cirrus/cirrus,ep9301-syscon.yaml
new file mode 100644
index 000000000000..1692250251d9
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/cirrus/cirrus,ep9301-syscon.yaml
@@ -0,0 +1,71 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/soc/cirrus/cirrus,ep9301-syscon.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Cirrus Logic EP93xx Platforms System Controller
+
+maintainers:
+  - Alexander Sverdlin <alexander.sverdlin@gmail.com>
+  - Nikita Shubin <nikita.shubin@maquefel.me>
+
+properties:
+  compatible:
+    oneOf:
+      - items:
+          - enum:
+              - cirrus,ep9302-syscon
+              - cirrus,ep9307-syscon
+              - cirrus,ep9312-syscon
+              - cirrus,ep9315-syscon
+          - const: cirrus,ep9301-syscon
+          - const: syscon
+          - const: simple-mfd
+      - items:
+          - const: cirrus,ep9301-syscon
+          - const: syscon
+          - const: simple-mfd
+
+  reg:
+    maxItems: 1
+
+  reboot:
+    type: object
+    $ref: /schemas/power/reset/cirrus,ep9301-reboot.yaml
+
+  clock-controller:
+    type: object
+    $ref: /schemas/clock/cirrus,ep9301-clk.yaml
+
+  pinctrl:
+    type: object
+    $ref: /schemas/pinctrl/cirrus,ep9301-pinctrl.yaml
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    syscon@80930000 {
+        compatible = "cirrus,ep9301-syscon",
+                     "syscon", "simple-mfd";
+        reg = <0x80930000 0x1000>;
+
+        clock-controller {
+            compatible = "cirrus,ep9301-clk";
+            #clock-cells = <1>;
+            clocks = <&xtali>;
+        };
+
+        pinctrl {
+            compatible = "cirrus,ep9301-pinctrl";
+        };
+
+        reboot {
+            compatible = "cirrus,ep9301-reboot";
+        };
+    };

-- 
2.39.2


