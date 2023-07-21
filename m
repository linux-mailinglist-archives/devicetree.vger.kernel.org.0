Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9184275C13D
	for <lists+devicetree@lfdr.de>; Fri, 21 Jul 2023 10:19:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229476AbjGUITh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Jul 2023 04:19:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32972 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229757AbjGUITg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Jul 2023 04:19:36 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4295CED
        for <devicetree@vger.kernel.org>; Fri, 21 Jul 2023 01:19:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1689927575; x=1721463575;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=9OPu0UOu2g0t4YsHcwRRfqrehPODnvxHLabC76vveVM=;
  b=F0y/lwl4cC+Cdd34du1oiJdw3oYp71MBkl7S/FjH08uDRqlN3lzrTQ76
   NI4Lmluxr3FzhSpnJ03EP5hd000pR3FZlYmdbcZokaCrXp4oBzlbVMS3y
   zXC4h6N/5LpFhm8RWBOrWqp38OfKR4ZJGkz4MYTAGBahFuGWgS4W7aa2e
   8NWzLnAOH9t/12ZU+xjbskF6MeOL1Hrabi2z4Mxf3QxkhSZ+GLv3OttfN
   yWlUg2p3UFpy035Jn7xcLszJQ6iWhYcJHThMEiztrLe32/6nSY6u/cG3o
   LIwKcSWjp41uO6yLE5u7H2kA2w7mOMGvBO+vKRmAZu6EEmWq5CaFFDrnl
   A==;
X-IronPort-AV: E=Sophos;i="6.01,220,1684792800"; 
   d="scan'208";a="32048238"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 21 Jul 2023 10:19:33 +0200
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 17F97280078;
        Fri, 21 Jul 2023 10:19:33 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     MyungJoo Ham <myungjoo.ham@samsung.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v3 1/1] dt-bindings: extcon-usb-gpio: convert to DT schema format
Date:   Fri, 21 Jul 2023 10:19:26 +0200
Message-Id: <20230721081926.1185225-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert the binding to DT schema format. Change the GPIO properties to new
naming convention using -gpios as well.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
---
Changes in v3:
* Split from DT change series
* Added Rob's R-b

 .../bindings/extcon/extcon-usb-gpio.txt       | 21 --------
 .../bindings/extcon/extcon-usb-gpio.yaml      | 51 +++++++++++++++++++
 2 files changed, 51 insertions(+), 21 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/extcon/extcon-usb-gpio.txt
 create mode 100644 Documentation/devicetree/bindings/extcon/extcon-usb-gpio.yaml

diff --git a/Documentation/devicetree/bindings/extcon/extcon-usb-gpio.txt b/Documentation/devicetree/bindings/extcon/extcon-usb-gpio.txt
deleted file mode 100644
index dfc14f71e81f..000000000000
--- a/Documentation/devicetree/bindings/extcon/extcon-usb-gpio.txt
+++ /dev/null
@@ -1,21 +0,0 @@
-USB GPIO Extcon device
-
-This is a virtual device used to generate USB cable states from the USB ID pin
-connected to a GPIO pin.
-
-Required properties:
-- compatible: Should be "linux,extcon-usb-gpio"
-
-Either one of id-gpio or vbus-gpio must be present. Both can be present as well.
-- id-gpio: gpio for USB ID pin. See gpio binding.
-- vbus-gpio: gpio for USB VBUS pin.
-
-Example: Examples of extcon-usb-gpio node in dra7-evm.dts as listed below:
-	extcon_usb1 {
-		compatible = "linux,extcon-usb-gpio";
-		id-gpio = <&gpio6 1 GPIO_ACTIVE_HIGH>;
-	}
-
-	&omap_dwc3_1 {
-		extcon = <&extcon_usb1>;
-	};
diff --git a/Documentation/devicetree/bindings/extcon/extcon-usb-gpio.yaml b/Documentation/devicetree/bindings/extcon/extcon-usb-gpio.yaml
new file mode 100644
index 000000000000..136f865b8781
--- /dev/null
+++ b/Documentation/devicetree/bindings/extcon/extcon-usb-gpio.yaml
@@ -0,0 +1,51 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/extcon/extcon-usb-gpio.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: USB GPIO Extcon device
+
+maintainers:
+  - Alexander Stein <alexander.stein@ew.tq-group.com>
+
+description:
+  This is a virtual device used to generate USB cable states from the
+  USB ID pin connected to a GPIO pin.
+  Deprecated, use USB connector node instead.
+
+deprecated: true
+
+properties:
+  compatible:
+    const: linux,extcon-usb-gpio
+
+  id-gpios:
+    description: An input gpio for USB ID pin.
+    maxItems: 1
+
+  vbus-gpios:
+    description: An input gpio for USB VBus pin, used to detect presence of
+      VBUS 5V.
+    maxItems: 1
+
+required:
+  - compatible
+
+anyOf:
+  - required:
+      - id-gpios
+  - required:
+      - vbus-gpios
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    extcon-usb1 {
+      compatible = "linux,extcon-usb-gpio";
+      id-gpios = <&gpio6 1 GPIO_ACTIVE_HIGH>;
+      vbus-gpios = <&gpio6 2 GPIO_ACTIVE_HIGH>;
+    };
-- 
2.34.1

