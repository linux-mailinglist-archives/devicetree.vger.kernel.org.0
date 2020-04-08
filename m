Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 961141A29C4
	for <lists+devicetree@lfdr.de>; Wed,  8 Apr 2020 21:52:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730187AbgDHTwA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Apr 2020 15:52:00 -0400
Received: from mail-lj1-f196.google.com ([209.85.208.196]:34518 "EHLO
        mail-lj1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730216AbgDHTwA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Apr 2020 15:52:00 -0400
Received: by mail-lj1-f196.google.com with SMTP id m8so787808lji.1
        for <devicetree@vger.kernel.org>; Wed, 08 Apr 2020 12:51:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=saLPCDRxNaVrboIoRoQD/aDJjO874lHH30BBrT4XjEw=;
        b=MYVzK2yd4p3fplSbZBX4sdymw9ugya/Vao9SFAQX/gdlbZQdawL0XrgF7AHy2qcZuw
         cIP9JZO0t0M8V8WdRNsOY/B62OK/gw3w9ixZ7Lh7Y4jh57x8OvxN9yft+2u6eXHgAmC6
         HZ6l3r9/Ixn5PxiDTX83uqKL7E2JBWKeOU8qauiQ9YF9A0d1catsgdT+vFCCFXF3Xaw+
         4zUsqnIX8A2XQE35fRQlS+PcESSDqNSWuTYO4niYTCr0MJshhN7oBJQfxrMSpDuPLXmw
         UAs9Wen6UE9Me4cEabaTAKuZNeaguCnmB1itPryOOMpt57mS20GD+ClNLh7+5StHGKtb
         ANJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding;
        bh=saLPCDRxNaVrboIoRoQD/aDJjO874lHH30BBrT4XjEw=;
        b=AMznNgCOYZNmE1lWj+yS0aYIBiWozxJcmoD2+KpfLinTXajZAQi0k4YYxBK/sp8tJM
         pEJGNZBDpA6rKpEO7/6HS3XXmFv73U/3f24GJc2R9f513aZpg/dDkRrRAm/emqAX5AOP
         8EYU0Ry6IaJAD49cpxN2bPaA2imvWmcbSDb7DxLKW0TuIAkDuYE7E71EwMBxzPO/sWTq
         xayn2tXEpYa8RSmXOQ5HmjkIrWS37yuxxwOp7Kmp92eD3+tb/rJyI5j+aTbtIzBpfbR2
         rrg7q6R8Zg5OkJQqMaiy02NI0XursM1c4Sv1y2lgaPjNEpyPgr75iTzTUZ96t9diX4S/
         QDlQ==
X-Gm-Message-State: AGi0PuY0Dyeq2JIjWTPvIn+5xYCChPl5L4QHI+LpYf/XPwZ4qB77nrIP
        LK0odukAN+hOa4ieSPQIiCg=
X-Google-Smtp-Source: APiQypKKa894yGRmvO3ipRVOOLRBoPDdAi5RBXMl1JBQOr+O58wTYVsXyLjnYG9W0xxDIAw0mI1YCQ==
X-Received: by 2002:a2e:7004:: with SMTP id l4mr6197357ljc.55.1586375518244;
        Wed, 08 Apr 2020 12:51:58 -0700 (PDT)
Received: from saturn.lan (18.158-248-194.customer.lyse.net. [158.248.194.18])
        by smtp.gmail.com with ESMTPSA id i20sm3961304lfe.15.2020.04.08.12.51.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Apr 2020 12:51:57 -0700 (PDT)
From:   Sam Ravnborg <sam@ravnborg.org>
To:     dri-devel@lists.freedesktop.org,
        Thierry Reding <thierry.reding@gmail.com>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
Cc:     Sam Ravnborg <sam@ravnborg.org>, Heiko Schocher <hs@denx.de>,
        Maxime Ripard <mripard@kernel.org>
Subject: [PATCH v2 16/36] dt-bindings: display: convert lg,lg4573 to DT Schema
Date:   Wed,  8 Apr 2020 21:50:49 +0200
Message-Id: <20200408195109.32692-17-sam@ravnborg.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200408195109.32692-1-sam@ravnborg.org>
References: <20200408195109.32692-1-sam@ravnborg.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

v2:
  - Dropped spi-slave (Maxime)
  - Added unevaluatedProperties (Maxime)
  - Deleted needless compatible from example (Rob)

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
Reviewed-by: Heiko Schocher <hs@denx.de>
Cc: Maxime Ripard <mripard@kernel.org>
Cc: Rob Herring <robh@kernel.org>
Cc: Heiko Schocher <hs@denx.de>
Cc: Thierry Reding <thierry.reding@gmail.com>
Cc: Sam Ravnborg <sam@ravnborg.org>
---
 .../bindings/display/panel/lg,lg4573.txt      | 19 --------
 .../bindings/display/panel/lg,lg4573.yaml     | 45 +++++++++++++++++++
 2 files changed, 45 insertions(+), 19 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/display/panel/lg,lg4573.txt
 create mode 100644 Documentation/devicetree/bindings/display/panel/lg,lg4573.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/lg,lg4573.txt b/Documentation/devicetree/bindings/display/panel/lg,lg4573.txt
deleted file mode 100644
index 824441f4e95a..000000000000
--- a/Documentation/devicetree/bindings/display/panel/lg,lg4573.txt
+++ /dev/null
@@ -1,19 +0,0 @@
-LG LG4573 TFT Liquid Crystal Display with SPI control bus
-
-Required properties:
-  - compatible: "lg,lg4573"
-  - reg: address of the panel on the SPI bus
-
-The panel must obey rules for SPI slave device specified in document [1].
-
-[1]: Documentation/devicetree/bindings/spi/spi-bus.txt
-
-Example:
-
-	lcd_panel: display@0 {
-		#address-cells = <1>;
-		#size-cells = <1>;
-		compatible = "lg,lg4573";
-		spi-max-frequency = <10000000>;
-		reg = <0>;
-	};
diff --git a/Documentation/devicetree/bindings/display/panel/lg,lg4573.yaml b/Documentation/devicetree/bindings/display/panel/lg,lg4573.yaml
new file mode 100644
index 000000000000..b4314ce7b411
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/lg,lg4573.yaml
@@ -0,0 +1,45 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/lg,lg4573.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: LG LG4573 TFT Liquid Crystal Display with SPI control bus
+
+description: |
+  The panel must obey the rules for a SPI slave device as specified in
+  spi/spi-controller.yaml
+
+maintainers:
+  - Heiko Schocher <hs@denx.de>
+
+allOf:
+  - $ref: panel-common.yaml#
+
+properties:
+  compatible:
+    const: lg,lg4573
+
+  reg: true
+  spi-max-frequency: true
+
+required:
+  - compatible
+  - reg
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    spi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        lcd_panel: display@0 {
+            compatible = "lg,lg4573";
+            spi-max-frequency = <10000000>;
+            reg = <0>;
+        };
+    };
+
+...
-- 
2.20.1

