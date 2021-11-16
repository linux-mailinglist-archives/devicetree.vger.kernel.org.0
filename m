Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7C95A453173
	for <lists+devicetree@lfdr.de>; Tue, 16 Nov 2021 12:52:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235567AbhKPLz3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Nov 2021 06:55:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60220 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235755AbhKPLzQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 Nov 2021 06:55:16 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 921D1C061204
        for <devicetree@vger.kernel.org>; Tue, 16 Nov 2021 03:52:15 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id d5so37027183wrc.1
        for <devicetree@vger.kernel.org>; Tue, 16 Nov 2021 03:52:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Uzf6TNNMxMPnOfXBHYbEbeDQIC8p4g1MVfRgzs5DDGs=;
        b=oKTFvd4w68oBu2CeuPt31sqqYIjNp9IAcQ7NcI6owvfCJYmX6gfLEBtIhuxK/esVRG
         BUShtrErXbhwl0N3F5y1vzNLm8bzBGb+qUKBYDEpXGohxzSNg3Z+1ik+QjFpZ2Ive+7Y
         kgILxurA4lyt2wId8zgdPW/qvoKrKIFLn5tRCbu//hAodJmEkp94+YympfrF6+0t4Xzw
         2akgbzEimSjJ6cV8zz8hv69AsEEIHbwCEU4ppcPOb6d4aA8Z/zADjAaH4fLri2kIu3HX
         IPBhXSMMEuDHKaUD4FYqxNWA0TpqElOmD8f+W1waO92gvbgXhHBAIRcTvWuGJHetCN+3
         hnAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Uzf6TNNMxMPnOfXBHYbEbeDQIC8p4g1MVfRgzs5DDGs=;
        b=BU2jQwTeTYFmHTs5YDLXlmmJwuRmoo7074iK4hIepz4tRadkxqiHCny6BVQZwF4Led
         1PVl3ygV/DZt/zvQ/oEzUB/M5XMoklBnJCSj9Z+0ZZyExwTHuBIdgG2g/lcnAgpKUp3U
         dBQhTE87AWZpuxBOJEXwR+cZ3CgADldOPKPvcb0DJMSeTzcLV8BdKYkYgc29VmH41yp5
         oUxKVlNDI7XGsfAVHkxaD70RraYz8M8OT2UXuSYHBF/HkW2oegHkoGY0a1vjtKJUqVuK
         Tt3B1UqoSqCsJLZXnDvq3okH8M4FCA7qCbT27p0qvCPn03IxkAjKURPQJ3/91zofVluH
         WG9g==
X-Gm-Message-State: AOAM533GT0WgTrcGVlEJC20F+MTXtxBcnjwhFblnKPjI4pkHBOA7RutJ
        Gf3XDFASYdGpeePpG3u/6KBM5A==
X-Google-Smtp-Source: ABdhPJzIvcIdlgIhMAdlJboo29rVKBN0AAQX8dR01v87R/BtaSGuwYHNT8+GzAGQsOFuKHHGbQ/WSA==
X-Received: by 2002:a5d:6d07:: with SMTP id e7mr8159934wrq.311.1637063534170;
        Tue, 16 Nov 2021 03:52:14 -0800 (PST)
Received: from localhost.localdomain (cpc92880-cmbg19-2-0-cust679.5-4.cable.virginm.net. [82.27.106.168])
        by smtp.gmail.com with ESMTPSA id b6sm2232846wmq.45.2021.11.16.03.52.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Nov 2021 03:52:13 -0800 (PST)
From:   Jean-Philippe Brucker <jean-philippe@linaro.org>
To:     robh+dt@kernel.org
Cc:     iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, will@kernel.org,
        robin.murphy@arm.com, joro@8bytes.org, mark.rutland@arm.com,
        jkchen@linux.alibaba.com, leo.yan@linaro.org,
        uchida.jun@socionext.com,
        Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: [PATCH 1/2] dt-bindings: Add Arm SMMUv3 PMCG binding
Date:   Tue, 16 Nov 2021 11:35:36 +0000
Message-Id: <20211116113536.69758-2-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211116113536.69758-1-jean-philippe@linaro.org>
References: <20211116113536.69758-1-jean-philippe@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add binding for the Arm SMMUv3 PMU. Each node represents a PMCG, and is
placed as a sibling node of the SMMU. Although the PMCGs registers may
be within the SMMU MMIO region, they are separate devices, and there can
be multiple PMCG devices for each SMMU (for example one for the TCU and
one for each TBU).

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 .../bindings/iommu/arm,smmu-v3-pmcg.yaml      | 67 +++++++++++++++++++
 1 file changed, 67 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/iommu/arm,smmu-v3-pmcg.yaml

diff --git a/Documentation/devicetree/bindings/iommu/arm,smmu-v3-pmcg.yaml b/Documentation/devicetree/bindings/iommu/arm,smmu-v3-pmcg.yaml
new file mode 100644
index 000000000000..a893e071fdb4
--- /dev/null
+++ b/Documentation/devicetree/bindings/iommu/arm,smmu-v3-pmcg.yaml
@@ -0,0 +1,67 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/iommu/arm,smmu-v3-pmcg.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Arm SMMUv3 Performance Monitor Counter Group
+
+maintainers:
+  - Will Deacon <will@kernel.org>
+  - Robin Murphy <Robin.Murphy@arm.com>
+
+description: |+
+  An SMMUv3 may have several Performance Monitor Counter Group (PMCG).
+  They are standalone performance monitoring units that support both
+  architected and IMPLEMENTATION DEFINED event counters.
+
+properties:
+  $nodename:
+    pattern: "^pmu@[0-9a-f]*"
+  compatible:
+    oneOf:
+      - items:
+        - enum:
+          - hisilicon,smmu-v3-pmcg-hip08
+        - const: arm,smmu-v3-pmcg
+      - const: arm,smmu-v3-pmcg
+
+  reg:
+    description: |
+      Base addresses of the PMCG registers. Either a single address for Page 0
+      or an additional address for Page 1, where some registers can be
+      relocated with SMMU_PMCG_CFGR.RELOC_CTRS.
+    minItems: 1
+    maxItems: 2
+
+  interrupts:
+    maxItems: 1
+
+  msi-parent: true
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |+
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    pmu@2b420000 {
+            compatible = "arm,smmu-v3-pmcg";
+            reg = <0 0x2b420000 0 0x1000>,
+                  <0 0x2b430000 0 0x1000>;
+            interrupts = <GIC_SPI 80 IRQ_TYPE_EDGE_RISING>;
+            msi-parent = <&its 0xff0000>;
+    };
+
+    pmu@2b440000 {
+            compatible = "arm,smmu-v3-pmcg";
+            reg = <0 0x2b440000 0 0x1000>,
+                  <0 0x2b450000 0 0x1000>;
+            interrupts = <GIC_SPI 81 IRQ_TYPE_EDGE_RISING>;
+            msi-parent = <&its 0xff0000>;
+    };
-- 
2.33.1

