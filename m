Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 304153FCDE5
	for <lists+devicetree@lfdr.de>; Tue, 31 Aug 2021 22:01:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240849AbhHaTfv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 31 Aug 2021 15:35:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52320 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240845AbhHaTfv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 31 Aug 2021 15:35:51 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8C231C061760
        for <devicetree@vger.kernel.org>; Tue, 31 Aug 2021 12:34:55 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id v10so851242wrd.4
        for <devicetree@vger.kernel.org>; Tue, 31 Aug 2021 12:34:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=engleder-embedded-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ol/c9feioOQRNOgfYGi4dbOTUm2kRKKFKHXlFmZJpVw=;
        b=Ujoyp4RB5TnvODP7xsDvWwEOMU5uHPRfF7dcy4IvLhSLddUwnlS19ta8WvCsqlaArE
         K5Mo8owR9YN9/ORQzZZHCK3hCZ2HkmOQvWeTgOc8HyXgJI7lp4EUKrhfI7IYHksH+dvU
         MhicAqX8a4Y4coDNgdsl5bsG59jfm9H5bIjjknICXDfsujh203ODVQIslfV3ScGsY2gw
         IlxyfXsIXvJmgAscBDXW+Pk6qeTEZqN9RyiGp43MCJdS+qVOxEZN8qTcuubx4CnbRE+P
         2njxeX0zuLtgy9qucCtzMZG1QW4qXOSsdfVK4zn95yT9h32NeRaDoGbWrpVej0PYEe7A
         eHLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ol/c9feioOQRNOgfYGi4dbOTUm2kRKKFKHXlFmZJpVw=;
        b=AbHtyTUv7ZWGsj17UMTi5tDXAMdPEv4xJT1hwHhkD1kQVlaEwj3WUV5GBKgzYqAvtI
         1y+v3GM+qzldWEYNiyZ7f08zvkUPoL4ROYAc1CRCEf5nbYSOqEzvcWid2JouszGnvJ7w
         Z2KVGBPOjdHDiWyYKeU2YB2SbWJAbItZ3EQZiFJpcE8kz7SHm7hucvpkiz0NTR7V8WTt
         OUSk+FCS4SkhVC6VC56LwuTT2/pRPUmoulD4Hn750racq5CvhGtS9Bhn5v/84d3Oi2qc
         SXYzKt0KBvhIKlpGt92roLdrdRQIqiSzZd0oYHce9XOdbm3FZKA+ZYEWNxc2aZ9MIkpY
         ukXg==
X-Gm-Message-State: AOAM533uYlPFWGw8oHsftNi3n7eGruHMtYdLqjt9Ycq5dwYDv4L4aXLA
        y+UFExE+g5NfEvH5HQwcFHQH7Q==
X-Google-Smtp-Source: ABdhPJzoHlbq1/9AnXDnj2dMWI8BC0+TezgiqqR9jRH7lCWqcK5nWWeiVMB/5Ub3d4UR4lBXxfi2gw==
X-Received: by 2002:a5d:63d2:: with SMTP id c18mr33416673wrw.240.1630438494244;
        Tue, 31 Aug 2021 12:34:54 -0700 (PDT)
Received: from hornet.engleder.at (dynamic-2el0lv6sxxeorz8a81-pd01.res.v6.highway.a1.net. [2001:871:23a:b9:6e3b:e5ff:fe2c:34c1])
        by smtp.gmail.com with ESMTPSA id n4sm18708324wri.78.2021.08.31.12.34.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 Aug 2021 12:34:53 -0700 (PDT)
From:   Gerhard Engleder <gerhard@engleder-embedded.com>
To:     davem@davemloft.net, kuba@kernel.org, andrew@lunn.ch,
        robh+dt@kernel.org, michal.simek@xilinx.com
Cc:     netdev@vger.kernel.org, devicetree@vger.kernel.org,
        Gerhard Engleder <gerhard@engleder-embedded.com>
Subject: [PATCH net-next v2 2/3] dt-bindings: net: Add tsnep Ethernet controller
Date:   Tue, 31 Aug 2021 21:34:24 +0200
Message-Id: <20210831193425.26193-3-gerhard@engleder-embedded.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210831193425.26193-1-gerhard@engleder-embedded.com>
References: <20210831193425.26193-1-gerhard@engleder-embedded.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The TSN endpoint Ethernet MAC is a FPGA based network device for
real-time communication.

It is integrated as normal Ethernet controller with
ethernet-controller.yaml and mdio.yaml.

Signed-off-by: Gerhard Engleder <gerhard@engleder-embedded.com>
---
 .../bindings/net/engleder,tsnep.yaml          | 78 +++++++++++++++++++
 1 file changed, 78 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/engleder,tsnep.yaml

diff --git a/Documentation/devicetree/bindings/net/engleder,tsnep.yaml b/Documentation/devicetree/bindings/net/engleder,tsnep.yaml
new file mode 100644
index 000000000000..962ce75dab07
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/engleder,tsnep.yaml
@@ -0,0 +1,78 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/engleder,tsnep.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: TSN endpoint Ethernet MAC binding
+
+maintainers:
+  - Gerhard Engleder <gerhard@engleder-embedded.com>
+
+allOf:
+  - $ref: ethernet-controller.yaml#
+
+properties:
+  compatible:
+    const: engleder,tsnep
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  local-mac-address: true
+
+  mac-address: true
+
+  nvmem-cells: true
+
+  nvmem-cells-names: true
+
+  phy-connection-type:
+    enum:
+      - mii
+      - gmii
+      - rgmii
+      - rgmii-id
+
+  phy-mode: true
+
+  phy-handle: true
+
+  mdio:
+    type: object
+    $ref: "mdio.yaml#"
+    description: optional node for embedded MDIO controller
+
+required:
+  - compatible
+  - reg
+  - interrupts
+
+additionalProperties: false
+
+examples:
+  - |
+    axi {
+        #address-cells = <2>;
+        #size-cells = <2>;
+        tnsep0: ethernet@a0000000 {
+            compatible = "engleder,tsnep";
+            reg = <0x0 0xa0000000 0x0 0x10000>;
+            interrupts = <0 89 1>;
+            interrupt-parent = <&gic>;
+            local-mac-address = [00 00 00 00 00 00];
+            phy-mode = "rgmii";
+            phy-handle = <&phy0>;
+            mdio {
+                #address-cells = <1>;
+                #size-cells = <0>;
+                phy0: ethernet-phy@1 {
+                    reg = <1>;
+                    rxc-skew-ps = <1080>;
+                };
+            };
+        };
+    };
-- 
2.20.1

