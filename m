Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 171391385F1
	for <lists+devicetree@lfdr.de>; Sun, 12 Jan 2020 12:18:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732660AbgALLR6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 12 Jan 2020 06:17:58 -0500
Received: from mail-lj1-f195.google.com ([209.85.208.195]:41487 "EHLO
        mail-lj1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732659AbgALLR6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 12 Jan 2020 06:17:58 -0500
Received: by mail-lj1-f195.google.com with SMTP id h23so6858881ljc.8
        for <devicetree@vger.kernel.org>; Sun, 12 Jan 2020 03:17:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Zo6fx5Wpa4UMlaqNMt4nQ/pXNoj/+8/OnmUYzSrIJJE=;
        b=DyPsmZukkzw850ogUhzgDd3fFknJ/kGmrY3kVMyx0lkBEXBJrfPzYFv3YRfTvmp8kl
         Bd669W98WgYBXQUZ9lpDKpzpBBtn8jUJySSE+SWf2P5xJTgKjV6ZyDsGzae0sLlZoRMl
         MU2EhHSIzspbscM9QYgYgeIkhPM8I+eFl3N81hz1uyzDPEiAMngVEEHSzr1Yci+xg+XD
         nm0h+GMlgU19HBieQ76BJ3D51r+faDsQYH7fNEOMrzznPrYi+F70AN3nFybpw6yS0CGE
         H7jouGtjkyKkfB98gFMMwrPthJ9K6B264dxg3w0oGjORZ8L6OtUM7mYiBaBL/VYKBiLK
         PRzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Zo6fx5Wpa4UMlaqNMt4nQ/pXNoj/+8/OnmUYzSrIJJE=;
        b=FtXszpXHX2anAxZIvm0AELsyD2/ZKlPsDbrZtCpDtHvw1OnqQdcem85cx0jCzh9Aaa
         dUCsUdr1JRN/UWuyu5WQRA4GtP8QKiI84GGkJ5Vhs0YC9WndK1040wnCAX+bc0jvOAGl
         xc4hgi/Wc8+sU/x9l2QlqPTbD+sxcMrTOypBqo6UzFZVjtw/20SmsTK14WDSwlin/3fh
         KHmI7rQLmYZ8C6hgi/IKOsWvIRIz5opPeZGA3JUhhXLD6ERaqwU2JaygEW70JpqXl2vf
         QxhQ8DCSBr+LwfgO8DCLQFHQT91LNhltTuKe1HCaHbnN+HqwkbJPEQbZ5HR+p38KZ8wi
         8I2w==
X-Gm-Message-State: APjAAAXoCU7zDm90OdCKYc/dri8ExBQNPgxWxxJnn5LRfYdKuT5Mq97T
        6E4QCttbYuMXCoUCKqimB4yKHw==
X-Google-Smtp-Source: APXvYqzhz5rajwXrtmQnWaXrB6kf+ymA5yEzq0l3+mPMYaB/HfAmav4FzTq3fEayQq83TQ/qOJeDgQ==
X-Received: by 2002:a2e:8197:: with SMTP id e23mr7796249ljg.250.1578827876139;
        Sun, 12 Jan 2020 03:17:56 -0800 (PST)
Received: from localhost.bredbandsbolaget (c-5ac9225c.014-348-6c756e10.bbcust.telenor.se. [92.34.201.90])
        by smtp.gmail.com with ESMTPSA id z13sm4040385lfi.69.2020.01.12.03.17.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Jan 2020 03:17:55 -0800 (PST)
From:   Linus Walleij <linus.walleij@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Jens Axboe <axboe@kernel.dk>
Cc:     linux-ide@vger.kernel.org,
        Linus Walleij <linus.walleij@linaro.org>,
        Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Subject: [PATCH v4] dt-bindings: Create DT bindings for SATA controllers
Date:   Sun, 12 Jan 2020 12:17:51 +0100
Message-Id: <20200112111751.21984-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

I need to create subnodes for drives connected to SATA
host controllers, and this needs to be supported
generally, so create a common YAML binding for
"sata" that will support subnodes with ports.

This has been designed as a subset of
ata/ahci-platform.txt with the bare essentials and
should be possible to extend or superset to cover the
common bindings.

Cc: Rob Herring <robh+dt@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
ChangeLog v3->v4:
- Drop any master/slave terminology: SATA has one drive
  per port or up to 15 drives behind a multiplexer.
- Drop RFC notation, this feels pretty finished.
ChangeLog v2->v3:
- Split off into its own RFC patch
- Only support sata-port@ in this binding
- Opt to support devices 0..14 on the sata-port in
  line with ahci-platforn.txt not modeling the port
  multiplier in the device tree at all.
ChangeLog v1->v2:
- Use ide@ and sata@ as node names.
- Use ide-port@ and sata-port@ for the ports toward the
  drives, rather than letting the subnodes be the drives
  themselves.
---
 .../devicetree/bindings/ata/sata-common.yaml  | 50 +++++++++++++++++++
 1 file changed, 50 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/ata/sata-common.yaml

diff --git a/Documentation/devicetree/bindings/ata/sata-common.yaml b/Documentation/devicetree/bindings/ata/sata-common.yaml
new file mode 100644
index 000000000000..41f590629fbf
--- /dev/null
+++ b/Documentation/devicetree/bindings/ata/sata-common.yaml
@@ -0,0 +1,50 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/ata/sata-common.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Common Properties for Serial AT attachment (SATA) controllers
+
+maintainers:
+  - Linus Walleij <linus.walleij@linaro.org>
+
+description: |
+  This document defines device tree properties common to most Serial
+  AT attachment (SATA) storage devices. It doesn't constitute a device tree
+  binding specification by itself but is meant to be referenced by device
+  tree bindings.
+
+  The SATA controller-specific device tree bindings are responsible for
+  defining whether each property is required or optional.
+
+properties:
+  $nodename:
+    pattern: "^sata(@.*)?$"
+    description:
+      Specifies the host controller node. SATA host controller nodes are named
+      "sata"
+
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 0
+
+patternProperties:
+  "^sata-port@[0-1]$":
+    description: |
+      DT nodes for ports connected on the SATA host. The SATA port
+      nodes will be named "sata-port".
+    type: object
+
+    properties:
+      reg:
+        minimum: 0
+        maximum: 14
+        description:
+          The ID number of the drive port SATA can potentially use a port
+          multiplier making it possible to connect up to 15 disks to a single
+          SATA port.
+
+...
-- 
2.21.0

