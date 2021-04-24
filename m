Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 11BEC36A2C5
	for <lists+devicetree@lfdr.de>; Sat, 24 Apr 2021 21:20:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232560AbhDXTUj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 24 Apr 2021 15:20:39 -0400
Received: from bhuna.collabora.co.uk ([46.235.227.227]:51792 "EHLO
        bhuna.collabora.co.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231814AbhDXTUi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 24 Apr 2021 15:20:38 -0400
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (Authenticated sender: ezequiel)
        with ESMTPSA id E06141F4316D
From:   Ezequiel Garcia <ezequiel@collabora.com>
To:     linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Heiko Stuebner <heiko@sntech.de>,
        Kever Yang <kever.yang@rock-chips.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Ezequiel Garcia <ezequiel@collabora.com>, kernel@collabora.com
Subject: [PATCH 2/2] dt-bindings: timer: convert rockchip,rk-timer.txt to YAML
Date:   Sat, 24 Apr 2021 16:19:46 -0300
Message-Id: <20210424191946.69978-2-ezequiel@collabora.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210424191946.69978-1-ezequiel@collabora.com>
References: <20210424191946.69978-1-ezequiel@collabora.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert Rockchip Timer dt-bindings to YAML.

Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
---
 .../bindings/timer/rockchip,rk-timer.txt      | 27 --------
 .../bindings/timer/rockchip,rk-timer.yaml     | 67 +++++++++++++++++++
 2 files changed, 67 insertions(+), 27 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/timer/rockchip,rk-timer.txt
 create mode 100644 Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml

diff --git a/Documentation/devicetree/bindings/timer/rockchip,rk-timer.txt b/Documentation/devicetree/bindings/timer/rockchip,rk-timer.txt
deleted file mode 100644
index d65fdce7c7f0..000000000000
--- a/Documentation/devicetree/bindings/timer/rockchip,rk-timer.txt
+++ /dev/null
@@ -1,27 +0,0 @@
-Rockchip rk timer
-
-Required properties:
-- compatible: should be:
-  "rockchip,rv1108-timer", "rockchip,rk3288-timer": for Rockchip RV1108
-  "rockchip,rk3036-timer", "rockchip,rk3288-timer": for Rockchip RK3036
-  "rockchip,rk3066-timer", "rockchip,rk3288-timer": for Rockchip RK3066
-  "rockchip,rk3188-timer", "rockchip,rk3288-timer": for Rockchip RK3188
-  "rockchip,rk3228-timer", "rockchip,rk3288-timer": for Rockchip RK3228
-  "rockchip,rk3229-timer", "rockchip,rk3288-timer": for Rockchip RK3229
-  "rockchip,rk3288-timer": for Rockchip RK3288
-  "rockchip,rk3368-timer", "rockchip,rk3288-timer": for Rockchip RK3368
-  "rockchip,rk3399-timer": for Rockchip RK3399
-- reg: base address of the timer register starting with TIMERS CONTROL register
-- interrupts: should contain the interrupts for Timer0
-- clocks : must contain an entry for each entry in clock-names
-- clock-names : must include the following entries:
-  "timer", "pclk"
-
-Example:
-	timer: timer@ff810000 {
-		compatible = "rockchip,rk3288-timer";
-		reg = <0xff810000 0x20>;
-		interrupts = <GIC_SPI 72 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&xin24m>, <&cru PCLK_TIMER>;
-		clock-names = "timer", "pclk";
-	};
diff --git a/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml b/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml
new file mode 100644
index 000000000000..f1bc3ac7abc8
--- /dev/null
+++ b/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml
@@ -0,0 +1,67 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/timer/rockchip,rk-timer.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip Timer Device Tree Bindings
+
+maintainers:
+  - Daniel Lezcano <daniel.lezcano@linaro.org>
+
+properties:
+  compatible:
+    oneOf:
+      - const: rockchip,rk3288-timer
+      - const: rockchip,rk3399-timer
+      - items:
+          - enum:
+            - rockchip,rv1108-timer
+            - rockchip,rk3036-timer
+            - rockchip,rk3066-timer
+            - rockchip,rk3188-timer
+            - rockchip,rk3228-timer
+            - rockchip,rk3229-timer
+            - rockchip,rk3288-timer
+            - rockchip,rk3368-timer
+            - rockchip,px30-timer
+          - const: rockchip,rk3288-timer
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    minItems: 2
+    maxItems: 2
+
+  clock-names:
+    items:
+      enum:
+        - timer
+        - pclk
+    minItems: 2
+    maxItems: 2
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/rk3288-cru.h>
+
+    timer: timer@ff810000 {
+        compatible = "rockchip,rk3288-timer";
+        reg = <0xff810000 0x20>;
+        interrupts = <GIC_SPI 72 IRQ_TYPE_LEVEL_HIGH>;
+        clocks = <&xin24m>, <&cru PCLK_TIMER>;
+        clock-names = "timer", "pclk";
+    };
-- 
2.30.0

