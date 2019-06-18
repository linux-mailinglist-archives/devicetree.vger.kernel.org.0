Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D9D1F4AD38
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2019 23:22:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730267AbfFRVWd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Jun 2019 17:22:33 -0400
Received: from mail-io1-f65.google.com ([209.85.166.65]:36579 "EHLO
        mail-io1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730102AbfFRVWc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Jun 2019 17:22:32 -0400
Received: by mail-io1-f65.google.com with SMTP id h6so33300854ioh.3
        for <devicetree@vger.kernel.org>; Tue, 18 Jun 2019 14:22:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ylpE5cZF1j/JtHiZnOXlik3e0OekFUoUd9veGQmnd64=;
        b=Qd5TOQEZLfJGDMh8iwRmbWzNNZ5pGhqv6FTrI1kPYw0wl7r5zoLXWy71lLjTA0PC3j
         rg3n/qirTiLWhRXsMEiiEY6Y3T3PEbtR1ebBu/vzaXm9i2cPSnlcUr0iOdDwL3Ic/Tb4
         TvBDcg9/Id3Otp1VcA17kfqSrBWjv2josCt0xEcct0Rir3KgjPWo1g6R4K+ZzARQUjkH
         1AnPonwQZa7a3r7dE9TeeMTzHHcqVs/JKe5lW+43cVE1BXrbUsLueWWqfA0ek1HWjf6b
         QpRy3b+CLnqcyMgIlImkEhDQkzWyfKSYV4b+vphVBe1xb5iL/b4eGanbA5LPN1+bdieI
         O++g==
X-Gm-Message-State: APjAAAWj9itg1EYzCwta4miKSQXn6n6OmE5ID5P0rN7d3jmXMeoMbt1V
        LQAgIqEPLM003ebta9qf6DiANXU=
X-Google-Smtp-Source: APXvYqxLl63TWwT/LAwXc3mgiArhk90fL84CJlArIFgnNZBV82SoN/sYbaX6RROIeWDP3g2b0JZIeg==
X-Received: by 2002:a5e:9304:: with SMTP id k4mr41197240iom.206.1560892951688;
        Tue, 18 Jun 2019 14:22:31 -0700 (PDT)
Received: from localhost.localdomain ([64.188.179.192])
        by smtp.googlemail.com with ESMTPSA id p9sm13233480ioj.49.2019.06.18.14.22.30
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 18 Jun 2019 14:22:31 -0700 (PDT)
From:   Rob Herring <robh@kernel.org>
To:     devicetree@vger.kernel.org
Cc:     linux-arm-kernel@lists.infradead.org,
        Anders Berg <anders.berg@lsi.com>
Subject: [PATCH] dt-bindings: arm: Convert Axxia board/soc bindings to json-schema
Date:   Tue, 18 Jun 2019 15:22:25 -0600
Message-Id: <20190618212229.32302-1-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert Axxia SoC bindings to DT schema format using json-schema.

Cc: Anders Berg <anders.berg@lsi.com>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/arm/axxia.txt         | 12 ------------
 .../devicetree/bindings/arm/axxia.yaml        | 19 +++++++++++++++++++
 2 files changed, 19 insertions(+), 12 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/axxia.txt
 create mode 100644 Documentation/devicetree/bindings/arm/axxia.yaml

diff --git a/Documentation/devicetree/bindings/arm/axxia.txt b/Documentation/devicetree/bindings/arm/axxia.txt
deleted file mode 100644
index 7b4ef9c07696..000000000000
--- a/Documentation/devicetree/bindings/arm/axxia.txt
+++ /dev/null
@@ -1,12 +0,0 @@
-Axxia AXM55xx device tree bindings
-
-Boards using the AXM55xx SoC need to have the following properties:
-
-Required root node property:
-
-  - compatible = "lsi,axm5516"
-
-Boards:
-
-  LSI AXM5516 Validation board (Amarillo)
-	compatible = "lsi,axm5516-amarillo", "lsi,axm5516"
diff --git a/Documentation/devicetree/bindings/arm/axxia.yaml b/Documentation/devicetree/bindings/arm/axxia.yaml
new file mode 100644
index 000000000000..98780a569f22
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/axxia.yaml
@@ -0,0 +1,19 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/axxia.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Axxia AXM55xx device tree bindings
+
+maintainers:
+  - Anders Berg <anders.berg@lsi.com>
+
+properties:
+  compatible:
+    description: LSI AXM5516 Validation board (Amarillo)
+    items:
+      - const: lsi,axm5516-amarillo
+      - const: lsi,axm5516
+
+...
-- 
2.20.1

