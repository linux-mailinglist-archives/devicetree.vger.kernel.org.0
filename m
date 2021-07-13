Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EB4413C6DBF
	for <lists+devicetree@lfdr.de>; Tue, 13 Jul 2021 11:50:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235118AbhGMJw6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Jul 2021 05:52:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36668 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235071AbhGMJw5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Jul 2021 05:52:57 -0400
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 75C58C0613DD
        for <devicetree@vger.kernel.org>; Tue, 13 Jul 2021 02:50:07 -0700 (PDT)
Received: by mail-lj1-x22f.google.com with SMTP id b40so29022338ljf.12
        for <devicetree@vger.kernel.org>; Tue, 13 Jul 2021 02:50:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=PbjjI7To1oxdeT5SBPUuTEbAgfxdc7ZvTSRZwXZs6aA=;
        b=Y4gbEcMfyNd34J2nHOcpJoQC0/wqENhnUoh8Ru3zfQ9Stn8ugZhiY3oNfz18PnwGj2
         guQvD/7RpkNI54ISTL9z20UpZ+ScCsZ6AeNqlEsBlFNqD/PaicjgMw4bdKb2MH/dPEwv
         R/Z0yF0N1PA28qLdjdQ2y/V9Q7JriOI/hT4gwUyL6TsMTXKyqSRDXnGR1V+vugc+myg2
         b8Cnu4hy3FR79uZb6rXVYfkTr1wYU7IpXQMqA9N7VTL5WCMWqdhEH3sODWX1pPqMylC9
         d2kUqKqzqLnyrHZ3OwgTp81I5DKWhdKvNzog86BHjUHNhvd8kig/jI/xd2XW4XsqFqnU
         8xQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=PbjjI7To1oxdeT5SBPUuTEbAgfxdc7ZvTSRZwXZs6aA=;
        b=sS8zyYF872cNGElRffZu79jSqxlnJECCPni0KSNqK3D2jnJFVwLcrDxWxIeX6XADeh
         w0AhooX2BdJd/zyT7MSN/RvMaT0+83V1m+BeEktmWnx4NRPSAq6YXB+uUhXWHykA4TKT
         gyTLXhSDbpqdhcIOjjEYjG41F32yHt4TsoFT0HpsDzOCjQRRGFiMRlyZ28uVIIPA85oy
         jjb/etEpeRZVttLHdkURrNoXHYoeh/9TIWhpaN2OX8UY3Q4NJrDgai74+yLgry5yqgA8
         aaGkTQuEpAcAEzw/j0Ld1sgVSU//9Me3ejBXCJTcifF8j5jUS6QmK+xOoyGELkOQaBVT
         66dA==
X-Gm-Message-State: AOAM530uWhdbut+nxqiqze7od6WVqmbMn1s805i9DKCU6hnki+cWAG/v
        lbvlt3tQUtMjbehHupKwF1s=
X-Google-Smtp-Source: ABdhPJwdK54MXB7bJefo8IjSWJ3TelKQ48nsANICiCPg4/Jh6FjPVs6x9H8l9EmswKIRjZs9ifPfuQ==
X-Received: by 2002:a2e:7e06:: with SMTP id z6mr3469865ljc.394.1626169805846;
        Tue, 13 Jul 2021 02:50:05 -0700 (PDT)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id j5sm1420984lfe.124.2021.07.13.02.50.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jul 2021 02:50:05 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Lee Jones <lee.jones@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Florian Fainelli <f.fainelli@gmail.com>,
        Vivek Unune <npcomplete13@gmail.com>,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH V3 RESEND] dt-bindings: mfd: add Broadcom CRU
Date:   Tue, 13 Jul 2021 11:47:45 +0200
Message-Id: <20210713094745.2586-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

CRU is a block used in e.g. Northstar devices. It can be seen in the
bcm5301x.dtsi and this binding documents its proper usage.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
Reviewed-by: Rob Herring <robh@kernel.org>
---
V2: Use complete binding & change additionalProperties to false
V3: Use clock-controller@ for clocks
RESEND: Patch is ready for pushing now since 5.14-rc1 is out

Lee: last time I sent this patch you couldn't push it because of docs
validation dependency on 3 following commits:
ac5f8197d15c ("dt-bindings: pinctrl: convert Broadcom Northstar to the json-schema")
08e9fdfbb224 ("dt-bindings: thermal: brcm,ns-thermal: Convert to the json-schema")
8f711f68cffd ("dt-bindings: clock: brcm, iproc-clocks: convert to the json-schema")

All above commits made it into the 5.14-rc1.
---
 .../devicetree/bindings/mfd/brcm,cru.yaml     | 86 +++++++++++++++++++
 1 file changed, 86 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mfd/brcm,cru.yaml

diff --git a/Documentation/devicetree/bindings/mfd/brcm,cru.yaml b/Documentation/devicetree/bindings/mfd/brcm,cru.yaml
new file mode 100644
index 000000000000..fc1317ab3226
--- /dev/null
+++ b/Documentation/devicetree/bindings/mfd/brcm,cru.yaml
@@ -0,0 +1,86 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mfd/brcm,cru.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Broadcom CRU
+
+maintainers:
+  - Rafał Miłecki <rafal@milecki.pl>
+
+description: |
+  Broadcom CRU ("Clock and Reset Unit" or "Central Resource Unit") is a hardware
+  block grouping smaller blocks. On Broadcom Northstar platform it contains e.g.
+  clocks, pinctrl, USB PHY and thermal.
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - brcm,ns-cru
+      - const: simple-mfd
+
+  reg:
+    description: CRU registers
+
+  ranges: true
+
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 1
+
+  pinctrl:
+    $ref: ../pinctrl/brcm,ns-pinmux.yaml
+
+patternProperties:
+  '^clock-controller@[a-f0-9]+$':
+    $ref: ../clock/brcm,iproc-clocks.yaml
+
+  '^thermal@[a-f0-9]+$':
+    $ref: ../thermal/brcm,ns-thermal.yaml
+
+additionalProperties: false
+
+required:
+  - reg
+
+examples:
+  - |
+    cru-bus@1800c100 {
+        compatible = "brcm,ns-cru", "simple-mfd";
+        reg = <0x1800c100 0x1d0>;
+        ranges;
+        #address-cells = <1>;
+        #size-cells = <1>;
+
+        clock-controller@100 {
+            #clock-cells = <1>;
+            compatible = "brcm,nsp-lcpll0";
+            reg = <0x100 0x14>;
+            clocks = <&osc>;
+            clock-output-names = "lcpll0", "pcie_phy", "sdio", "ddr_phy";
+        };
+
+        clock-controller@140 {
+            #clock-cells = <1>;
+            compatible = "brcm,nsp-genpll";
+            reg = <0x140 0x24>;
+            clocks = <&osc>;
+            clock-output-names = "genpll", "phy", "ethernetclk", "usbclk",
+                                 "iprocfast", "sata1", "sata2";
+        };
+
+        pinctrl {
+            compatible = "brcm,bcm4708-pinmux";
+            offset = <0x1c0>;
+        };
+
+        thermal@2c0 {
+            compatible = "brcm,ns-thermal";
+            reg = <0x2c0 0x10>;
+            #thermal-sensor-cells = <0>;
+        };
+    };
-- 
2.26.2

