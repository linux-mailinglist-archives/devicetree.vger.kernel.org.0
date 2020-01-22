Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6DB3A145C1B
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2020 19:58:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728709AbgAVS5z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Jan 2020 13:57:55 -0500
Received: from mail-wr1-f68.google.com ([209.85.221.68]:33467 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726584AbgAVS4R (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Jan 2020 13:56:17 -0500
Received: by mail-wr1-f68.google.com with SMTP id b6so275974wrq.0
        for <devicetree@vger.kernel.org>; Wed, 22 Jan 2020 10:56:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=nTFFco0gWzvhgT9KdZyGts1IZHmn3ADc6A60yVAjcjA=;
        b=ZjOwjoD/cbr8k9Xxhx4R424gVxquYdps7mK8cA1ImTsO9C/5XEoHLhc9oIJ/0NnwfN
         wTt7x7B690bbXFdBMyaS/sTUbZwa5ltfOsqNamE2j3oBHYZ4dUxK92M5BusLEuIwL1hn
         2O4zsqmdan6atXOV5E5zNZ/72+vXJ89uljeEARootP88cc+OnUdItnegGSiUJgdj4hPG
         YznZ2+lqLOPUGKHreflRZP44P2b7YDP01rysqoosjBNm5d2ooZc0mOU3mzJuh+qKR/a4
         cZPDWHgboh+qq2kumSFMh9wbqtf8083/kgpHYGDmSFUaz3A4ry0eDY8GPwTajiGH46Ss
         pJdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=nTFFco0gWzvhgT9KdZyGts1IZHmn3ADc6A60yVAjcjA=;
        b=D4uMgKnV6fWEwBfO6Cy4RAXUqorAeiK7xybBoTbFxShL8i7vQ8NfypapWh+EbzHWyI
         DxaGKisQ/U/khq1jFxiXgcC/F2IrQ1/RfBCqNYW7Aew5uZwvm3H8CJWCIc5FUQ7nkrNz
         g1PWzbIWRXiiUsMXYqshBkIKsPk1bRtGsfkN+mnQekZMZTVY1H31G2dvH4srk1Cjar7Q
         vIT+Px5ME/2Y65DZnC1vZc3Bx4Dygp8RNyASBrdUDJMn8HccbSH94c6gQ3J2PQmmWLrm
         C9K76xAtaRrFIXX6YQK7+RZMkXAotcZKGdwOYhNck0S5JdN0IFcx9Uj6Lylfg6ybFv2Q
         nVeA==
X-Gm-Message-State: APjAAAWXxasPtr1MXvNyHQ3Db4z5kFWhtG0cySExTT573idJiDvWyznb
        tRzHwAhXOHfyrXvGEFnFRovGCg==
X-Google-Smtp-Source: APXvYqwVhDR6TNqyPyw33lUIfgRMKQbwdR7UjTpAY2sMV4OM0YaexsUdbeSvGVxj8DKbPYlm+ZHB1A==
X-Received: by 2002:adf:ce87:: with SMTP id r7mr12595169wrn.245.1579719375614;
        Wed, 22 Jan 2020 10:56:15 -0800 (PST)
Received: from localhost.localdomain ([176.61.57.127])
        by smtp.gmail.com with ESMTPSA id q15sm58590390wrr.11.2020.01.22.10.56.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jan 2020 10:56:15 -0800 (PST)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
        gregkh@linuxfoundation.org, jackp@codeaurora.org, balbi@kernel.org,
        bjorn.andersson@linaro.org
Cc:     linux-kernel@vger.kernel.org,
        Sriharsha Allenki <sallenki@codeaurora.org>,
        Anu Ramanathan <anur@codeaurora.org>,
        Shawn Guo <shawn.guo@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Jorge Ramirez-Ortiz <jorge.ramirez.ortiz@gmail.com>,
        devicetree@vger.kernel.org,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: [PATCH v3 02/19] dt-bindings: phy: Add Qualcomm Synopsys Hi-Speed USB PHY binding
Date:   Wed, 22 Jan 2020 18:55:53 +0000
Message-Id: <20200122185610.131930-3-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200122185610.131930-1-bryan.odonoghue@linaro.org>
References: <20200122185610.131930-1-bryan.odonoghue@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Sriharsha Allenki <sallenki@codeaurora.org>

Adds bindings for QCS404 USB PHY supporting Low-Speed, Full-Speed and
Hi-Speed USB connectivity on Qualcomm chipsets.

[bod: Converted to YAML. Changed name dropping snps, 28nm components]

Signed-off-by: Sriharsha Allenki <sallenki@codeaurora.org>
Signed-off-by: Anu Ramanathan <anur@codeaurora.org>
Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
Signed-off-by: Shawn Guo <shawn.guo@linaro.org>
Cc: Andy Gross <agross@kernel.org>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Jorge Ramirez-Ortiz <jorge.ramirez.ortiz@gmail.com>
Cc: linux-arm-msm@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Cc: devicetree@vger.kernel.org
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 .../bindings/phy/qcom,qcs404-usb-hs.yaml      | 77 +++++++++++++++++++
 1 file changed, 77 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,qcs404-usb-hs.yaml

diff --git a/Documentation/devicetree/bindings/phy/qcom,qcs404-usb-hs.yaml b/Documentation/devicetree/bindings/phy/qcom,qcs404-usb-hs.yaml
new file mode 100644
index 000000000000..d71beb822ae2
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/qcom,qcs404-usb-hs.yaml
@@ -0,0 +1,77 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/phy/qcom,qcs404-usb-hs.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Qualcomm Synopsys QCS-404 High-Speed PHY
+
+maintainers:
+  - Bryan O'Donoghue <bryan.odonoghue@linaro.org>
+
+description: |
+  Qualcomm QCS-404 Low-Speed, Full-Speed, Hi-Speed USB PHY
+
+properties:
+  compatible:
+    enum:
+      - qcom,qcs404-usb-hsphy
+
+  reg:
+    maxItems: 1
+    description: USB PHY base address and length of the register map.
+
+  "#phy-cells":
+    const: 0
+    description: Should be 0. See phy/phy-bindings.txt for details.
+
+  clocks:
+    minItems: 3
+    maxItems: 3
+    description: phandles to rpmcc ref clock, PHY AHB clock, rentention clock.
+
+  clock-names:
+    items:
+      - const: ref
+      - const: phy
+      - const: sleep
+
+  resets:
+    items:
+      - description: PHY core reset
+      - description: POR reset
+
+  reset-names:
+    items:
+      - const: phy
+      - const: por
+
+  vdd-supply:
+    maxItems: 1
+    description: phandle to the regulator VDD supply node.
+
+  vdda1p8-supply:
+    maxItems: 1
+    description: phandle to the regulator 1.8V supply node.
+
+  vdda3p3-supply:
+    maxItems: 1
+    description: phandle to the regulator 3.3V supply node.
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,gcc-qcs404.h>
+    #include <dt-bindings/clock/qcom,rpmcc.h>
+    usb2_phy_prim: phy@7a000 {
+        compatible = "qcom,qcs404-usb-hsphy";
+        reg = <0x0007a000 0x200>;
+        #phy-cells = <0>;
+        clocks = <&rpmcc RPM_SMD_LN_BB_CLK>,
+                 <&gcc GCC_USB_HS_PHY_CFG_AHB_CLK>,
+                 <&gcc GCC_USB2A_PHY_SLEEP_CLK>;
+        clock-names = "ref", "phy", "sleep";
+        resets = <&gcc GCC_USB_HS_PHY_CFG_AHB_BCR>,
+                 <&gcc GCC_USB2A_PHY_BCR>;
+        reset-names = "phy", "por";
+    };
+...
-- 
2.25.0

