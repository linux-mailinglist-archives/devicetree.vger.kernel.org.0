Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B2FC12AC105
	for <lists+devicetree@lfdr.de>; Mon,  9 Nov 2020 17:35:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730614AbgKIQfn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 Nov 2020 11:35:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54442 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730612AbgKIQfn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 Nov 2020 11:35:43 -0500
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 48B32C0613CF
        for <devicetree@vger.kernel.org>; Mon,  9 Nov 2020 08:35:43 -0800 (PST)
Received: by mail-lf1-x12e.google.com with SMTP id a25so4452976lfb.2
        for <devicetree@vger.kernel.org>; Mon, 09 Nov 2020 08:35:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=+bkVKU8U9sR9xB7pikYiFZ8obtuF0W2kuv1XL4+yiMQ=;
        b=M8eByEDNrIaK1bA9VtVZftLG9u6yLPV4kcZ0xdbP2LOn0IBPpFW/b/YXJn73c5WIQg
         utkU4Rc83Fqv+HjQqBgBNCim/46G5MlINqPOMyYM8Xs8fjob+QFtyOh6D5pSRTHv3s6D
         +u2134k/UeVT4lM9T9Ayh/mL3G3+WXh6biwgsFJRz1yhVIsLjEvX4NV5+37DTmNqtddj
         x/k5sitkjkZ3SrfpzGpPfWpLTRO5laCyvZSALc0Ol8H+WksU0eowHXfebinGgLwIgfUF
         sgqVcfNvjxJNS3IFeSMYysGFWiwV1vqErEOo/D0bhKygE2Gf4ai5jXu6al6j/vw0UBKy
         yK+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=+bkVKU8U9sR9xB7pikYiFZ8obtuF0W2kuv1XL4+yiMQ=;
        b=gKYDRoTEZGTt2wH6lkaUxIHSJTkjC384l7le6BEPNDo6FOFt3if/DXIj3k9bRJ3Cmb
         k88bTXcg6kxb+1z4z8GXEVIwDqCrUfT5GLIOlt3xkk/lKb3zNZPGbUSQ1sBWRtTb2C0p
         ZhtnkaqNSe2qTSx3x6G6FvwAaoBziFtTEA/wWCFpJDZUXhCz9ENABChwipaGIod84Yws
         w8P7+lHDFunB9uYMe5q/lrFibkrvbZ3XrQIAq1VA43S567oz1XO/pXuZ9VpQMcCp4GZe
         zNcScByDZ6X0O4TBM6hnDy0HrLNyitAJQtXoxUg8V0ebcEFC3TMzxOKJXydSj2c24Qem
         7i9g==
X-Gm-Message-State: AOAM5326n1dkhDIQ/NpUEXaZ3yPItVUe2O6uJHZEYuZBk7fHiKAEeyda
        sB9OJqxA0NUixK7rT2HyzP8=
X-Google-Smtp-Source: ABdhPJwAUKXWjzeSqrh4zQLFvSHRp/ToaSqkD2PuEu0MMgcWqE6AvhwyCshV6e0JtGBNv1hXgw5Agw==
X-Received: by 2002:a19:be8d:: with SMTP id o135mr6443254lff.200.1604939741776;
        Mon, 09 Nov 2020 08:35:41 -0800 (PST)
Received: from localhost.localdomain (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id x24sm191137ljj.112.2020.11.09.08.35.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Nov 2020 08:35:41 -0800 (PST)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH 1/2] dt-bindings: reset: document Broadcom's PMC binding
Date:   Mon,  9 Nov 2020 17:35:18 +0100
Message-Id: <20201109163519.32605-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

Broadcom's PMC is Power Management Controller that is used for disabling
and enabling SoC devices.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 .../bindings/reset/brcm,bcm-pmc.yaml          | 69 +++++++++++++++++++
 1 file changed, 69 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/reset/brcm,bcm-pmc.yaml

diff --git a/Documentation/devicetree/bindings/reset/brcm,bcm-pmc.yaml b/Documentation/devicetree/bindings/reset/brcm,bcm-pmc.yaml
new file mode 100644
index 000000000000..2afc2048997f
--- /dev/null
+++ b/Documentation/devicetree/bindings/reset/brcm,bcm-pmc.yaml
@@ -0,0 +1,69 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/reset/brcm,bcm-pmc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Broadcom PMC (Power Management Controller) reset controller
+
+description: This document describes the Broadcom's PMC (Power Management
+  Controller). It supports resetting devices identified by the bus id and device
+  address.
+
+maintainers:
+  - Rafał Miłecki <rafal@milecki.pl>
+
+properties:
+  compatible:
+    enum:
+      - brcm,bcm4908-pmc # PMC on BCM4908 and compatible SoCs
+
+  reg:
+    maxItems: 1
+
+  syscon-misc:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle to the MISC system controller node.
+
+  syscon-procmon:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle to the PROC MON system controller node.
+
+  big-endian:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description:
+      Flag to use for block working in big endian mode.
+
+  "#reset-cells":
+    const: 2
+
+required:
+  - compatible
+  - reg
+  - syscon-misc
+  - syscon-procmon
+  - "#reset-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    pmc: reset-controller@80200000 {
+        compatible = "brcm,bcm4908-pmc";
+        reg = <0x80200000 0x5000>;
+        syscon-misc = <&misc>;
+        syscon-procmon = <&procmon>;
+        #reset-cells = <2>;
+    };
+
+    procmon: syscon@80280000 {
+        compatible = "brcm,misc", "syscon";
+        reg = <0x80280000 0x1000>;
+    };
+
+    misc: syscon@ff802600 {
+        compatible = "brcm,misc", "syscon";
+        reg = <0xff802600 0xe4>;
+    };
-- 
2.27.0

