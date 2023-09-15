Return-Path: <devicetree+bounces-426-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C7F677A1829
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 10:12:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C995C1C20C22
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 08:12:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7631CD516;
	Fri, 15 Sep 2023 08:12:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB818D300
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 08:12:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 35106C433B8;
	Fri, 15 Sep 2023 08:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694765528;
	bh=l19KZnKYEFFOwn2M66ea8D8C171a/stgTT9iwsB1EMo=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=HGVHQBx8qxe5GZeHBz28WBhJHu3lrppHKzCmB7D5TChpz7Q1EX5pXEdJK13YYdatA
	 EFGzpSedxDv8+NSIADQ2zO8lJAr8n3tvcbaa+aEC1ZmLUavpe8A8hTbtKdYaLPacHh
	 zQ3fF5Y+i+F4Qn4nhlcbRejW/JY0ARMXK5mr6ive9+VvJsBfyU/uK8cG+5/qwOfeXs
	 456n0cfM/X4t4gN2cWQMPmZFc913al2YBdQ60QnWdhz/Khw9ceMpOjSrCaeZ2U2BHf
	 tFMI4T67hVv+olRtRpyWuzNVGaS6pDQCdQ0ebhwgVQeMI+rv6oFJaMkctFn8R8SJbc
	 iRpxcC0504S9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 18123EE6439;
	Fri, 15 Sep 2023 08:12:08 +0000 (UTC)
From:
 Nikita Shubin via B4 Relay <devnull+nikita.shubin.maquefel.me@kernel.org>
Date: Fri, 15 Sep 2023 11:10:45 +0300
Subject: [PATCH v4 03/42] dt-bindings: clock: Add Cirrus EP93xx
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230915-ep93xx-v4-3-a1d779dcec10@maquefel.me>
References: <20230915-ep93xx-v4-0-a1d779dcec10@maquefel.me>
In-Reply-To: <20230915-ep93xx-v4-0-a1d779dcec10@maquefel.me>
To: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Nikita Shubin <nikita.shubin@maquefel.me>, 
 Alexander Sverdlin <alexander.sverdlin@gmail.com>
Cc: linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>, 
 Alexander Sverdlin <alexander.sverdlin@gmail.com>
X-Mailer: b4 0.13-dev-e3e53
X-Developer-Signature: v=1; a=ed25519-sha256; t=1694765525; l=2984;
 i=nikita.shubin@maquefel.me; s=20230718; h=from:subject:message-id;
 bh=GUdqrgbAU34v8FbfCO2TBmgUA9HZei0/j6RpndpiMV8=; =?utf-8?q?b=3DsrFPNgRarz3y?=
 =?utf-8?q?yQ+j4h0VmkWyRaRzoXNmZl2xW/IWCQYiuzcmjPy+G0qzc2fiYznlB5rUmYgh5JDV?=
 P5jeDDz1B/X00daGWtZLPZgiOxs6//cP+9j0yN1RtisKj+ljyM1i
X-Developer-Key: i=nikita.shubin@maquefel.me; a=ed25519;
 pk=vqf5YIUJ7BJv3EJFaNNxWZgGuMgDH6rwufTLflwU9ac=
X-Endpoint-Received:
 by B4 Relay for nikita.shubin@maquefel.me/20230718 with auth_id=65
X-Original-From: Nikita Shubin <nikita.shubin@maquefel.me>
Reply-To: <nikita.shubin@maquefel.me>

From: Nikita Shubin <nikita.shubin@maquefel.me>

Add device tree bindings for the Cirrus Logic EP93xx clock block
used in these SoCs.

Signed-off-by: Nikita Shubin <nikita.shubin@maquefel.me>
---
 .../bindings/clock/cirrus,ep9301-clk.yaml          | 46 ++++++++++++++++++++++
 include/dt-bindings/clock/cirrus,ep9301-clk.h      | 41 +++++++++++++++++++
 2 files changed, 87 insertions(+)

diff --git a/Documentation/devicetree/bindings/clock/cirrus,ep9301-clk.yaml b/Documentation/devicetree/bindings/clock/cirrus,ep9301-clk.yaml
new file mode 100644
index 000000000000..111e016601fb
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/cirrus,ep9301-clk.yaml
@@ -0,0 +1,46 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/cirrus,ep9301-clk.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Cirrus Logic ep93xx SoC's clock controller
+
+maintainers:
+  - Nikita Shubin <nikita.shubin@maquefel.me>
+  - Alexander Sverdlin <alexander.sverdlin@gmail.com>
+
+properties:
+  compatible:
+    oneOf:
+      - const: cirrus,ep9301-clk
+      - items:
+          - enum:
+              - cirrus,ep9302-clk
+              - cirrus,ep9307-clk
+              - cirrus,ep9312-clk
+              - cirrus,ep9315-clk
+          - const: cirrus,ep9301-clk
+
+  "#clock-cells":
+    const: 1
+
+  clocks:
+    items:
+      - description: reference clock
+
+required:
+  - compatible
+  - "#clock-cells"
+  - clocks
+
+additionalProperties: false
+
+examples:
+  - |
+    clock-controller {
+      compatible = "cirrus,ep9301-clk";
+      #clock-cells = <1>;
+      clocks = <&xtali>;
+    };
+...
diff --git a/include/dt-bindings/clock/cirrus,ep9301-clk.h b/include/dt-bindings/clock/cirrus,ep9301-clk.h
new file mode 100644
index 000000000000..3cd053c0fdea
--- /dev/null
+++ b/include/dt-bindings/clock/cirrus,ep9301-clk.h
@@ -0,0 +1,41 @@
+/* SPDX-License-Identifier: (GPL-2.0 OR MIT) */
+#ifndef DT_BINDINGS_CIRRUS_EP93XX_CLOCK_H
+#define DT_BINDINGS_CIRRUS_EP93XX_CLOCK_H
+
+#define EP93XX_CLK_UART1	0
+#define EP93XX_CLK_UART2	1
+#define EP93XX_CLK_UART3	2
+
+#define EP93XX_CLK_ADC		3
+#define EP93XX_CLK_ADC_EN	4
+
+#define EP93XX_CLK_KEYPAD   5
+
+#define EP93XX_CLK_VIDEO	6
+
+#define EP93XX_CLK_I2S_MCLK	7
+#define EP93XX_CLK_I2S_SCLK	8
+#define EP93XX_CLK_I2S_LRCLK	9
+
+#define EP93XX_CLK_UART		10
+#define EP93XX_CLK_SPI		11
+#define EP93XX_CLK_PWM		12
+#define EP93XX_CLK_USB		13
+
+#define EP93XX_CLK_M2M0		14
+#define EP93XX_CLK_M2M1		15
+
+#define EP93XX_CLK_M2P0		16
+#define EP93XX_CLK_M2P1		17
+#define EP93XX_CLK_M2P2		18
+#define EP93XX_CLK_M2P3		19
+#define EP93XX_CLK_M2P4		20
+#define EP93XX_CLK_M2P5		21
+#define EP93XX_CLK_M2P6		22
+#define EP93XX_CLK_M2P7		23
+#define EP93XX_CLK_M2P8		24
+#define EP93XX_CLK_M2P9		25
+
+#define EP93XX_CLK_END      26
+
+#endif /* DT_BINDINGS_CIRRUS_EP93XX_CLOCK_H */

-- 
2.39.2


