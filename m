Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5D8262E8FB8
	for <lists+devicetree@lfdr.de>; Mon,  4 Jan 2021 05:12:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727582AbhADEMb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 3 Jan 2021 23:12:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48630 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726825AbhADEMb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 3 Jan 2021 23:12:31 -0500
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com [IPv6:2607:f8b0:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B2CFDC061795
        for <devicetree@vger.kernel.org>; Sun,  3 Jan 2021 20:11:50 -0800 (PST)
Received: by mail-pl1-x62d.google.com with SMTP id g3so13831176plp.2
        for <devicetree@vger.kernel.org>; Sun, 03 Jan 2021 20:11:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=PHjS6xkWESihBsNq4qcCg6QnCMAV/jOfgOFiTrhYkeg=;
        b=ojLWO8FyubFM7XkK10yDB4nf18PdsRA4j20KJpqb7sZyXWBg+Imh2CYq1b2xz2HiuT
         pReMw2wYur8JpJQYL4tJZqrUTASGmB6XC4V+I1s7MKoGrrbwGMgOSNtlgIWGj/yJJyUf
         NCVvFeHp0W6pdtplPyMByVXjznPFk7LAX6Y23L1M8ad+7XUk1dZyIcJOoyvLim0JPmM0
         VS2CQ883Y7pKt0PiFN+ot1HpxB7FgzCrrTsgzMCQbxGBeJjLg/j2RiXaf/0MqaZBQq43
         /xFPn4ZNQ/dPunceMZ8nJo8xYzagA694x+bmAv/HGxH044bWMSWOju1iJfhNlX5PKS1d
         e9tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=PHjS6xkWESihBsNq4qcCg6QnCMAV/jOfgOFiTrhYkeg=;
        b=sONSdtgN7hQj2Zz2uFyWSrdwf9bg1IPt9WD/xLddYLcJ2oGNhMP+2P/Dda1VqAGWjN
         OQqqVb/gKpBBNilxTjBzke+6L0CcVwYFZEaHM6+FpQw+x3aneA1pFYkjUz1HS99a3HGl
         cyw2eurAfVS1Ag4sQfHdWMCs5e5586qB/Lr/adrNChZ3sG+8UZIFFeTUBG+7TJj9FtDt
         TXLrV8ru5SUPJ+aA/D40bh5FPLDd2toeEhHHDHz8ZJs7hxrsoEEFlwtHjsNuic/eRsTp
         NnoLVijbUWq5R3A9Ydd7xhTs74qtfG+v9Yrxkj/bmytONPR6USCiXZSew+ypLy+eEYLi
         1ekg==
X-Gm-Message-State: AOAM530XZYGp520aMshuoS6e65zhM4PunrRAikeJ82CAKH17HcVAvJMX
        aEt/z95AqUabFLCohI+qmPy8
X-Google-Smtp-Source: ABdhPJz0Oi/0MPLCjlzMY+GUjSg/QOVFyyIvUbsJ6BWQbQmvlVxkdTnsbTINJ0kBmzF60etyR05xSw==
X-Received: by 2002:a17:902:9a44:b029:da:3d4f:abe1 with SMTP id x4-20020a1709029a44b02900da3d4fabe1mr70159622plv.16.1609733510263;
        Sun, 03 Jan 2021 20:11:50 -0800 (PST)
Received: from localhost.localdomain ([103.77.37.160])
        by smtp.gmail.com with ESMTPSA id x22sm54899930pfc.19.2021.01.03.20.11.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 03 Jan 2021 20:11:49 -0800 (PST)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
        robh+dt@kernel.org
Cc:     bjorn.andersson@linaro.org, linux-mtd@lists.infradead.org,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v4 1/4] dt-bindings: mtd: partitions: Add binding for Qcom SMEM parser
Date:   Mon,  4 Jan 2021 09:41:34 +0530
Message-Id: <20210104041137.113075-2-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210104041137.113075-1-manivannan.sadhasivam@linaro.org>
References: <20210104041137.113075-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add YAML binding for Qualcomm Shared Memory (SMEM) Flash partition
parser.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../mtd/partitions/qcom,smem-part.yaml        | 33 +++++++++++++++++++
 1 file changed, 33 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mtd/partitions/qcom,smem-part.yaml

diff --git a/Documentation/devicetree/bindings/mtd/partitions/qcom,smem-part.yaml b/Documentation/devicetree/bindings/mtd/partitions/qcom,smem-part.yaml
new file mode 100644
index 000000000000..cf3f8c1e035d
--- /dev/null
+++ b/Documentation/devicetree/bindings/mtd/partitions/qcom,smem-part.yaml
@@ -0,0 +1,33 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mtd/partitions/qcom,smem-part.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm SMEM NAND flash partition parser binding
+
+maintainers:
+  - Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
+
+description: |
+  The Qualcomm SoCs supporting the NAND controller interface features a Shared
+  Memory (SMEM) based partition table scheme. The maximum partitions supported
+  varies between partition table revisions. V3 supports maximum 16 partitions
+  and V4 supports 48 partitions.
+
+properties:
+  compatible:
+    const: qcom,smem-part
+
+required:
+  - compatible
+
+additionalProperties: false
+
+examples:
+  - |
+    flash {
+        partitions {
+            compatible = "qcom,smem-part";
+        };
+    };
-- 
2.25.1

