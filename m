Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1279C368EC5
	for <lists+devicetree@lfdr.de>; Fri, 23 Apr 2021 10:22:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241361AbhDWIWx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Apr 2021 04:22:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46128 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241196AbhDWIWw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Apr 2021 04:22:52 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8CD5EC061574
        for <devicetree@vger.kernel.org>; Fri, 23 Apr 2021 01:22:13 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id r128so49285475lff.4
        for <devicetree@vger.kernel.org>; Fri, 23 Apr 2021 01:22:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=qWBkgkLzB2qRvLb6AJXGYdWv19iR0S4JnZjEAIUSrBk=;
        b=LWPq+d2szR6MC/Ahhk1UXiNveVPJTDobHg9JtntjxCeTvsr100pE2nNxi26KPQxFFp
         FmDKXmznsNFa9/CkBXuwQqwG7QFuvLClN3noH5kKwXGvyjaKTCKU+0yRfPCdIEPtZmHx
         qLIC3UeqYHzwsowST1oPsBp0aB9U+unmtxLRRVl8co2wXTvba5Gj2mhBa49CRgi/vf3e
         BruU+fadCo56PRfo8ZdZoBtzRuAe+wDvQLM8NMiNFfMlyV1XRSOCNcMmZJSS4P7wln57
         9wybHstYmpoM3Dw3AAKSOAMSacqaEBy/w3plpkqv8rXaqlOAfAYhEz/Qtcthszkk6wo/
         KVZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=qWBkgkLzB2qRvLb6AJXGYdWv19iR0S4JnZjEAIUSrBk=;
        b=IuadWwZL5H4dXUU5dO6Mn2DgEsimnY12cVk3eauSjn7BDfFfpMqtuXvPhiTTkqi1/a
         cTUTqCQDX+3n1/mO4/XZmv3oT216In4NyLB23S8L3KWHiZKbeCxtoGOL8BTtHup2v+xy
         ebULXGeSCimV8hvGfFDQWffYfHCj26LijOHb92MpraUGCdg9W6BD/CCnRc4H81wWYpoX
         VSx5t72PntCfPwqRm8321zLP1gO3L5ZCNDRDoXpSqAqTsc79fo5V+ZqOV42iQshr1fva
         CvQhrYI/vV+esB4Fy3cKU4rdNkEd2Uwy9iPQLDbd1WPbVCZLQAKSzUm2py7Ac3nBXwd1
         3n9w==
X-Gm-Message-State: AOAM5304GScLdj0RDLtBKJZ/zd91HQggSH/Ptt6x6z9c7YaPb5Ge1ZIT
        AxKj4rr50kuRkWfa3MDrOo2Gkg==
X-Google-Smtp-Source: ABdhPJwM0N5vJrY4HbRVirs2DUVVbbIs8U2o/3xElJHb03KF6XRyNippWAUA4fbVFLpxkfEEDhuU5w==
X-Received: by 2002:a19:f018:: with SMTP id p24mr1822876lfc.421.1619166132016;
        Fri, 23 Apr 2021 01:22:12 -0700 (PDT)
Received: from localhost.localdomain (c-fdcc225c.014-348-6c756e10.bbcust.telenor.se. [92.34.204.253])
        by smtp.gmail.com with ESMTPSA id x74sm484475lff.145.2021.04.23.01.22.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Apr 2021 01:22:11 -0700 (PDT)
From:   Linus Walleij <linus.walleij@linaro.org>
To:     netdev@vger.kernel.org, "David S . Miller" <davem@davemloft.net>
Cc:     Andrew Lunn <andrew@lunn.ch>,
        Heiner Kallweit <hkallweit1@gmail.com>,
        Russell King <linux@armlinux.org.uk>,
        Linus Walleij <linus.walleij@linaro.org>,
        Zoltan HERPAI <wigyori@uid0.hu>,
        Raylynn Knight <rayknight@me.com>, devicetree@vger.kernel.org
Subject: [PATCH 1/3 net-next v3] net: ethernet: ixp4xx: Add DT bindings
Date:   Fri, 23 Apr 2021 10:22:06 +0200
Message-Id: <20210423082208.2244803-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This adds device tree bindings for the IXP4xx ethernet
controller with optional MDIO bridge.

Cc: Zoltan HERPAI <wigyori@uid0.hu>
Cc: Raylynn Knight <rayknight@me.com>
Cc: devicetree@vger.kernel.org
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
ChangeLog v2->v3:
- Designate phy nodes with ethernet-phy@
- Include phy-mode in the schema
ChangeLog v1->v2:
- Add schema for the (optional) embedded MDIO bus inside
  the ethernet controller in an "mdio" node instead of just
  letting the code randomly populate and present it to
  the operating system.
- Reference the standard schemas for ethernet controller and
  MDIO buses.
- Add intel,npe to indentify the NPE unit used with each
  ethernet adapter.
---
 .../bindings/net/intel,ixp4xx-ethernet.yaml   | 82 +++++++++++++++++++
 1 file changed, 82 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/intel,ixp4xx-ethernet.yaml

diff --git a/Documentation/devicetree/bindings/net/intel,ixp4xx-ethernet.yaml b/Documentation/devicetree/bindings/net/intel,ixp4xx-ethernet.yaml
new file mode 100644
index 000000000000..978e7f236f3a
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/intel,ixp4xx-ethernet.yaml
@@ -0,0 +1,82 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright 2018 Linaro Ltd.
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/net/intel,ixp4xx-ethernet.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Intel IXP4xx ethernet
+
+allOf:
+  - $ref: "ethernet-controller.yaml#"
+
+maintainers:
+  - Linus Walleij <linus.walleij@linaro.org>
+
+description: |
+  The Intel IXP4xx ethernet makes use of the IXP4xx NPE (Network
+  Processing Engine) and the IXP4xx Queue Mangager to process
+  the ethernet frames. It can optionally contain an MDIO bus to
+  talk to PHYs.
+
+properties:
+  compatible:
+    const: intel,ixp4xx-ethernet
+
+  reg:
+    maxItems: 1
+    description: Ethernet MMIO address range
+
+  queue-rx:
+    $ref: '/schemas/types.yaml#/definitions/phandle-array'
+    maxItems: 1
+    description: phandle to the RX queue on the NPE
+
+  queue-txready:
+    $ref: '/schemas/types.yaml#/definitions/phandle-array'
+    maxItems: 1
+    description: phandle to the TX READY queue on the NPE
+
+  phy-mode: true
+
+  phy-handle: true
+
+  intel,npe:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum: [0, 1, 2, 3]
+    description: which NPE (Network Processing Engine) this ethernet
+      instance is using
+
+  mdio:
+    type: object
+    $ref: "mdio.yaml#"
+    description: optional node for embedded MDIO controller
+
+required:
+  - compatible
+  - reg
+  - queue-rx
+  - queue-txready
+
+additionalProperties: false
+
+examples:
+  - |
+    ethernet@c8009000 {
+      compatible = "intel,ixp4xx-ethernet";
+      reg = <0xc8009000 0x1000>;
+      status = "disabled";
+      queue-rx = <&qmgr 3>;
+      queue-txready = <&qmgr 20>;
+      intel,npe = <1>;
+      phy-mode = "rgmii";
+      phy-handle = <&phy1>;
+
+      mdio {
+        #address-cells = <1>;
+        #size-cells = <0>;
+        phy1: ethernet-phy@1 {
+          reg = <1>;
+        };
+      };
+    };
-- 
2.29.2

