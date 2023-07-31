Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5C0F876944B
	for <lists+devicetree@lfdr.de>; Mon, 31 Jul 2023 13:12:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232450AbjGaLMI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jul 2023 07:12:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57364 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231278AbjGaLMG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jul 2023 07:12:06 -0400
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 10BA9E48
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 04:12:00 -0700 (PDT)
Received: by mail-lj1-x234.google.com with SMTP id 38308e7fff4ca-2b9cdba1228so47301521fa.2
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 04:12:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690801919; x=1691406719;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+YCsCz3Wm9ikQclH9DKyLq5gHwUQ9rpMhDltYcLX5mE=;
        b=AkuJsZ/07cDF1OkIXAYSpXb5+/pvHnsKfMYE/tHZ/TuG6TlSzUhdcEUOQ2gHe/mAQn
         90+IDQFcs3DTrfb53zieUGCcxOBFFKbakULhhCSvgRT2jWAy0cT//BU6QnLv85sJ73uT
         nVa8Xw+iW2SC0itW9sQBUXeVLTCo804lqEzObS8n00nG3FjknFExdawFJVCWmgJ7/Kak
         7KmEb9X4D99DWI+bb6Jqz31ujCyT+d8V6lNyHQXSWsEmz8Dxvc8R4UeAae3W5QeG9eqI
         4iHjSyEIzSI2ILbq8SWV8WMKujFE23lidQ5LJql9NPZAP368+xyxzNX8xLOAE7JP+Kfa
         7DzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690801919; x=1691406719;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+YCsCz3Wm9ikQclH9DKyLq5gHwUQ9rpMhDltYcLX5mE=;
        b=E+/lxkT53LtumEUFu4U59uqLLmlLVuUZ8DRGvO7fgJpG09r9DIXvK7F9fMP661uZXz
         MaWw/b06ekdvmgMbdEJ49WoiZwmoQnQy3AoqXrQk+acMN9O4F46WLpd6prSKdffuyFAQ
         l9QoVB6IcXc69XIqKEsU0hq83HtWExMBw9EmAcb2G7uW/luG6t4wjJFq3GDAzK1n/DXE
         g8q/ZhiW6Dk9ckLF8tibtq+YEc5E+3Dmu0maJTWZf0nZygP4EKlbJw0qZcGnAvaQ4n0e
         oaracCPbNBnrA592gajGAC6uGpnWM8RigBFwjoevSHB5NKTAlZh4s7MJF8fHwblCtYRE
         gYkw==
X-Gm-Message-State: ABy/qLadconvcnTUSBSb8FX71l67rQ8Yo1QerNSgBC4UMHlBe5yXlmwZ
        1JKnhzBvFlk0AIazvklOylYe4w==
X-Google-Smtp-Source: APBJJlEKAUnzIRX8KL/8qoiB8PVXPZxy7Nxe+HVWXWWEkRhbjCMZjCT6KTMBAnC6eAX/t6cW1DFNZQ==
X-Received: by 2002:a2e:9c91:0:b0:2b6:ccd6:3eae with SMTP id x17-20020a2e9c91000000b002b6ccd63eaemr6377932lji.17.1690801919153;
        Mon, 31 Jul 2023 04:11:59 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id f11-20020a2e380b000000b002b9de06f119sm1258864lja.67.2023.07.31.04.11.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 04:11:58 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH] arm64: dts: qcom: sc8180x: switch UFS QMP PHY to new style of bindings
Date:   Mon, 31 Jul 2023 14:11:58 +0300
Message-Id: <20230731111158.3998107-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Change the UFS QMP PHY to use newer style of QMP PHY bindings (single
resource region, no per-PHY subnodes).

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---

As with the rest of UFS DTS conversion patches, this patch should wait
for 6.6, so that the patch flow is bisectable.

---
 arch/arm64/boot/dts/qcom/sc8180x.dtsi | 20 ++++++--------------
 1 file changed, 6 insertions(+), 14 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc8180x.dtsi b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
index fae149e33b98..3c79b82eac6e 100644
--- a/arch/arm64/boot/dts/qcom/sc8180x.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
@@ -2080,7 +2080,7 @@ ufs_mem_hc: ufshc@1d84000 {
 				     "jedec,ufs-2.0";
 			reg = <0 0x01d84000 0 0x2500>;
 			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
-			phys = <&ufs_mem_phy_lanes>;
+			phys = <&ufs_mem_phy>;
 			phy-names = "ufsphy";
 			lanes-per-direction = <2>;
 			#reset-cells = <1>;
@@ -2119,10 +2119,8 @@ ufs_mem_hc: ufshc@1d84000 {
 
 		ufs_mem_phy: phy-wrapper@1d87000 {
 			compatible = "qcom,sc8180x-qmp-ufs-phy";
-			reg = <0 0x01d87000 0 0x1c0>;
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
+			reg = <0 0x01d87000 0 0x1000>;
+
 			clocks = <&rpmhcc RPMH_CXO_CLK>,
 				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>;
 			clock-names = "ref",
@@ -2130,16 +2128,10 @@ ufs_mem_phy: phy-wrapper@1d87000 {
 
 			resets = <&ufs_mem_hc 0>;
 			reset-names = "ufsphy";
-			status = "disabled";
 
-			ufs_mem_phy_lanes: phy@1d87400 {
-				reg = <0 0x01d87400 0 0x108>,
-				      <0 0x01d87600 0 0x1e0>,
-				      <0 0x01d87c00 0 0x1dc>,
-				      <0 0x01d87800 0 0x108>,
-				      <0 0x01d87a00 0 0x1e0>;
-				#phy-cells = <0>;
-			};
+			#phy-cells = <0>;
+
+			status = "disabled";
 		};
 
 		ipa_virt: interconnect@1e00000 {
-- 
2.39.2

