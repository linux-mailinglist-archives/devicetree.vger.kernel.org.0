Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E611E476777
	for <lists+devicetree@lfdr.de>; Thu, 16 Dec 2021 02:38:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232587AbhLPBiR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Dec 2021 20:38:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36398 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232576AbhLPBiQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Dec 2021 20:38:16 -0500
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com [IPv6:2607:f8b0:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7BF62C061574;
        Wed, 15 Dec 2021 17:38:16 -0800 (PST)
Received: by mail-pl1-x631.google.com with SMTP id o14so18106982plg.5;
        Wed, 15 Dec 2021 17:38:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=LWu0eWna+8G7/usn/EvnCn27RmaCJyMrDiNHc/2jVoE=;
        b=Z/fF98jW1bZc4zMHU76d8sXztmQaRfbVXLGfDtNYoHbWMFjMHf2dS2Uayikvnxo0Yg
         uvsqKw/LXjW7HjoxvO/dlrLLA/rrTnCxCTd8P8NRjqIl8W1SlAZo4j49U8OWD+83xtGV
         xoM7nkdBtQKfVti8R8YGFpMxGbLL1DBzsLJTRskccPCJJ2xv0x3tsMpncQ1ZfhF1FBW3
         hwnGhCDMMKs0HACXIzJ/3gvY5m7ymVM0V0TA7Dcag95baK2DnGd2mH+W6pMkzk0tTrSM
         mzTvrYxPZec4GvNWjN5SenOfU62hybf/cNq8imTfErZ1l+hpeyZCj4GPFFY5uYl4amWO
         6D1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=LWu0eWna+8G7/usn/EvnCn27RmaCJyMrDiNHc/2jVoE=;
        b=Srvvu1DHJ1gWx1FyzxwZrJF5XUaWN0ldktJbuMKl0JAsl4LKcCu4t2+n1Y5CNT+FLS
         ONiRFxOPUD2Gi1L28hociGRn6zEHVr1NGk1PvGT9RxkKASyfPJNW/r/zoEvPWkHBzLp+
         Pa+z7hy5VhKZjj1LbnjGsqmf9c6+ez9g6CzR21XAD+hqrmhmxqkskh1+QjrvO58VHE6T
         /rDUxeh3HHgf/Zgvdi/G2+fWClvhq3xumHVI0Iwuy6G55LgpDpuvraDYfVFHoAW4ZK4P
         4IyBLYDuagpZvJ3W4KpBsxiGchuInWYyUeClKkDFXgJ3ul+Hxc4pfr+V8UKAynjkTruf
         ctiw==
X-Gm-Message-State: AOAM532EqxXTWT4qt6Cn3UbyRk95SWbjbttHDj0eyU0WfQze4lMLEcMf
        1f/3BmwG3Ths+WNUOnnMdoE=
X-Google-Smtp-Source: ABdhPJyVc/p4t+j+DmIP7hhvaDvi1QQ1gb6T+2QoPc81ZdFJHrSvfdy1gnFI42QxVDZPCwn8jENRBw==
X-Received: by 2002:a17:903:11ce:b0:148:a2e7:fb44 with SMTP id q14-20020a17090311ce00b00148a2e7fb44mr7199807plh.133.1639618696024;
        Wed, 15 Dec 2021 17:38:16 -0800 (PST)
Received: from scdiu3.sunplus.com ([113.196.136.192])
        by smtp.googlemail.com with ESMTPSA id s31sm4277624pfg.22.2021.12.15.17.38.14
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Dec 2021 17:38:15 -0800 (PST)
From:   Tony Huang <tonyhuang.sunplus@gmail.com>
To:     robh+dt@kernel.org, devicetree@vger.kernel.org,
        linuxkernel@vger.kernel.org, derek.kiernan@xilinx.com,
        dragan.cvetic@xilinx.com, arnd@arndb.de, gregkh@linuxfoundation.org
Cc:     wells.lu@sunplus.com, tonyhuang@sunplus.com,
        Tony Huang <tonyhuang.sunplus@gmail.com>
Subject: [PATCH v4 1/2] dt-binding: misc: Add iop yaml file for Sunplus SP7021
Date:   Thu, 16 Dec 2021 09:38:15 +0800
Message-Id: <27a26f5ac62dfabc47b27cde2488f79bf7bd68c1.1639557112.git.tonyhuang.sunplus@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1639557112.git.tonyhuang.sunplus@gmail.com>
References: <cover.1639557112.git.tonyhuang.sunplus@gmail.com>
In-Reply-To: <cover.1639557112.git.tonyhuang.sunplus@gmail.com>
References: <cover.1639557112.git.tonyhuang.sunplus@gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add iop yaml file for Sunplus SP7021

Signed-off-by: Tony Huang <tonyhuang.sunplus@gmail.com>
---
Changes in v4:
 - Addressed comments from Rob Herring.

 .../devicetree/bindings/misc/sunplus-iop.yaml      | 65 ++++++++++++++++++++++
 MAINTAINERS                                        |  5 ++
 2 files changed, 70 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/misc/sunplus-iop.yaml

diff --git a/Documentation/devicetree/bindings/misc/sunplus-iop.yaml b/Documentation/devicetree/bindings/misc/sunplus-iop.yaml
new file mode 100644
index 0000000..8510ef8
--- /dev/null
+++ b/Documentation/devicetree/bindings/misc/sunplus-iop.yaml
@@ -0,0 +1,65 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+# Copyright (C) Sunplus Ltd. Co. 2021
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/misc/sunplus-iop.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Sunplus IOP(8051) controller
+
+maintainers:
+  - Tony Huang <tonyhuang.sunplus@gmail.com>
+
+description: |
+  Processor for I/O control, RTC wake-up procedure management,
+  and cooperation with CPU&PMC in power management.
+
+properties:
+  compatible:
+    enum:
+      - sunplus,sp7021-iop
+
+  reg:
+    items:
+      - description: IOP registers regions
+      - description: PMC registers regions
+      - description: MOON0 registers regions
+
+  reg-names:
+    items:
+      - const: iop
+      - const: iop_pmc
+      - const: moon0
+
+  interrupts:
+    items:
+      - description: IOP_INT0. IOP to system Interrupt 0.
+                     Sent by IOP to system RISC.
+      - description: IOP_INT1. IOP to System Interrupt 1.
+                     Sent by IOP to system RISC.
+
+  memory-region:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - reg-names
+  - interrupts
+  - memory-region
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    iop: iop@9c000400 {
+        compatible = "sunplus,sp7021-iop";
+        reg = <0x9c000400 0x80>, <0x9c003100 0x80>, <0x9c000000 0x80>;
+        reg-names = "iop", "iop_pmc", "moon0";
+        interrupt-parent = <&intc>;
+        interrupts = <41 IRQ_TYPE_LEVEL_HIGH>, <42 IRQ_TYPE_LEVEL_HIGH>;
+        memory-region = <&iop_reserve>;
+    };
+...
diff --git a/MAINTAINERS b/MAINTAINERS
index 3b79fd4..071b5e6 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -17945,6 +17945,11 @@ L:	netdev@vger.kernel.org
 S:	Maintained
 F:	drivers/net/ethernet/dlink/sundance.c
 
+SUNPLUS IOP DRIVER
+M:	Tony Huang <tonyhuang.sunplus@gmail.com>
+S:	Maintained
+F:	Documentation/devicetree/bindings/misc/sunplu-iop.yaml
+
 SUPERH
 M:	Yoshinori Sato <ysato@users.sourceforge.jp>
 M:	Rich Felker <dalias@libc.org>
-- 
2.7.4

