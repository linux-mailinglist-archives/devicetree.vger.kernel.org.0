Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 68A2E4BFBAA
	for <lists+devicetree@lfdr.de>; Tue, 22 Feb 2022 16:02:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233143AbiBVPBZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Feb 2022 10:01:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47912 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231680AbiBVPAt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Feb 2022 10:00:49 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DD1BA10EC48
        for <devicetree@vger.kernel.org>; Tue, 22 Feb 2022 07:00:03 -0800 (PST)
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com [209.85.218.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id B3B833FCA0
        for <devicetree@vger.kernel.org>; Tue, 22 Feb 2022 15:00:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1645542002;
        bh=1P7qQVIntzoTj3/oLgMEwV7rKt1l7cL2m41gmrqktTo=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=kTN7d58ju7YMeldjWpos3s/nOK3qGWRmL8sJtBK8sqCWDOaXVZajbAkPtOnrbdalx
         o3FLGV0fnrbBVJtJWpket/laxYvCzz0M7DYv4yOHToOUaGyy0LORxhbSr+7II0Q1LB
         bSf8UFm45hU+DWk/uwJOkqQ96DPXbzwFu9VbLzUT5+xSVhNdczQZaOaCmBRX++JDsp
         O5PIwFerGE3dEt99mZt61B5rYQ/acPw8R1IGxNhd9tJ9avpdIlh/OFsGfAURB0cBxp
         +cMUKeAJrdDzYjYTf/AdnDzn/h8MrupxJM0/Mro0WGaOkQRiF2WBOQ94+utPXL7anW
         +WGW4ujH7uPgA==
Received: by mail-ej1-f70.google.com with SMTP id la22-20020a170907781600b006a7884de505so5888021ejc.7
        for <devicetree@vger.kernel.org>; Tue, 22 Feb 2022 07:00:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=1P7qQVIntzoTj3/oLgMEwV7rKt1l7cL2m41gmrqktTo=;
        b=LaVKcAp5nV6it4HOgK6lczPnuvzN71waLTmy4h8ePI57uMaladSMloMmB8OrJne1sT
         OqFkH643D1N84VeRXazwtsX914b4KFPsssk2DVfkzO142n+zkNt+cQ9zGk90ZTUVButJ
         7BcvVqte0uFgxWSw9Gk0Ebcq1/LfP+rmVtsDvpnh1sgCjtcZ93cw5LXg6wzej1iROvaW
         WVHxqhRPOER26X9h24LJSW37C+dy70NkhLVzYqlolnWT/SK427a0xI+Pmdrb+fJphTYw
         dpf70K3NidZUyh9lmzp2g1eGwDwI0Y2L3Wedbq8zRyaBzRPC6YchGLa4mpkOZ7CyFweC
         H00A==
X-Gm-Message-State: AOAM533ny7LFrQ0R7MIm00oTA3myAsDp3aZtRGgf+Kd3KOC8f6L4qCRR
        VpwIVFzw6//L4R0fZLiL/AHTI5TwShZNt86H8oiUwDAV6ewR+bXIR+DjnbYTY6320/LirXp1WQs
        JYKcFKtu/tEYmK7MLO6KLtvabyQGDOAKtWiFmA90=
X-Received: by 2002:a50:e04e:0:b0:410:d961:523a with SMTP id g14-20020a50e04e000000b00410d961523amr27317294edl.223.1645541991396;
        Tue, 22 Feb 2022 06:59:51 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyUtYJeXKFR/3UPBCev0P+VF4C8MI1ryF08nvFtYgouje4ha2q2QFFwRqFjiPr36iU06TskIg==
X-Received: by 2002:a50:e04e:0:b0:410:d961:523a with SMTP id g14-20020a50e04e000000b00410d961523amr27317282edl.223.1645541991213;
        Tue, 22 Feb 2022 06:59:51 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-181-108.adslplus.ch. [188.155.181.108])
        by smtp.gmail.com with ESMTPSA id m2sm2467960ejb.20.2022.02.22.06.59.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Feb 2022 06:59:50 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Wei Xu <xuwei5@hisilicon.com>, Nishanth Menon <nm@ti.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tero Kristo <kristo@kernel.org>,
        "James E.J. Bottomley" <jejb@linux.ibm.com>,
        "Martin K. Petersen" <martin.petersen@oracle.com>,
        Jan Kotas <jank@cadence.com>, Li Wei <liwei213@huawei.com>,
        Stanley Chu <stanley.chu@mediatek.com>,
        Yaniv Gardi <ygardi@codeaurora.org>,
        linux-scsi@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org,
        linux-mediatek@lists.infradead.org
