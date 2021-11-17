Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B548F454947
	for <lists+devicetree@lfdr.de>; Wed, 17 Nov 2021 15:52:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230085AbhKQOzj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Nov 2021 09:55:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34220 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230459AbhKQOzh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 Nov 2021 09:55:37 -0500
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 98DD4C061764
        for <devicetree@vger.kernel.org>; Wed, 17 Nov 2021 06:52:38 -0800 (PST)
Received: by mail-ed1-x532.google.com with SMTP id b15so12350694edd.7
        for <devicetree@vger.kernel.org>; Wed, 17 Nov 2021 06:52:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=6a4q4pVmQUXtzn45oqIQ9MFMoZugw/FbbL0Z8a0gnOg=;
        b=rUtkJyDRSqarprvrSuT5wzU3tWckAsA4nxQrLS6fI/rjg9yCAfIUAYsw2Xh78wJir6
         uMpgv0/Dv08euJ1JMFVLijyLbdf3oUHnfoeTp7nKGM/aOEAO4zMIDG0E3MbnKwyJP0GZ
         QA8FRC0w5SQa5Djk+ory93VLGjtjzZbWrm+PzPodr0WyLRNV41q2HFugiwMsSe0XX1y7
         RFsb+j1o5sU/R6CkLqFA1qRZO56JEVcWrtxfajNJW4cBcIEFdKQEjFaf5PLTHz0/SXmD
         ULhxuhsyysxIAWf/l1GMyDFI7K91UWKXZ8T+jWEDwZTsxa3tYoBA1d4m8K5gMn94x6yp
         3hSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=6a4q4pVmQUXtzn45oqIQ9MFMoZugw/FbbL0Z8a0gnOg=;
        b=eEEX+4jQWLuGfre3/AzRjwEqtsDwRm72vEn9Ha9MtDlSwrI9z6z2UjPln8EylOWkS1
         592WhsTa89ZBl2x/n485Ct3FcbfA4oTs2zYsXFAMoZVAUyVnA2W9P6Ay6yPPUyqLaCBB
         lf6W5xGaXAtN0R2EQjwZW9UV88JvQd/0LGHpLy+0PToKxNcv+AbRb1bp3OWis+pdzbvN
         TgYZZLVPhPgDdA7DLaTBWyHXTxhhdrKef5BV6vjJqkVx79d5Yw8oUn8WW95S15a+i5Ta
         ZnIBqwW2sEotvkfZpkAqSODiD1/PAqUk5pQWCplWhHrMNs9tTu5K5BmsIf3ktCVJ3exj
         byJg==
X-Gm-Message-State: AOAM531Yj+C3HBnfuo3NI9HqZoUGty35jsiYBYY952e5cv4qam6qOrNQ
        gRGj6+fuKlvqh8wkjKGudc0VxQ==
X-Google-Smtp-Source: ABdhPJwHaeJCQFolHmoVIN0lPrlp5s2Djgnu9qxNlKfuAMmCjAAT2Yf+Qc4rCkHRafGx6mc9LtDV1Q==
X-Received: by 2002:a05:6402:d49:: with SMTP id ec9mr22561651edb.235.1637160757182;
        Wed, 17 Nov 2021 06:52:37 -0800 (PST)
Received: from localhost.localdomain (cpc92880-cmbg19-2-0-cust679.5-4.cable.virginm.net. [82.27.106.168])
        by smtp.gmail.com with ESMTPSA id gs15sm63917ejc.42.2021.11.17.06.52.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Nov 2021 06:52:36 -0800 (PST)
From:   Jean-Philippe Brucker <jean-philippe@linaro.org>
To:     robh+dt@kernel.org
Cc:     iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, will@kernel.org,
        robin.murphy@arm.com, joro@8bytes.org, mark.rutland@arm.com,
        jkchen@linux.alibaba.com, leo.yan@linaro.org,
        uchida.jun@socionext.com,
        Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: [PATCH v2 1/3] dt-bindings: Add Arm SMMUv3 PMCG binding
Date:   Wed, 17 Nov 2021 14:48:43 +0000
Message-Id: <20211117144844.241072-2-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211117144844.241072-1-jean-philippe@linaro.org>
References: <20211117144844.241072-1-jean-philippe@linaro.org>
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
Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 .../bindings/perf/arm,smmu-v3-pmcg.yaml       | 70 +++++++++++++++++++
 1 file changed, 70 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/perf/arm,smmu-v3-pmcg.yaml

diff --git a/Documentation/devicetree/bindings/perf/arm,smmu-v3-pmcg.yaml b/Documentation/devicetree/bindings/perf/arm,smmu-v3-pmcg.yaml
new file mode 100644
index 000000000000..a4b53a6a1ebf
--- /dev/null
+++ b/Documentation/devicetree/bindings/perf/arm,smmu-v3-pmcg.yaml
@@ -0,0 +1,70 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/perf/arm,smmu-v3-pmcg.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Arm SMMUv3 Performance Monitor Counter Group
+
+maintainers:
+  - Will Deacon <will@kernel.org>
+  - Robin Murphy <robin.murphy@arm.com>
+
+description: |
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
+          - const: arm,mmu-600-pmcg
+          - const: arm,smmu-v3-pmcg
+      - const: arm,smmu-v3-pmcg
+
+  reg:
+    items:
+      - description: Register page 0
+      - description: Register page 1, if SMMU_PMCG_CFGR.RELOC_CTRS = 1
+    minItems: 1
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
+anyOf:
+  - required:
+      - interrupts
+  - required:
+      - msi-parent
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    pmu@2b420000 {
+            compatible = "arm,smmu-v3-pmcg";
+            reg = <0x2b420000 0x1000>,
+                  <0x2b430000 0x1000>;
+            interrupts = <GIC_SPI 80 IRQ_TYPE_EDGE_RISING>;
+            msi-parent = <&its 0xff0000>;
+    };
+
+    pmu@2b440000 {
+            compatible = "arm,smmu-v3-pmcg";
+            reg = <0x2b440000 0x1000>,
+                  <0x2b450000 0x1000>;
+            interrupts = <GIC_SPI 81 IRQ_TYPE_EDGE_RISING>;
+            msi-parent = <&its 0xff0000>;
+    };
-- 
2.33.1

