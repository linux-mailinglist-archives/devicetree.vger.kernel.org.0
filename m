Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8BAB24E77D7
	for <lists+devicetree@lfdr.de>; Fri, 25 Mar 2022 16:37:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1353787AbiCYPgI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Mar 2022 11:36:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49214 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1378527AbiCYPex (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Mar 2022 11:34:53 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A5232BF5C
        for <devicetree@vger.kernel.org>; Fri, 25 Mar 2022 08:33:17 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id BD819B828F6
        for <devicetree@vger.kernel.org>; Fri, 25 Mar 2022 15:33:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E1895C340F3;
        Fri, 25 Mar 2022 15:33:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1648222394;
        bh=2n8SZxW/c+uKNScbsLPpkBSsbkkXDn51crnHh0yts1w=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=F26rIHztqZl9eGZku9QIjKCIILKpD+fw6vTwrZ7eNUVjwrYnavFhOqv/3coM+4Yc3
         /797kFY7Qg+DJJY+V1fluQZkS4xHGG2eSJNo9VPN20FJ/OMNu8Aldb3FciJ9WsDqVZ
         RGtPG8Te4VDMRbsWQr3Cqzuh6UTxlAnaR2tCw3Bb34hdEZyflqNdqGuaUAwn4jybkd
         ipumTHsCKzJz51MiA8cbEwndU1Tb8oyiTCDZANPYl3OmpK0gwkrbbe1fAmohaRqNkB
         q2PjBCgcCatgV+WGniGSZFFzzDTJyLoW4vlYLbsXkOTvdtuqWPQ52YmaJ5z1D9dRjF
         F6zuohaxwd+nQ==
From:   Mark Brown <broonie@kernel.org>
To:     Liam Girdwood <lgirdwood@gmail.com>
Cc:     alsa-devel@alsa-project.org, patches@opensource.cirrus.com,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v1 6/7] ASoC: wm8731: Convert DT bindings to YAML format
Date:   Fri, 25 Mar 2022 15:31:20 +0000
Message-Id: <20220325153121.1598494-7-broonie@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220325153121.1598494-1-broonie@kernel.org>
References: <20220325153121.1598494-1-broonie@kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=4272; h=from:subject; bh=2n8SZxW/c+uKNScbsLPpkBSsbkkXDn51crnHh0yts1w=; b=owEBbQGS/pANAwAKASTWi3JdVIfQAcsmYgBiPeBHO9ZXU/9OFKM3UQF17aC9qjtZqidSyQ+uGa4a /kxT82uJATMEAAEKAB0WIQSt5miqZ1cYtZ/in+ok1otyXVSH0AUCYj3gRwAKCRAk1otyXVSH0NzSCA CDv94myW3KiuJnWu2P+bkOK3LKLY+xHrIVubeIzbMFzM8690rO0XC0AmGSE/DqwGrXeIQgAyN7+SU5 vvXcfXJaX0PZRVoSyyYxKwvYmwYGbgdAL/0imsXfLGNK6UMzOsICZOb6L63EymfcREY5dSllHu+AOf LrIYmeWQLHDWK2Q2IgNOZQYQvpiyFYf2r4jWO6T1vtyuGGP3pELVl9fUso9mijJcww3DlR/5MW74mN Rj0D3BgkbaDT7SjHt6jwAM77/9RIXmkJuLkqlBMiQrUqMAWkp02TxGkFyTRBlfK2bSV49wpTqLUPN0 C8GjXYaAxTQEUl2EKcnha3IKDx0IRl
X-Developer-Key: i=broonie@kernel.org; a=openpgp; fpr=3F2568AAC26998F9E813A1C5C3F436CA30F5D8EB
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-8.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert the WM8731 DT bindings to YAML format, including addition of
documentation for the regulator and clock bindings which the driver has
had for some time but which were not covered in the bindings document.

Signed-off-by: Mark Brown <broonie@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: devicetree@vger.kernel.org
---
 .../devicetree/bindings/sound/wlf,wm8731.yaml | 97 +++++++++++++++++++
 .../devicetree/bindings/sound/wm8731.txt      | 27 ------
 2 files changed, 97 insertions(+), 27 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/sound/wlf,wm8731.yaml
 delete mode 100644 Documentation/devicetree/bindings/sound/wm8731.txt

