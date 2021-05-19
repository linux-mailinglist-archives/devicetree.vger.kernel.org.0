Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 69D5538937F
	for <lists+devicetree@lfdr.de>; Wed, 19 May 2021 18:18:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1355156AbhESQUN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 May 2021 12:20:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38628 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346313AbhESQUM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 May 2021 12:20:12 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 00201C06175F
        for <devicetree@vger.kernel.org>; Wed, 19 May 2021 09:18:51 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id q5so14642354wrs.4
        for <devicetree@vger.kernel.org>; Wed, 19 May 2021 09:18:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=llPfZ8AOPilzKmViev4XTbmhiuGiojY0tKb8nEMUYB4=;
        b=YpumUkT2zhUhb1gcFON7vhnOA6X+5Sc0KNC5HjSjNRgyCNI122racDg6XFNc5l6psP
         G1TV099JaWISOPvAoo6zW4/kbkKFp7KMqc1WKIIRRB1lgp2AIUmW8kKHa5F65Zj0Su0x
         peumpe9ZTdBGm1CCLnpKK0jpgmMlHbROIf108f3gXbrEO5MxZR4kVnsNXyFusDdb3Gjh
         ZEzpZTUW1T7g23c9FbHRQwg0PyFj8FSB2u2aaKjmlhXtTqD5pAUmBfhr32A4WDZRJMQO
         pQs38URDfHtMqlVagVLQfPW1H//NtNp2LhulTCU27QoB7Ktdpiygp30XGBL5p3nMqA3/
         +6lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=llPfZ8AOPilzKmViev4XTbmhiuGiojY0tKb8nEMUYB4=;
        b=M/ZRCubnUWKV+iLTC2FlklOZjH1p2dPopJ3dLlbmiMwmX8SYe/s3cM+SNBmNVIlTp7
         LEZL6eccl7AD5ddRs0KQ32XTMgPhbDJ2iHJPkAMfhYWOVNS7OU7LgzExyClpxHHkmDI1
         ius9BSIEgKIcnXgbxOthI5NfpbukX5poGV7ZZKiXEXUgD2ikq0ne2DSEcpA89LLsId1c
         RZ9Yf63kKS60zr0FcF9kTiB5zpVDvlNsU0SoufT85lVvT7KQvIYaR5Wm1Bot7X33HlUn
         apxaJiKQyrUCL8KxUWk/X2P5otAD4eK628IIDsX92dInoxkYGsfjsL7QUjbIJjNJ6Lwy
         1Ptw==
X-Gm-Message-State: AOAM533VUK+pIt2cQzBD99G4RnnTmwh7cYN/4GUrwAPDi0tgM9S9f7GY
        9p705u++R2Udm6cRbEC7VTzbBQ==
X-Google-Smtp-Source: ABdhPJy53K9D1kmFCUpC/PIf+b5cYVmChTkcnu+yAIk6l/+kiu3PmLWiqS1kjyM5UzZgnnvapssAuA==
X-Received: by 2002:adf:f9ce:: with SMTP id w14mr15784947wrr.387.1621441130604;
        Wed, 19 May 2021 09:18:50 -0700 (PDT)
Received: from localhost.localdomain ([88.160.162.107])
        by smtp.gmail.com with ESMTPSA id m9sm5638547wmq.40.2021.05.19.09.18.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 May 2021 09:18:50 -0700 (PDT)
From:   Fabien Parent <fparent@baylibre.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     mkorpershoek@baylibre.com, Fabien Parent <fparent@baylibre.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
Subject: [PATCH 1/3] dt-bindings: arm: mediatek: mmsys: convert to YAML format
Date:   Wed, 19 May 2021 18:18:44 +0200
Message-Id: <20210519161847.3747352-1-fparent@baylibre.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert the mmsys bindings to the YAML format.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---
 .../bindings/arm/mediatek/mediatek,mmsys.txt  | 31 ----------
 .../bindings/arm/mediatek/mediatek,mmsys.yaml | 57 +++++++++++++++++++
 2 files changed, 57 insertions(+), 31 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/mediatek/mediatek,mmsys.txt
 create mode 100644 Documentation/devicetree/bindings/arm/mediatek/mediatek,mmsys.yaml

diff --git a/Documentation/devicetree/bindings/arm/mediatek/mediatek,mmsys.txt b/Documentation/devicetree/bindings/arm/mediatek/mediatek,mmsys.txt
deleted file mode 100644
index 78c50733985c..000000000000
--- a/Documentation/devicetree/bindings/arm/mediatek/mediatek,mmsys.txt
+++ /dev/null
@@ -1,31 +0,0 @@
-Mediatek mmsys controller
-============================
-
-The Mediatek mmsys system controller provides clock control, routing control,
-and miscellaneous control in mmsys partition.
-
-Required Properties:
-
-- compatible: Should be one of:
-	- "mediatek,mt2701-mmsys", "syscon"
-	- "mediatek,mt2712-mmsys", "syscon"
-	- "mediatek,mt6765-mmsys", "syscon"
-	- "mediatek,mt6779-mmsys", "syscon"
-	- "mediatek,mt6797-mmsys", "syscon"
-	- "mediatek,mt7623-mmsys", "mediatek,mt2701-mmsys", "syscon"
-	- "mediatek,mt8167-mmsys", "syscon"
-	- "mediatek,mt8173-mmsys", "syscon"
-	- "mediatek,mt8183-mmsys", "syscon"
-- #clock-cells: Must be 1
-
-For the clock control, the mmsys controller uses the common clk binding from
-Documentation/devicetree/bindings/clock/clock-bindings.txt
-The available clocks are defined in dt-bindings/clock/mt*-clk.h.
-
-Example:
-
-mmsys: syscon@14000000 {
-	compatible = "mediatek,mt8173-mmsys", "syscon";
-	reg = <0 0x14000000 0 0x1000>;
-	#clock-cells = <1>;
-};
diff --git a/Documentation/devicetree/bindings/arm/mediatek/mediatek,mmsys.yaml b/Documentation/devicetree/bindings/arm/mediatek/mediatek,mmsys.yaml
new file mode 100644
index 000000000000..a419da33e10b
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/mediatek/mediatek,mmsys.yaml
@@ -0,0 +1,57 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/arm/mediatek/mediatek,mmsys.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: MediaTek mmsys controller
+
+maintainers:
+  - Matthias Brugger <matthias.bgg@gmail.com>
+
+description:
+  The MediaTek mmsys system controller provides clock control, routing control,
+  and miscellaneous control in mmsys partition.
+
+properties:
+  $nodename:
+    pattern: "^syscon@[0-9a-f]+$"
+
+  compatible:
+    oneOf:
+      - items:
+          - enum:
+              - mediatek,mt2701-mmsys
+              - mediatek,mt2712-mmsys
+              - mediatek,mt6765-mmsys
+              - mediatek,mt6779-mmsys
+              - mediatek,mt6797-mmsys
+              - mediatek,mt8167-mmsys
+              - mediatek,mt8173-mmsys
+              - mediatek,mt8183-mmsys
+          - const: syscon
+      - items:
+          - const: mediatek,mt7623-mmsys
+          - const: mediatek,mt2701-mmsys
+          - const: syscon
+
+  reg:
+    maxItems: 1
+
+  "#clock-cells":
+    const: 1
+
+required:
+  - compatible
+  - reg
+  - "#clock-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    mmsys: syscon@14000000 {
+        compatible = "mediatek,mt8173-mmsys", "syscon";
+        reg = <0x14000000 0x1000>;
+        #clock-cells = <1>;
+    };
-- 
2.31.1

