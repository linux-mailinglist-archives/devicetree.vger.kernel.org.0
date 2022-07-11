Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8D48556D804
	for <lists+devicetree@lfdr.de>; Mon, 11 Jul 2022 10:31:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230025AbiGKIb2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Jul 2022 04:31:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37388 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230111AbiGKIbA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Jul 2022 04:31:00 -0400
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com [IPv6:2607:f8b0:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 65FCA1F2DA
        for <devicetree@vger.kernel.org>; Mon, 11 Jul 2022 01:30:52 -0700 (PDT)
Received: by mail-pf1-x42d.google.com with SMTP id 70so4202963pfx.1
        for <devicetree@vger.kernel.org>; Mon, 11 Jul 2022 01:30:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=+Xc6Xh3o4q11+QtmcpjwpXfbGTOkena0cZoEMXbSHLw=;
        b=Fze5rPjfeIGk/niSbM0yaVUZm+dGq3XQi7PJ1fBajKrvWL0BS/GBXD/G7GtUxI2FIZ
         nQZab7PbfmcxbZHzdcMIbVQXH8SYDoRZwHmlTrelQDo/EJdaOMPkEFM9bDg2CN7ehBxk
         83g9ppMQcxmy/wRrT6xCUFWU5eVVopGO2DvB/306nrjH+yTaXClI3R5tjjTyo8n6Z6uX
         AOhlQDzU02BEsSU03ddEah/SFtKNf2NDevUzoZJp5IAvsQ7+Xpr5GRj6tDlbTVwZr78A
         dwrJ9VxgeYYecsJXHe//yOEpun52w8bewpa+DZnPOV1+kG2EFO/BR0e9BFNyNK089cDi
         uN1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=+Xc6Xh3o4q11+QtmcpjwpXfbGTOkena0cZoEMXbSHLw=;
        b=OAAnfYZMM3RviL5n56moy5Udftl6OctfKDPKGImuYMF8ZStwfiBRNuelruIL+QbM2+
         AEllmK5/X765qhz0C3pdrC9N0cg18IsO2qRQoPwWg/ldltwDrA5gB1MOLuAlG+lOQjg3
         69PGjc+HYfFxhuQoCWxB9hMgnmDLdA0jiLwUHLyCK4oUqBAubUszxPywjqhSK3c/Sf6j
         wOj75pPQAVUx5NwzkQEUwkZsqJ8tH+pVc6l4Bajj7+zRXUJUJ/tfRzI5T1GfAjg7QBwA
         /7dBGGKhjm0cUrsH5Aj/uoRqjBsnAxoZjIYMy7j1Jiah9zR+ST6BQo4DqEeXS/eQtni/
         16jA==
X-Gm-Message-State: AJIora8bD8La51nX/H3Wl0cVx3ZvHBICUyE4IA+11aol5X86nmmn8yXR
        6iXJd6eo/+tb7GA8HAtU9zykHQ==
X-Google-Smtp-Source: AGRyM1vK5m4AuFpwElO7081SMHDCqMErC3BDjHKiTOEKoDA2tpoeF1r0TmZ2VXVXz/9MzRvCaRtGfA==
X-Received: by 2002:a63:194c:0:b0:408:a9d1:400c with SMTP id 12-20020a63194c000000b00408a9d1400cmr15232455pgz.559.1657528251757;
        Mon, 11 Jul 2022 01:30:51 -0700 (PDT)
Received: from localhost.localdomain ([182.77.21.191])
        by smtp.gmail.com with ESMTPSA id w14-20020a1709027b8e00b0016a4db13435sm4067118pll.191.2022.07.11.01.30.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Jul 2022 01:30:51 -0700 (PDT)
From:   Sumit Garg <sumit.garg@linaro.org>
To:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Cc:     agross@kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org,
        shawn.guo@linaro.org, bryan.odonoghue@linaro.org,
        nicolas.dechesne@linaro.org, mworsfold@impinj.com,
        daniel.thompson@linaro.org, andrey.konovalov@linaro.org,
        Sumit Garg <sumit.garg@linaro.org>
Subject: [PATCH v2] arm64: dts: qcom: qcs404: Fix incorrect USB2 PHYs assignment
Date:   Mon, 11 Jul 2022 14:00:38 +0530
Message-Id: <20220711083038.1518529-1-sumit.garg@linaro.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Currently the DT for QCS404 SoC has setup for 2 USB2 PHYs with one each
assigned to USB3 controller and USB2 controller. This assignment is
incorrect which only works by luck: as when each USB HCI comes up it
configures the *other* controllers PHY which is enough to make them
happy. If, for any reason, we were to disable one of the controllers then
both would stop working.

This was a difficult inconsistency to be caught which was found while
trying to enable USB support in u-boot. So with all the required drivers
ported to u-boot, I couldn't get the same USB storage device enumerated
in u-boot which was being enumerated fine by the kernel.

The root cause of the problem came out to be that I wasn't enabling USB2
PHY: "usb2_phy_prim" in u-boot. Then I realised that via simply disabling
the same USB2 PHY currently assigned to USB2 host controller in the
kernel disabled enumeration for USB3 host controller as well.

So fix this inconsistency by correctly assigning USB2 PHYs.

Fixes: 9375e7d719b3 ("arm64: dts: qcom: qcs404: Add USB devices and PHYs")
Signed-off-by: Sumit Garg <sumit.garg@linaro.org>
---

Changes in v2:
- Update commit message description.

 arch/arm64/boot/dts/qcom/qcs404.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/qcs404.dtsi b/arch/arm64/boot/dts/qcom/qcs404.dtsi
index 513bf7343b2c..50edc11a5bb5 100644
--- a/arch/arm64/boot/dts/qcom/qcs404.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcs404.dtsi
@@ -557,7 +557,7 @@ usb3_dwc3: usb@7580000 {
 				compatible = "snps,dwc3";
 				reg = <0x07580000 0xcd00>;
 				interrupts = <GIC_SPI 26 IRQ_TYPE_LEVEL_HIGH>;
-				phys = <&usb2_phy_sec>, <&usb3_phy>;
+				phys = <&usb2_phy_prim>, <&usb3_phy>;
 				phy-names = "usb2-phy", "usb3-phy";
 				snps,has-lpm-erratum;
 				snps,hird-threshold = /bits/ 8 <0x10>;
@@ -586,7 +586,7 @@ usb@78c0000 {
 				compatible = "snps,dwc3";
 				reg = <0x078c0000 0xcc00>;
 				interrupts = <GIC_SPI 44 IRQ_TYPE_LEVEL_HIGH>;
-				phys = <&usb2_phy_prim>;
+				phys = <&usb2_phy_sec>;
 				phy-names = "usb2-phy";
 				snps,has-lpm-erratum;
 				snps,hird-threshold = /bits/ 8 <0x10>;
-- 
2.25.1

