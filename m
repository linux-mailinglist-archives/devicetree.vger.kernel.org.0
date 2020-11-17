Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 640C02B6BFC
	for <lists+devicetree@lfdr.de>; Tue, 17 Nov 2020 18:41:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729638AbgKQRjf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Nov 2020 12:39:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43010 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726560AbgKQRjf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Nov 2020 12:39:35 -0500
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com [IPv6:2607:f8b0:4864:20::543])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CEEF6C0613CF
        for <devicetree@vger.kernel.org>; Tue, 17 Nov 2020 09:39:34 -0800 (PST)
Received: by mail-pg1-x543.google.com with SMTP id 62so16494444pgg.12
        for <devicetree@vger.kernel.org>; Tue, 17 Nov 2020 09:39:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=Z7z9ZRILC9uN9iHlx1xbJ9BYeKh/BzimXNJ9muC2tZE=;
        b=iMhheqEEtzlcTH3JWm7eKlSWO6dx+/gAWszscdzjMx9IT9JSPVzPdUu7Xlocg3dVp4
         RS5+e1e1hjcLCK4A+Xpo4IIlMmbkHzIIbD2VtAQsYELArr5qAx+uagVGYh1eFhhw1IeX
         mHCxvRlro8+iZzHxTuB5nBNU9tQ3IigTM/1s0rYId0eGZI3F8iOZRRHbpqUW1jtrZpmx
         JjLzFAODDzSPZMWTuznEM3H8wb1zgbLgEqQPXiR6p5/xCR8fdLQYDI9JgtN6T/0q+0tI
         1IKamxmeuoflCVM4GPjY7GWDfebj3peqcn6JdlCYn1E2pW8mSoz6M6WDcQsI1WCDXFrX
         uqNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=Z7z9ZRILC9uN9iHlx1xbJ9BYeKh/BzimXNJ9muC2tZE=;
        b=ETJ2JWdlbbTiCl4q714PCn2t8LAUd154sOyJ3P82zOPpq8pc7Lgib3upm8K4P1fgrj
         3Ik0lrDqMFELV/bgYz7vIerajfRXele5nYPeGucc4qlfOj2iyaz3SCbkQxIPymUMURA0
         O4zG5v75j1w/Uco+MJqhWbjLkjFv30sVvN98hsenRynITOoK+rxsH4UbTcyyPaWsvrf+
         fBxNDAfqnUCL5aNjaEB2BLlpjPjvuXPO2SVgKbmIfatZeJj3PxMaQHvNSxBVbuzFSRIy
         wuABR9qBytPBGaxLaYOrda+YHafR6EsBmBm4vdNmux4OdyG7UZjtO0dsCFckjE6VKpsw
         MBRw==
X-Gm-Message-State: AOAM533l5yk0F0hInLTkoRL0Vwnmjh1VPKlCgoNTwx4ojEYgmAv3wWyr
        nWPbT7ZDpZjxAy2oIZtshe4nGa15fFEB
X-Google-Smtp-Source: ABdhPJyiyMmrvmPp7kwm8dB7Il6lF8A+hmI+MKoQZ7IM7qdwm41PZpdxi/RlvI+65FSOqv9cdsE5pA==
X-Received: by 2002:aa7:86c9:0:b029:18b:b0c:53e5 with SMTP id h9-20020aa786c90000b029018b0b0c53e5mr381547pfo.57.1605634774347;
        Tue, 17 Nov 2020 09:39:34 -0800 (PST)
Received: from localhost.localdomain ([103.59.133.81])
        by smtp.googlemail.com with ESMTPSA id a21sm1751330pjq.37.2020.11.17.09.39.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Nov 2020 09:39:33 -0800 (PST)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
        robh+dt@kernel.org
Cc:     bjorn.andersson@linaro.org, linux-mtd@lists.infradead.org,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 1/4] dt-bindings: mtd: partitions: Add binding for Qcom SMEM parser
Date:   Tue, 17 Nov 2020 23:09:06 +0530
Message-Id: <20201117173909.23585-2-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201117173909.23585-1-manivannan.sadhasivam@linaro.org>
References: <20201117173909.23585-1-manivannan.sadhasivam@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add YAML binding for Qualcomm Shared Memory (SMEM) Flash partition
parser.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 .../mtd/partitions/qcom,smem-part.yaml        | 31 +++++++++++++++++++
 1 file changed, 31 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mtd/partitions/qcom,smem-part.yaml

diff --git a/Documentation/devicetree/bindings/mtd/partitions/qcom,smem-part.yaml b/Documentation/devicetree/bindings/mtd/partitions/qcom,smem-part.yaml
new file mode 100644
index 000000000000..0682aef2d54f
--- /dev/null
+++ b/Documentation/devicetree/bindings/mtd/partitions/qcom,smem-part.yaml
@@ -0,0 +1,31 @@
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
+examples:
+  - |
+    flash@0 {
+        partitions {
+            compatible = "qcom,smem-part";
+        };
+    };
-- 
2.17.1

