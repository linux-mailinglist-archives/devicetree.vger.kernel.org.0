Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 700F685D52
	for <lists+devicetree@lfdr.de>; Thu,  8 Aug 2019 10:51:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731499AbfHHIvs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Aug 2019 04:51:48 -0400
Received: from mail-wr1-f68.google.com ([209.85.221.68]:35011 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731488AbfHHIvs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Aug 2019 04:51:48 -0400
Received: by mail-wr1-f68.google.com with SMTP id k2so8221621wrq.2
        for <devicetree@vger.kernel.org>; Thu, 08 Aug 2019 01:51:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=UMr8GdCW9yfg8pfq5s4VUilxc4J32ByvgFAWlbIwziA=;
        b=GAjRm4BIvFiMLvxxckU19EerTOdrWD/DbpRVQblgyxBc//HBD/l0BkqMcR16piV4IO
         23hiMBcxj8MPnC+VPXMJaH0tNpjQD+XJAWuRmiBzuZrWW12QOgoUO1suPYqqjQwY0Ur9
         xpMiAJDZN0YwOfdKI0Ph6nFfWtAePtNwZJ696E2V3APDjqOV45moCIX/SZTuIOXr9AUq
         n7yTmcT9/QI+PGt0INU1Q8VTlDf0hHChAX/KCG0c1bNtAgKne7Kt9M0+PwefHDVsH/Gd
         g9POH73jTmCuy7dR04Gji5eBcOJNRhiPx4SiaKdlLf+AJi+NkZGiWNWef1ujiHpD3Bje
         +ysA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=UMr8GdCW9yfg8pfq5s4VUilxc4J32ByvgFAWlbIwziA=;
        b=bPsnCAV9QQTZT9o5gVMKdjwVLu8jRS7AS/IKeCYFPsqfjcz02qvrjF+Gy0fUlMdAL8
         dCKjI3yBsc+MWw64sSVHMCXOSPNhTD9hDn11XJT3xEChvuT9L1XU51/LSLF5G0//qwY+
         nTOAfm5ot36Vb9U+lOowGl9pxva9XvaDvz1fU/OgwSQ04U873nMmRbxXdI+M9wCHkVns
         dM11SRz/Z71xakk9VghWC6VZEHhLEvOJWUflvxRMxeWPKldJp3ODhooPxyWeqBLIiXmO
         Lv4QG3SgeEyKn9XTiBRNCKzuz5r3w7x6BXgripwe5IAYw2WSyC2ZPE2K04lYn2pLziWS
         TLjA==
X-Gm-Message-State: APjAAAUAsrC3nA+TKMdVgFcsxOCrLaEaP+O5TMK87eeLNAvvPv8c7YDW
        BofJvC4Ev1Ye8+H2+3yC+eOwgw==
X-Google-Smtp-Source: APXvYqy6qwAlUrF5yzh6QDHSjyGkHiMc8eckATg+XKrl0xTf0XBl00GIzwIiI9AxNOmyUvHOsUMv9Q==
X-Received: by 2002:adf:b612:: with SMTP id f18mr15997677wre.97.1565254305808;
        Thu, 08 Aug 2019 01:51:45 -0700 (PDT)
Received: from bender.baylibre.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id i66sm3360031wmi.11.2019.08.08.01.51.45
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Thu, 08 Aug 2019 01:51:45 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     robh+dt@kernel.org
Cc:     Neil Armstrong <narmstrong@baylibre.com>,
        linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Rob Herring <robh@kernel.org>
Subject: [PATCH 5/9] dt-bindings: arm: amlogic: amlogic,meson-gx-ao-secure: convert to yaml
Date:   Thu,  8 Aug 2019 10:51:35 +0200
Message-Id: <20190808085139.21438-6-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190808085139.21438-1-narmstrong@baylibre.com>
References: <20190808085139.21438-1-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Now that we have the DT validation in place, let's convert the device tree
bindings for the Amlogic Always-On Secure Registers over to a YAML schemas.

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../amlogic/amlogic,meson-gx-ao-secure.txt    | 28 ----------
 .../amlogic/amlogic,meson-gx-ao-secure.yaml   | 52 +++++++++++++++++++
 2 files changed, 52 insertions(+), 28 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/amlogic/amlogic,meson-gx-ao-secure.txt
 create mode 100644 Documentation/devicetree/bindings/arm/amlogic/amlogic,meson-gx-ao-secure.yaml

diff --git a/Documentation/devicetree/bindings/arm/amlogic/amlogic,meson-gx-ao-secure.txt b/Documentation/devicetree/bindings/arm/amlogic/amlogic,meson-gx-ao-secure.txt
deleted file mode 100644
index c67d9f48fb91..000000000000
--- a/Documentation/devicetree/bindings/arm/amlogic/amlogic,meson-gx-ao-secure.txt
+++ /dev/null
@@ -1,28 +0,0 @@
-Amlogic Meson Firmware registers Interface
-------------------------------------------
-
-The Meson SoCs have a register bank with status and data shared with the
-secure firmware.
-
-Required properties:
- - compatible: For Meson GX SoCs, must be "amlogic,meson-gx-ao-secure", "syscon"
-
-Properties should indentify components of this register interface :
-
-Meson GX SoC Information
-------------------------
-A firmware register encodes the SoC type, package and revision information on
-the Meson GX SoCs.
-If present, the following property should be added :
-
-Optional properties:
-  - amlogic,has-chip-id: If present, the interface gives the current SoC version.
-
-Example
--------
-
-ao-secure@140 {
-	compatible = "amlogic,meson-gx-ao-secure", "syscon";
-	reg = <0x0 0x140 0x0 0x140>;
-	amlogic,has-chip-id;
-};
diff --git a/Documentation/devicetree/bindings/arm/amlogic/amlogic,meson-gx-ao-secure.yaml b/Documentation/devicetree/bindings/arm/amlogic/amlogic,meson-gx-ao-secure.yaml
new file mode 100644
index 000000000000..853d7d2b56f5
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/amlogic/amlogic,meson-gx-ao-secure.yaml
@@ -0,0 +1,52 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright 2019 BayLibre, SAS
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/arm/amlogic/amlogic,meson-gx-ao-secure.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Amlogic Meson Firmware registers Interface
+
+maintainers:
+  - Neil Armstrong <narmstrong@baylibre.com>
+
+description: |
+  The Meson SoCs have a register bank with status and data shared with the
+  secure firmware.
+
+# We need a select here so we don't match all nodes with 'syscon'
+select:
+  properties:
+    compatible:
+      contains:
+        const: amlogic,meson-gx-ao-secure
+  required:
+    - compatible
+
+properties:
+  compatible:
+   items:
+      - const: amlogic,meson-gx-ao-secure
+      - const: syscon
+
+  reg:
+    maxItems: 1
+
+  amlogic,has-chip-id:
+    description: |
+      A firmware register encodes the SoC type, package and revision
+      information on the Meson GX SoCs. If present, the interface gives
+      the current SoC version.
+    type: boolean
+
+required:
+  - compatible
+  - reg
+
+examples:
+  - |
+    ao-secure@140 {
+          compatible = "amlogic,meson-gx-ao-secure", "syscon";
+          reg = <0x140 0x140>;
+          amlogic,has-chip-id;
+    };
-- 
2.22.0

