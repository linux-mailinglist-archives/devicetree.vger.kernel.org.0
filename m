Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B13334AD3A
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2019 23:22:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730326AbfFRVWf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Jun 2019 17:22:35 -0400
Received: from mail-io1-f68.google.com ([209.85.166.68]:39357 "EHLO
        mail-io1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730102AbfFRVWf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Jun 2019 17:22:35 -0400
Received: by mail-io1-f68.google.com with SMTP id r185so27277596iod.6
        for <devicetree@vger.kernel.org>; Tue, 18 Jun 2019 14:22:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=dvwy0NMWxkK7T26JupGv0ID5o5uJQIlL2sATl6Jklow=;
        b=njrBUbkPZyy6M0iC+y6NhBJ9FJL+Djkh5qBZkpQEA0mC9i+0JzBlrSgCV7os08xpn5
         9yT2M2SkhzzAspYqacqjuphjRPf1msxXGyEp882ltuXhxFhedSclKVkts1zn166AB+8G
         GpGjPfbyasm+2qTHWBkGZZCmGytgGtenEPvFPHNpIRCnhE8kqbNO7HspcilU7+PMmMYL
         35zpV1BLLxf+nFO9gDpwpziMp04T1iSRD4xmV9hBus5R4t5vXeVaADVPzTk+58J0Vtxy
         AphDDzErz1GaP/+u60aDXFIprPzDQklchmRkKFJLSAw9sVo0pFnqSkuz5l2wH7u2aiPv
         tPlQ==
X-Gm-Message-State: APjAAAV7J+dSWJiHnyXMcAY2KDyMQ+6xqJmsfK2y1tCzw13X2jxkfyUu
        N2pDS/83mfXG/chd9VaIueSFFw4=
X-Google-Smtp-Source: APXvYqztriW9tUx63PRiKS0KvYK2a5w/3Dh7nfnzkb3ISW+UTzHjmsH4zl36EQRlRNgAFnk61ivllg==
X-Received: by 2002:a6b:7f0b:: with SMTP id l11mr80712311ioq.282.1560892954485;
        Tue, 18 Jun 2019 14:22:34 -0700 (PDT)
Received: from localhost.localdomain ([64.188.179.192])
        by smtp.googlemail.com with ESMTPSA id p9sm13233480ioj.49.2019.06.18.14.22.33
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 18 Jun 2019 14:22:33 -0700 (PDT)
From:   Rob Herring <robh@kernel.org>
To:     devicetree@vger.kernel.org
Cc:     linux-arm-kernel@lists.infradead.org,
        Roland Stigge <stigge@antcom.de>
Subject: [PATCH] dt-bindings: arm: Convert NXP LPC32xx board/soc bindings to json-schema
Date:   Tue, 18 Jun 2019 15:22:27 -0600
Message-Id: <20190618212229.32302-3-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert NXP LPC32xx SoC bindings to DT schema format using json-schema.

Cc: Roland Stigge <stigge@antcom.de>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/arm/nxp/lpc32xx.txt   |  8 ------
 .../devicetree/bindings/arm/nxp/lpc32xx.yaml  | 25 +++++++++++++++++++
 2 files changed, 25 insertions(+), 8 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/nxp/lpc32xx.txt
 create mode 100644 Documentation/devicetree/bindings/arm/nxp/lpc32xx.yaml

diff --git a/Documentation/devicetree/bindings/arm/nxp/lpc32xx.txt b/Documentation/devicetree/bindings/arm/nxp/lpc32xx.txt
deleted file mode 100644
index 56ec8ddc4a3b..000000000000
--- a/Documentation/devicetree/bindings/arm/nxp/lpc32xx.txt
+++ /dev/null
@@ -1,8 +0,0 @@
-NXP LPC32xx Platforms Device Tree Bindings
-------------------------------------------
-
-Boards with the NXP LPC32xx SoC shall have the following properties:
-
-Required root node property:
-
-compatible: must be "nxp,lpc3220", "nxp,lpc3230", "nxp,lpc3240" or "nxp,lpc3250"
diff --git a/Documentation/devicetree/bindings/arm/nxp/lpc32xx.yaml b/Documentation/devicetree/bindings/arm/nxp/lpc32xx.yaml
new file mode 100644
index 000000000000..07f39d3eee7e
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/nxp/lpc32xx.yaml
@@ -0,0 +1,25 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/nxp/lpc32xx.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NXP LPC32xx Platforms Device Tree Bindings
+
+maintainers:
+  - Roland Stigge <stigge@antcom.de>
+
+properties:
+  compatible:
+    oneOf:
+      - enum:
+          - nxp,lpc3220
+          - nxp,lpc3230
+          - nxp,lpc3240
+      - items:
+        - enum:
+            - ea,ea3250
+            - phytec,phy3250
+        - const: nxp,lpc3250
+
+...
-- 
2.20.1

