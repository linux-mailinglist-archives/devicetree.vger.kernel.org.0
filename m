Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 796E165D4E8
	for <lists+devicetree@lfdr.de>; Wed,  4 Jan 2023 15:05:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235011AbjADOE6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Jan 2023 09:04:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58746 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234735AbjADOEz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 Jan 2023 09:04:55 -0500
Received: from smtp-out-08.comm2000.it (smtp-out-08.comm2000.it [212.97.32.78])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3383818B18
        for <devicetree@vger.kernel.org>; Wed,  4 Jan 2023 06:04:44 -0800 (PST)
Received: from francesco-nb.toradex.int (31-10-206-125.static.upc.ch [31.10.206.125])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: francesco@dolcini.it)
        by smtp-out-08.comm2000.it (Postfix) with ESMTPSA id CED02421F19;
        Wed,  4 Jan 2023 15:04:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailserver.it;
        s=mailsrv; t=1672841081;
        bh=u8FK9CPIvJPseM0rmgjjenWelwK6ei1bF0xBEbbYaB8=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References;
        b=EehzkHgvQTszRTilSND2IPObvhaqsIB6v1Uk1rmQVcH3nMRARMSgG6Tjjsn8BZmZN
         f7GgfwS+44zoRTprtNj0wpUYlt3oQRbue8ja7g9N7oexvBVVsNOfnenacM6VMdRwwT
         S3F3LBjV0YMpKYFLZ3WopcekcvyYemHF+g64wNJPo68GuHMdVmL9ioxUF9FjfIOvp7
         Ma4pEllSd+4TEBZQouI0vOfbQtGvDEn2P/B/SDmpPcgxxQWnaw4OtYxFdh4wHm/VqJ
         PYYDNqBQJWFmM4+1ZyGmNiBWMvF4I9FNYhKLfkQD7HvU1k6Nf/nvviMUMJGVFr/80d
         x0U2wabqxtU/w==
From:   Francesco Dolcini <francesco@dolcini.it>
To:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org
Cc:     Emanuele Ghidoli <emanuele.ghidoli@toradex.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>,
        Benjamin Marty <info@benjaminmarty.ch>, kchsu0@nuvoton.com,
        wtli@nuvoton.com, David Lin <CTLIN0@nuvoton.com>,
        Francesco Dolcini <francesco.dolcini@toradex.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 1/3] ASoC: dt-bindings: nau8822: convert to the dtschema
Date:   Wed,  4 Jan 2023 15:04:10 +0100
Message-Id: <20230104140412.35575-2-francesco@dolcini.it>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230104140412.35575-1-francesco@dolcini.it>
References: <20230104140412.35575-1-francesco@dolcini.it>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Emanuele Ghidoli <emanuele.ghidoli@toradex.com>

Convert nau8822 devicetree binding to dtschema.
Change file name to match dtschema naming.

Cc: David Lin <CTLIN0@nuvoton.com>
Signed-off-by: Emanuele Ghidoli <emanuele.ghidoli@toradex.com>
Signed-off-by: Francesco Dolcini <francesco.dolcini@toradex.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
v2:
 - added Reviewed-by: Krzysztof
 - removed sentence on SPI being not supported
---
 .../devicetree/bindings/sound/nau8822.txt     | 16 --------
 .../bindings/sound/nuvoton,nau8822.yaml       | 40 +++++++++++++++++++
 2 files changed, 40 insertions(+), 16 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/sound/nau8822.txt
 create mode 100644 Documentation/devicetree/bindings/sound/nuvoton,nau8822.yaml

diff --git a/Documentation/devicetree/bindings/sound/nau8822.txt b/Documentation/devicetree/bindings/sound/nau8822.txt
deleted file mode 100644
index a471d162d4e5..000000000000
--- a/Documentation/devicetree/bindings/sound/nau8822.txt
+++ /dev/null
@@ -1,16 +0,0 @@
-NAU8822 audio CODEC
-
-This device supports I2C only.
-
-Required properties:
-
-  - compatible : "nuvoton,nau8822"
-
-  - reg : the I2C address of the device.
-
-Example:
-
-codec: nau8822@1a {
-	compatible = "nuvoton,nau8822";
-	reg = <0x1a>;
-};
diff --git a/Documentation/devicetree/bindings/sound/nuvoton,nau8822.yaml b/Documentation/devicetree/bindings/sound/nuvoton,nau8822.yaml
new file mode 100644
index 000000000000..2810924e3a47
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/nuvoton,nau8822.yaml
@@ -0,0 +1,40 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/nuvoton,nau8822.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NAU8822 audio CODEC
+
+description: |
+  24 bit stereo audio codec with speaker driver.
+  This device supports I2C/SPI.
+
+maintainers:
+  - David Lin <CTLIN0@nuvoton.com>
+
+properties:
+  compatible:
+    enum:
+      - nuvoton,nau8822
+
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        codec@1a {
+            compatible = "nuvoton,nau8822";
+            reg = <0x1a>;
+        };
+    };
-- 
2.25.1

