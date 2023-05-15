Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C3B4E702096
	for <lists+devicetree@lfdr.de>; Mon, 15 May 2023 00:53:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229800AbjENWxF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 14 May 2023 18:53:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40098 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229710AbjENWxF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 14 May 2023 18:53:05 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8B5501B8
        for <devicetree@vger.kernel.org>; Sun, 14 May 2023 15:53:03 -0700 (PDT)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id C315182721;
        Mon, 15 May 2023 00:53:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1684104781;
        bh=8278qfdJLJmGtt8Qh8DdNJl3+DEkpTOnmYeoRqtPpVE=;
        h=From:To:Cc:Subject:Date:From;
        b=thXosdtWLiUzrK6qj/LqkEC3wkbR24ZbBjpH3YWkVXwG7TA8/7uABBHglju9AwABM
         +vK3Ya24/Fe0vBLUGWm11OVT7rSSXLZRudleUMDnBfUQJjSAB/EDye/3eYJzG6fj/I
         qyNSRV74bV6a79+yN5l0qR/Qqvtl0edRTtDY68Vz82+fl9gb1k7q+Q0m3TCEf5txnu
         Fn2lSVRMIp0KZIcJJu0dzo5oxCuX8Ss6pIAjckJGyT2h0tt8v3d7TGVgfx5peKvuvN
         1WruRPAJMVl+DzCE9rPSUEaE4UBP4FImVbDDEocwP6YWUeqrFeOpP7XhXpNc6wJRoB
         C5cd5x0ziYJIw==
From:   Marek Vasut <marex@denx.de>
To:     devicetree@vger.kernel.org
Cc:     Marek Vasut <marex@denx.de>, Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, alsa-devel@alsa-project.org
Subject: [PATCH] ASoC: dt-bindings: ssm2518: Convert to dtschema
Date:   Mon, 15 May 2023 00:52:43 +0200
Message-Id: <20230514225243.777504-1-marex@denx.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert the ADI SSM2518 audio CODEC bindings to DT schema.

Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Lars-Peter Clausen <lars@metafoo.de>
Cc: Liam Girdwood <lgirdwood@gmail.com>
Cc: Mark Brown <broonie@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: alsa-devel@alsa-project.org
Cc: devicetree@vger.kernel.org
---
 .../bindings/sound/adi,ssm2518.yaml           | 47 +++++++++++++++++++
 .../devicetree/bindings/sound/ssm2518.txt     | 20 --------
 2 files changed, 47 insertions(+), 20 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/sound/adi,ssm2518.yaml
 delete mode 100644 Documentation/devicetree/bindings/sound/ssm2518.txt

diff --git a/Documentation/devicetree/bindings/sound/adi,ssm2518.yaml b/Documentation/devicetree/bindings/sound/adi,ssm2518.yaml
new file mode 100644
index 0000000000000..f3f32540779c6
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/adi,ssm2518.yaml
@@ -0,0 +1,47 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/adi,ssm2518.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Analog Devices SSM2518 audio amplifier
+
+maintainers:
+  - Lars-Peter Clausen <lars@metafoo.de>
+
+allOf:
+  - $ref: dai-common.yaml#
+
+properties:
+  compatible:
+    const: adi,ssm2518
+
+  reg:
+    maxItems: 1
+    description: |
+       I2C address of the device. This will either be 0x34 (ADDR pin low)
+       or 0x35 (ADDR pin high)
+
+  gpios:
+    maxItems: 1
+    description: |
+       GPIO connected to the nSD pin. If the property is not present
+       it is assumed that the nSD pin is hardwired to always on.
+
+required:
+  - compatible
+  - reg
+
+unevaluatedProperties: false
+
+examples:
+  - |
+   i2c {
+     #address-cells = <1>;
+     #size-cells = <0>;
+     codec@34 {
+       compatible = "adi,ssm2518";
+       reg = <0x34>;
+       gpios = <&gpio 5 0>;
+     };
+   };
diff --git a/Documentation/devicetree/bindings/sound/ssm2518.txt b/Documentation/devicetree/bindings/sound/ssm2518.txt
deleted file mode 100644
index 59381a778c797..0000000000000
--- a/Documentation/devicetree/bindings/sound/ssm2518.txt
+++ /dev/null
@@ -1,20 +0,0 @@
-SSM2518 audio amplifier
-
-This device supports I2C only.
-
-Required properties:
-  - compatible : Must be "adi,ssm2518"
-  - reg : the I2C address of the device. This will either be 0x34 (ADDR pin low)
-	or 0x35 (ADDR pin high)
-
-Optional properties:
-  - gpios : GPIO connected to the nSD pin. If the property is not present it is
-	        assumed that the nSD pin is hardwired to always on.
-
-Example:
-
-	ssm2518: ssm2518@34 {
-		compatible = "adi,ssm2518";
-		reg = <0x34>;
-		gpios = <&gpio 5 0>;
-	};
-- 
2.39.2

