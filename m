Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A16B32B92F1
	for <lists+devicetree@lfdr.de>; Thu, 19 Nov 2020 14:00:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726787AbgKSM4V (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Nov 2020 07:56:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49388 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727255AbgKSM4N (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Nov 2020 07:56:13 -0500
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 74C97C0613D4
        for <devicetree@vger.kernel.org>; Thu, 19 Nov 2020 04:56:12 -0800 (PST)
Received: by mail-lj1-x22a.google.com with SMTP id o24so6100521ljj.6
        for <devicetree@vger.kernel.org>; Thu, 19 Nov 2020 04:56:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=dk/PLtRQJj4ciBGVvxgg+w7D+PAZ68RtR7EvFVCCBys=;
        b=sePAck5gyKKxMoTi8wvxyL1G0IiUqfEvW20CXVzC7lOwGDLW+M47m3DGyPENw2IRtI
         VZ6oTmN999dDIe5zOihjOgaY1HZjZX/6C1Zza4M0gU/4trmYgFnWfD75s5KMOWD1h0/V
         iS19XWn6Ov9/b53H7Po3AV9+rWYkZAkZyyG7Ajt/1mRqjMN47pL/g1sYR4kVTdyl8IvJ
         2SiPIYC9EtTrV3wXRcFIrZ8cDPC4NhmuLrBIh1/oHPp3GlRzfYK9k2D4o5N2gdjoc6V5
         p0+hQeZZHAW+moTKHkwPQ7k7RbQ6EcLwGDzwHsoM/Zn1dxnHMdVcsceGBH13OTEgVDUu
         Lltg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=dk/PLtRQJj4ciBGVvxgg+w7D+PAZ68RtR7EvFVCCBys=;
        b=GYRzQrgN4xCEYp1T5CVnZAFNJDME/slSgWPifmFV++jNNRlXv0xlxjVpfDOTI0IjIK
         rxhIwpdSUjYjINTw3fE2i549Rb+iRERZBV5z3DPn3UvhrwI8kZgw68BdCC8UAcFE2T+0
         WjD/CUrDuN2FrckV4+lP3XThubNZc5AWA5wz/VSodJqZTCRxGSu8CSDTicpsYKmj1IIf
         9G3Ipw0mculu/uinXldGAZ6I+pjD194tG8Y0a6E6wiHmMJE/TQiWI5oeclx60l88OW9H
         QggMpQRCNiokb2Y7LTL9WHsfCR7tsse6MbnZ0uFUP+SkhRNEKyD/QDQLg9pDIUMl1dUp
         BjcQ==
X-Gm-Message-State: AOAM533g83u3R1q9wOFrg/4eTb+YTyQAop6sz186rRENzBHjJMlVvkN8
        FWscpeAd3Y7jeQcHkgzMkxDptY+OlKU=
X-Google-Smtp-Source: ABdhPJz59MMWoVGbSKVLNj6XGvncxzrby2Zb1hZLa6omvm9yZKcsNpNGCEpVT4tgEC63UngB+GW6eQ==
X-Received: by 2002:a2e:9008:: with SMTP id h8mr5877288ljg.339.1605790570985;
        Thu, 19 Nov 2020 04:56:10 -0800 (PST)
Received: from elitebook.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id h11sm1687564lfc.194.2020.11.19.04.56.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Nov 2020 04:56:10 -0800 (PST)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
        Florian Fainelli <f.fainelli@gmail.com>
Subject: [PATCH V2 1/2] dt-bindings: reset: document Broadcom's PMB binding
Date:   Thu, 19 Nov 2020 13:55:59 +0100
Message-Id: <20201119125600.8559-2-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201119125600.8559-1-zajec5@gmail.com>
References: <20201119125600.8559-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

Broadcom's PMB is reset controller used for disabling and enabling SoC
devices.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
---
V2: Fix example compilation
    Describe #reset-cells
---
 .../devicetree/bindings/reset/brcm,pmb.yaml   | 54 +++++++++++++++++++
 include/dt-bindings/reset/brcm,pmb.h          |  9 ++++
 2 files changed, 63 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/reset/brcm,pmb.yaml
 create mode 100644 include/dt-bindings/reset/brcm,pmb.h

diff --git a/Documentation/devicetree/bindings/reset/brcm,pmb.yaml b/Documentation/devicetree/bindings/reset/brcm,pmb.yaml
new file mode 100644
index 000000000000..2b5dd2faa4b2
--- /dev/null
+++ b/Documentation/devicetree/bindings/reset/brcm,pmb.yaml
@@ -0,0 +1,54 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/reset/brcm,pmb.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Broadcom PMB Master reset controller
+
+description: This document describes Broadcom's PMB controller. It supports
+  resetting various types of connected devices (e.g. PCIe, USB, SATA). It
+  requires specifying device address.
+
+maintainers:
+  - Rafał Miłecki <rafal@milecki.pl>
+
+properties:
+  compatible:
+    enum:
+      - brcm,bcm4908-pmb # PMB on BCM4908 and compatible SoCs
+
+  reg:
+    maxItems: 1
+
+  big-endian:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description:
+      Flag to use for block working in big endian mode.
+
+  "#reset-cells":
+    description: |
+      The first cell defines type of device to reset (see brcm,pmb.h)
+      The second cell specifies device address (range: 0 - 255)
+    const: 2
+
+required:
+  - compatible
+  - reg
+  - "#reset-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/reset/brcm,pmb.h>
+
+    pmb: reset-controller@802800e0 {
+        compatible = "brcm,bcm4908-pmb";
+        reg = <0x802800e0 0x20>;
+        #reset-cells = <2>;
+    };
+
+    foo {
+        resets = <&pmb BRCM_PMB_USB 17>;
+    };
diff --git a/include/dt-bindings/reset/brcm,pmb.h b/include/dt-bindings/reset/brcm,pmb.h
new file mode 100644
index 000000000000..1b724e451de1
--- /dev/null
+++ b/include/dt-bindings/reset/brcm,pmb.h
@@ -0,0 +1,9 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later OR MIT */
+
+#ifndef _DT_BINDINGS_RESET_BRCM_PMB
+#define _DT_BINDINGS_RESET_BRCM_PMB
+
+#define BRCM_PMB_USB		0x01
+#define BRCM_PMB_PCIE		0x02
+
+#endif
-- 
2.26.2