diff --git a/Documentation/devicetree/bindings/sound/wlf,wm8731.yaml b/Documentation/devicetree/bindings/sound/wlf,wm8731.yaml
new file mode 100644
index 000000000000..e7220e8b49f0
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/wlf,wm8731.yaml
@@ -0,0 +1,97 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/wlf,wm8731.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Wolfson Microelectromics WM8731 audio CODEC
+
+maintainers:
+  - patches@opensource.cirrus.com
+
+description: |
+  Wolfson Microelectronics WM8731 audio CODEC
+
+  Pins on the device (for linking into audio routes):
+    * LOUT: Left Channel Line Output
+    * ROUT: Right Channel Line Output
+    * LHPOUT: Left Channel Headphone Output
+    * RHPOUT: Right Channel Headphone Output
+    * LLINEIN: Left Channel Line Input
+    * RLINEIN: Right Channel Line Input
+    * MICIN: Microphone Input
+
+properties:
+  compatible:
+    enum:
+      - wlf,wm8731
+
+  reg:
+    maxItems: 1
+
+  "#sound-dai-cells":
+    const: 0
+
+  clocks:
+    description: Clock provider for MCLK pin.
+    maxItems: 1
+
+  clock-names:
+    items:
+      - const: mclk
+
+  AVDD-supply:
+    description: Analog power supply regulator on the AVDD pin.
+
+  HPVDD-supply:
+    description: Headphone power supply regulator on the HPVDD pin.
+
+  DBVDD-supply:
+    description: Digital buffer supply regulator for the DBVDD pin.
+
+  DCVDD-supply:
+    description: Digital core supply regulator for the DCVDD pin.
+
+  spi-max-frequency: true
+
+additionalProperties: false
+
+required:
+  - reg
+  - compatible
+  - AVDD-supply
+  - HPVDD-supply
+  - DBVDD-supply
+  - DCVDD-supply
+
+examples:
+  - |
+    spi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+        wm8731_i2c: codec@0 {
+            compatible = "wlf,wm8731";
+            reg = <0>;
+            spi-max-frequency = <12500000>;
+
+            AVDD-supply = <&avdd_reg>;
+            HPVDD-supply = <&hpvdd_reg>;
+            DCVDD-supply = <&dcvdd_reg>;
+            DBVDD-supply = <&dbvdd_reg>;
+        };
+    };
+  - |
+
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+        wm8731_spi: codec@1b {
+            compatible = "wlf,wm8731";
+            reg = <0x1b>;
+
+            AVDD-supply = <&avdd_reg>;
+            HPVDD-supply = <&hpvdd_reg>;
+            DCVDD-supply = <&dcvdd_reg>;
+            DBVDD-supply = <&dbvdd_reg>;
+        };
+    };
diff --git a/Documentation/devicetree/bindings/sound/wm8731.txt b/Documentation/devicetree/bindings/sound/wm8731.txt
deleted file mode 100644
index f660d9bb0e69..000000000000
--- a/Documentation/devicetree/bindings/sound/wm8731.txt
+++ /dev/null
@@ -1,27 +0,0 @@
-WM8731 audio CODEC
-
-This device supports both I2C and SPI (configured with pin strapping
-on the board).
-
-Required properties:
-
-  - compatible : "wlf,wm8731"
-
-  - reg : the I2C address of the device for I2C, the chip select
-          number for SPI.
-
-Example:
-
-wm8731: codec@1a {
-	compatible = "wlf,wm8731";
-	reg = <0x1a>;
-};
-
-Available audio endpoints for an audio-routing table:
- * LOUT: Left Channel Line Output
- * ROUT: Right Channel Line Output
- * LHPOUT: Left Channel Headphone Output
- * RHPOUT: Right Channel Headphone Output
- * LLINEIN: Left Channel Line Input
- * RLINEIN: Right Channel Line Input
- * MICIN: Microphone Input
-- 
2.30.2

