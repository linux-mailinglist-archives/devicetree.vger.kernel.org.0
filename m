Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3FDFC5BA58B
	for <lists+devicetree@lfdr.de>; Fri, 16 Sep 2022 05:47:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229838AbiIPDrB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Sep 2022 23:47:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41872 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229708AbiIPDrA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Sep 2022 23:47:00 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EFAB39DB7D
        for <devicetree@vger.kernel.org>; Thu, 15 Sep 2022 20:46:58 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id u15-20020a05600c19cf00b003b4acef34b1so2422221wmq.4
        for <devicetree@vger.kernel.org>; Thu, 15 Sep 2022 20:46:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=CWfgBWveMGZ3OFHpZ5iY8ACRn5twe9rSOpL+VjeNUeU=;
        b=cqskegw4HUmtyOqzgYf+Yq+SxPhtgk5OTdsoTxN1OY7y6SkvGrw3KCZXovS1bdwE7f
         765qaFObjoI/rlTnsEksJCRrcXB3kEOoUoDA244CI5/8hc+Xc4Z6sgo8zU2wPgmcsH7C
         3QpMa2W9SUH1x/t82Z/kuQPlcEpCjvu2Go47M94o4qUwG62rGcZycVdI0EgZo9jgEbN8
         QbB+gdgT2VaaVEMQfhku3iOZ9X/jh4HADzyHBY8mIZKCJmIf6N5KW0wAVIgxsGf9WHSF
         l3AEGeXYCD7088q34t72KwbLotItHj6Cl8ShHXYVNg7U83enyx3nMLGtumFM9j0TDbqM
         om9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=CWfgBWveMGZ3OFHpZ5iY8ACRn5twe9rSOpL+VjeNUeU=;
        b=HUPdVoFI0LEZrYSGN/H0JEib/3Q/HOcwKQWKDO3oV1Zk2mX9UPa+NyD3DBdReWh2M8
         VllDNe9cJUSYudDqyWRlS8ek9vDtO7/yRGIHqEgb1G2Fs3l+08rp15fbPA9ebVaF7rWS
         SOCBcG8zyZOhJ6PB21njv8y9SaKQDsOzQbObhZ9UryGpRHDl9qBR/ptWT6GruHE9le65
         uk8XOaaAmLXExrC5lmy+jGISZIO3Xt4nV7qbqC+86NAGmL6WEN6906+cG6vmRhGNOQh1
         e10WTAInTvAvKkUamFv5Asmn/hP7o93IeG8xIOGW5T5HqMK5tyZ8UX59lUkdoqHHfpId
         aRHw==
X-Gm-Message-State: ACrzQf21r1UKwRDUwM1iw5xmiefWzlds8rPYVhwl7pIIHHklcVZw4Ax/
        17L+zyAileFF7CUl2SMIts4qK9Qbg/uw1/ZM
X-Google-Smtp-Source: AMsMyM5Y422BCLmPxhcZJRfAbR1d8Ri+sB6JhRzlyQ/wlkp1gd3+2SCIK6qNy69QyXEAPzZYbqPptA==
X-Received: by 2002:a05:600c:35cc:b0:3a6:f08:9b1 with SMTP id r12-20020a05600c35cc00b003a60f0809b1mr1826301wmq.22.1663300017121;
        Thu, 15 Sep 2022 20:46:57 -0700 (PDT)
Received: from localhost.localdomain (188.red-88-10-59.dynamicip.rima-tde.net. [88.10.59.188])
        by smtp.gmail.com with ESMTPSA id i17-20020a1c5411000000b003a63a3b55c3sm881816wmb.14.2022.09.15.20.46.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Sep 2022 20:46:56 -0700 (PDT)
From:   Sergio Paracuellos <sergio.paracuellos@gmail.com>
To:     devicetree@vger.kernel.org
Cc:     robh+dt@kernel.org, krzk+dt@kernel.org, arinc.unal@arinc9.com
Subject: [PATCH] dt-bindings: i2c: migrate mt7621 text bindings to YAML
Date:   Fri, 16 Sep 2022 05:46:55 +0200
Message-Id: <20220916034655.486996-1-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

SoC MT7621 I2C bindings used text format, so migrate them to YAML.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 .../devicetree/bindings/i2c/i2c-mt7621.txt    | 25 -------
 .../bindings/i2c/mediatek,mt7621-i2c.yaml     | 68 +++++++++++++++++++
 2 files changed, 68 insertions(+), 25 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/i2c/i2c-mt7621.txt
 create mode 100644 Documentation/devicetree/bindings/i2c/mediatek,mt7621-i2c.yaml

diff --git a/Documentation/devicetree/bindings/i2c/i2c-mt7621.txt b/Documentation/devicetree/bindings/i2c/i2c-mt7621.txt
deleted file mode 100644
index bc36f0eb94cd..000000000000
--- a/Documentation/devicetree/bindings/i2c/i2c-mt7621.txt
+++ /dev/null
@@ -1,25 +0,0 @@
-MediaTek MT7621/MT7628 I2C master controller
-
-Required properties:
-
-- compatible: Should be one of the following:
-  - "mediatek,mt7621-i2c": for MT7621/MT7628/MT7688 platforms
-- #address-cells: should be 1.
-- #size-cells: should be 0.
-- reg: Address and length of the register set for the device
-- resets: phandle to the reset controller asserting this device in
-          reset
-  See ../reset/reset.txt for details.
-
-Optional properties :
-
-Example:
-
-i2c: i2c@900 {
-	compatible = "mediatek,mt7621-i2c";
-	reg = <0x900 0x100>;
-	#address-cells = <1>;
-	#size-cells = <0>;
-	resets = <&rstctrl 16>;
-	reset-names = "i2c";
-};
diff --git a/Documentation/devicetree/bindings/i2c/mediatek,mt7621-i2c.yaml b/Documentation/devicetree/bindings/i2c/mediatek,mt7621-i2c.yaml
new file mode 100644
index 000000000000..4456be60f45e
--- /dev/null
+++ b/Documentation/devicetree/bindings/i2c/mediatek,mt7621-i2c.yaml
@@ -0,0 +1,68 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/i2c/mediatek,mt7621-i2c.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+maintainers:
+  - Sergio Paracuellos <sergio.paracuellos@gmail.com>
+
+title: Mediatek MT7621/MT7628 I2C master controller
+
+allOf:
+  - $ref: /schemas/i2c/i2c-controller.yaml#
+
+properties:
+  compatible:
+    const: mediatek,mt7621-i2c
+
+  reg:
+    maxItems: 1
+
+  '#address-cells':
+    const: 1
+
+  '#size-cells':
+    const: 0
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    const: i2c
+
+  resets:
+    maxItems: 1
+
+  reset-names:
+    const: i2c
+
+required:
+  - compatible
+  - reg
+  - resets
+  - reset-names
+  - "#address-cells"
+  - "#size-cells"
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/mt7621-clk.h>
+    #include <dt-bindings/reset/mt7621-reset.h>
+
+    i2c: i2c@900 {
+      compatible = "mediatek,mt7621-i2c";
+      reg = <0x900 0x100>;
+      clocks = <&sysc MT7621_CLK_I2C>;
+      clock-names = "i2c";
+      resets = <&sysc MT7621_RST_I2C>;
+      reset-names = "i2c";
+
+      #address-cells = <1>;
+      #size-cells = <0>;
+
+      pinctrl-names = "default";
+      pinctrl-0 = <&i2c_pins>;
+    };
-- 
2.25.1