Subject: [PATCH v2 07/15] dt-bindings: ufs: mediatek,ufs: convert to dtschema
Date:   Tue, 22 Feb 2022 15:58:46 +0100
Message-Id: <20220222145854.358646-8-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220222145854.358646-1-krzysztof.kozlowski@canonical.com>
References: <20220222145854.358646-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert the Mediatek Universal Flash Storage (UFS) Controller to DT
schema format.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 .../devicetree/bindings/ufs/mediatek,ufs.yaml | 67 +++++++++++++++++++
 .../devicetree/bindings/ufs/ufs-mediatek.txt  | 45 -------------
 2 files changed, 67 insertions(+), 45 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/ufs/mediatek,ufs.yaml
 delete mode 100644 Documentation/devicetree/bindings/ufs/ufs-mediatek.txt

diff --git a/Documentation/devicetree/bindings/ufs/mediatek,ufs.yaml b/Documentation/devicetree/bindings/ufs/mediatek,ufs.yaml
new file mode 100644
index 000000000000..1cf530b5c57d
--- /dev/null
+++ b/Documentation/devicetree/bindings/ufs/mediatek,ufs.yaml
@@ -0,0 +1,67 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/ufs/mediatek,ufs.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Mediatek Universal Flash Storage (UFS) Controller
+
+maintainers:
+  - Stanley Chu <stanley.chu@mediatek.com>
+
+allOf:
+  - $ref: ufs-common.yaml
+
+properties:
+  compatible:
+    enum:
+      - mediatek,mt8183-ufshci
+      - mediatek,mt8192-ufshci
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    items:
+      - const: ufs
+
+  phys:
+    maxItems: 1
+
+  reg:
+    maxItems: 1
+
+  vcc-supply: true
+
+required:
+  - compatible
+  - clocks
+  - clock-names
+  - phys
+  - reg
+  - vcc-supply
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/mt8183-clk.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    soc {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        ufs@ff3c0000 {
+            compatible = "mediatek,mt8183-ufshci";
+            reg = <0 0x11270000 0 0x2300>;
+            interrupts = <GIC_SPI 104 IRQ_TYPE_LEVEL_LOW>;
+            phys = <&ufsphy>;
+
+            clocks = <&infracfg_ao CLK_INFRA_UFS>;
+            clock-names = "ufs";
+            freq-table = <0 0>;
+
+            vcc-supply = <&mt_pmic_vemc_ldo_reg>;
+        };
+    };
diff --git a/Documentation/devicetree/bindings/ufs/ufs-mediatek.txt b/Documentation/devicetree/bindings/ufs/ufs-mediatek.txt
deleted file mode 100644
index 63a953b672d2..000000000000
--- a/Documentation/devicetree/bindings/ufs/ufs-mediatek.txt
+++ /dev/null
@@ -1,45 +0,0 @@
-* Mediatek Universal Flash Storage (UFS) Host Controller
-
-UFS nodes are defined to describe on-chip UFS hardware macro.
-Each UFS Host Controller should have its own node.
-
-To bind UFS PHY with UFS host controller, the controller node should
-contain a phandle reference to UFS M-PHY node.
-
-Required properties for UFS nodes:
-- compatible         : Compatible list, contains the following controller:
-                       "mediatek,mt8183-ufshci" for MediaTek UFS host controller
-                       present on MT8183 chipsets.
-                       "mediatek,mt8192-ufshci" for MediaTek UFS host controller
-                       present on MT8192 chipsets.
-- reg                : Address and length of the UFS register set.
-- phys               : phandle to m-phy.
-- clocks             : List of phandle and clock specifier pairs.
-- clock-names        : List of clock input name strings sorted in the same
-                       order as the clocks property. "ufs" is mandatory.
-                       "ufs": ufshci core control clock.
-- freq-table-hz      : Array of <min max> operating frequencies stored in the same
-                       order as the clocks property. If this property is not
-                       defined or a value in the array is "0" then it is assumed
-                       that the frequency is set by the parent clock or a
-                       fixed rate clock source.
-- vcc-supply         : phandle to VCC supply regulator node.
-
-Example:
-
-	ufsphy: phy@11fa0000 {
-		...
-	};
-
-	ufshci@11270000 {
-		compatible = "mediatek,mt8183-ufshci";
-		reg = <0 0x11270000 0 0x2300>;
-		interrupts = <GIC_SPI 104 IRQ_TYPE_LEVEL_LOW>;
-		phys = <&ufsphy>;
-
-		clocks = <&infracfg_ao INFRACFG_AO_UFS_CG>;
-		clock-names = "ufs";
-		freq-table-hz = <0 0>;
-
-		vcc-supply = <&mt_pmic_vemc_ldo_reg>;
-	};
-- 
2.32.0

