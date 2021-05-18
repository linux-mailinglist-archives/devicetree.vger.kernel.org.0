Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7C179387760
	for <lists+devicetree@lfdr.de>; Tue, 18 May 2021 13:23:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243254AbhERLYc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 May 2021 07:24:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40230 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233348AbhERLYS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 May 2021 07:24:18 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 06719C061756
        for <devicetree@vger.kernel.org>; Tue, 18 May 2021 04:23:00 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id i17so9761745wrq.11
        for <devicetree@vger.kernel.org>; Tue, 18 May 2021 04:22:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=DCCqrr8wK9Z3oX5rCaA/n2nKsKJmS6s8+5KqyY7fBB4=;
        b=ADRUVcjfyh7wZo3ai7Jq+kamkrpn1NhqE2Uw9xnl7FpO6NO3acOJ188VsHlZh4yXed
         aBMn0Mg9z1PGgva7uPUyTXObcFMPAL7XkomDwf1ygn6kCsZ2P/FqRF8QQE9LmKVEebBD
         BWdo60LPPy42Ak5WblviNwa40W0eUHs1VlDY8voDaWXGRP3rVnz68rAY5HfXXeHF97+c
         /hIYla5G5VSW6srZin6MsA4xVbPUY5D+lfKTanbB5tYkHmQq10mdAvHoH6YBefBOoCaX
         1eKuuhHEdjbNcVuoQfAJkPCqwwHlsRi6W+7GPWVjU31bmXaatCxQe5qZmgCRaDwWNZ9h
         lIzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=DCCqrr8wK9Z3oX5rCaA/n2nKsKJmS6s8+5KqyY7fBB4=;
        b=Ps0NdQXH0oqSMSfX1rP+JOvieOmvj8GepxnwPHXK9yraLtBy+yvp0PDsWDi3P7BumP
         Hs/NGweCKJ1NqEULPL2SfYBvSNT/uoDul7fkxCiATpokMtN+J+qYNUDymobw4hipY/LC
         V5eUx9dxjGdfft/7RBE4f1Qqqskv/kPMCJah6JtX6WNg9geFVWfq0WOJxuR0EzEUE2E2
         Jga9rVuglEXgluOF+kfoWvbGT0tM1iAuWiVFhjrwyG9NPzvYgbNyqRvCBRWij+dJa5xr
         WWQFH/sUg0oFSx+XNAlb9uLj5RlYPADf3FkKSDp6WIqxemAgaceUpXrofm3oKZp8M0iH
         WFvw==
X-Gm-Message-State: AOAM533bRqRJBMslBwtJnqGqvFQfIOp9dJzASxOKDQnHBVpwHmCg++ik
        16ldCIOIXsg4SLqRMiW3gjR2/w==
X-Google-Smtp-Source: ABdhPJzWfBKWSIvh12WRInRFuIbcscfo06bwrlqRgQ6iVnYGxH1e0APjYYd/RYQzdnFUMzyG5/s2Zg==
X-Received: by 2002:a5d:45c6:: with SMTP id b6mr6217248wrs.333.1621336978698;
        Tue, 18 May 2021 04:22:58 -0700 (PDT)
Received: from localhost.localdomain ([88.160.162.107])
        by smtp.gmail.com with ESMTPSA id y20sm2881337wmi.0.2021.05.18.04.22.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 May 2021 04:22:58 -0700 (PDT)
From:   Fabien Parent <fparent@baylibre.com>
To:     Matt Mackall <mpm@selenic.com>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Sean Wang <sean.wang@mediatek.com>
Cc:     mkorpershoek@baylibre.com, Fabien Parent <fparent@baylibre.com>,
        linux-crypto@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: rng: mediatek: convert to yaml schema
Date:   Tue, 18 May 2021 13:22:49 +0200
Message-Id: <20210518112250.2146819-1-fparent@baylibre.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert the RNG binding for MediaTek to use YAML schema.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---
 .../devicetree/bindings/rng/mtk-rng.txt       | 22 --------
 .../devicetree/bindings/rng/mtk-rng.yaml      | 53 +++++++++++++++++++
 2 files changed, 53 insertions(+), 22 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/rng/mtk-rng.txt
 create mode 100644 Documentation/devicetree/bindings/rng/mtk-rng.yaml

diff --git a/Documentation/devicetree/bindings/rng/mtk-rng.txt b/Documentation/devicetree/bindings/rng/mtk-rng.txt
deleted file mode 100644
index dfdcb5cd2ea8..000000000000
--- a/Documentation/devicetree/bindings/rng/mtk-rng.txt
+++ /dev/null
@@ -1,22 +0,0 @@
-Device-Tree bindings for Mediatek random number generator
-found in MediaTek SoC family
-
-Required properties:
-- compatible	    : Should be
-			"mediatek,mt7622-rng", 	"mediatek,mt7623-rng" : for MT7622
-			"mediatek,mt7629-rng",  "mediatek,mt7623-rng" : for MT7629
-			"mediatek,mt7623-rng" : for MT7623
-			"mediatek,mt8516-rng", "mediatek,mt7623-rng" : for MT8516
-- clocks	    : list of clock specifiers, corresponding to
-		      entries in clock-names property;
-- clock-names	    : Should contain "rng" entries;
-- reg 		    : Specifies base physical address and size of the registers
-
-Example:
-
-rng: rng@1020f000 {
-	compatible = "mediatek,mt7623-rng";
-	reg = <0 0x1020f000 0 0x1000>;
-	clocks = <&infracfg CLK_INFRA_TRNG>;
-	clock-names = "rng";
-};
diff --git a/Documentation/devicetree/bindings/rng/mtk-rng.yaml b/Documentation/devicetree/bindings/rng/mtk-rng.yaml
new file mode 100644
index 000000000000..d9731f0ae47d
--- /dev/null
+++ b/Documentation/devicetree/bindings/rng/mtk-rng.yaml
@@ -0,0 +1,53 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/rng/mtk-rng.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: MediaTek Random number generator
+
+maintainers:
+  - Sean Wang <sean.wang@mediatek.com>
+
+properties:
+  compatible:
+    oneOf:
+      - enum:
+          - mediatek,mt7623-rng
+      - items:
+          - const: mediatek,mt7622-rng
+          - const: mediatek,mt7623-rng
+      - items:
+          - const: mediatek,mt7629-rng
+          - const: mediatek,mt7623-rng
+      - items:
+          - const: mediatek,mt8516-rng
+          - const: mediatek,mt7623-rng
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    items:
+      - const: rng
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/mt2701-clk.h>
+    rng: rng@1020f000 {
+            compatible = "mediatek,mt7623-rng";
+            reg = <0x1020f000 0x1000>;
+            clocks = <&infracfg CLK_INFRA_TRNG>;
+            clock-names = "rng";
+    };
-- 
2.31.1

