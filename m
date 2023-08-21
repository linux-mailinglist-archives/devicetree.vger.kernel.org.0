Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C9A697820E9
	for <lists+devicetree@lfdr.de>; Mon, 21 Aug 2023 02:25:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232203AbjHUAZy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 20 Aug 2023 20:25:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41442 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232204AbjHUAZy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 20 Aug 2023 20:25:54 -0400
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 80996A6
        for <devicetree@vger.kernel.org>; Sun, 20 Aug 2023 17:25:50 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-50043cf2e29so1689947e87.2
        for <devicetree@vger.kernel.org>; Sun, 20 Aug 2023 17:25:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692577549; x=1693182349;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nmrj4hWVWgCIAJXxquRVjvFHWWo6+y5kGPhzifypRbs=;
        b=paTuTONbgPM6/Nq7s3XtkFCGXrenm0xbPhXNoWnX2DFfY59hPE8S1R73xtJLq+5USx
         cMpVbQdAuPdKBCiQ0Tx2ZyOW24N9OPdIEiD+eJ1WcCUhokx30KizX838ZINUJmx7dd5D
         6ddIeYFOFLcWEn0v4aGHUSCzfoBmlbEviPoPCs0rEzfAgF8g/RM7VLTzMakspyD6bXKh
         jgC535HpLYqOA7eMHwi5m6EWDDBK2pCP+DKisfiC0UpMUBB0L7fifdCqfG21pqeDjPR/
         0gTVaPff0Q0r385qXDrXbv4sp0ct3xTHUQGEIn9qw6WdX3E+C/MA2Dq8rqo5V9p8q6lv
         3YXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692577549; x=1693182349;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nmrj4hWVWgCIAJXxquRVjvFHWWo6+y5kGPhzifypRbs=;
        b=clmH4DZA2sy0ixuNFpUftMcWItDaak/XpSt5J9CZAwMG11CNGkomziXfvUFyYzZrzT
         u2ZHtuHheKSsh5C0yX6AqYX00XQQqjrr3KeLR8TPczfxCP2TOQcDzM7xZ2GCtdnacYN7
         HQrCFv5K4VClOA6d/hd3uIAepWx0YY5JCHP+U1U6/BBUV7E6s1hmTGewS7sg4wmlmULO
         esIAG8B6G5XaCWnmB2xgyfEVHQyo0WdDk/nMB0gf+Er1WnAvD5EkX7TDu9cX6vB/oaRq
         dMs7RHi++g+iAv6j7N6piDuBcHl1qpVrWdHESuNZ5j6HzhhfT5PDSzTBW8PxA36xES0r
         G+0w==
X-Gm-Message-State: AOJu0YznmN1R6qYERLohrleV9ZWmu/18/sF41LLmK1wht1XgQQhNawyi
        wppFyln4GApF0tVU1tmtPoIDTA==
X-Google-Smtp-Source: AGHT+IFRUmGPmF5YbAglWYfw7FWy4uqzyzku3Um1siMwbXmxt29ZZJY0jhLZAXNYYswTA5rsB1RyJQ==
X-Received: by 2002:a2e:9dc6:0:b0:2bc:b88c:64ed with SMTP id x6-20020a2e9dc6000000b002bcb88c64edmr1452538ljj.12.1692577548892;
        Sun, 20 Aug 2023 17:25:48 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id h27-20020a2eb0fb000000b002b6fe751b6esm1964923ljl.124.2023.08.20.17.25.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Aug 2023 17:25:48 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     Philipp Zabel <p.zabel@pengutronix.de>,
        Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH v2 15/16] ARM: dts: qcom-sdx55: switch USB QMP PHY to new style of bindings
Date:   Mon, 21 Aug 2023 03:25:34 +0300
Message-Id: <20230821002535.585660-16-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230821002535.585660-1-dmitry.baryshkov@linaro.org>
References: <20230821002535.585660-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Change the USB QMP PHY to use newer style of QMP PHY bindings (single
resource region, no per-PHY subnodes).

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom/qcom-sdx55.dtsi | 41 +++++++++++---------------
 1 file changed, 18 insertions(+), 23 deletions(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-sdx55.dtsi b/arch/arm/boot/dts/qcom/qcom-sdx55.dtsi
index 4b0039ccd0da..89d723e4ad61 100644
--- a/arch/arm/boot/dts/qcom/qcom-sdx55.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-sdx55.dtsi
@@ -228,31 +228,26 @@ usb_hsphy: phy@ff4000 {
 
 		usb_qmpphy: phy@ff6000 {
 			compatible = "qcom,sdx55-qmp-usb3-uni-phy";
-			reg = <0x00ff6000 0x1c0>;
-			status = "disabled";
-			#address-cells = <1>;
-			#size-cells = <1>;
-			ranges;
+			reg = <0x00ff6000 0x1000>;
 
 			clocks = <&gcc GCC_USB3_PHY_AUX_CLK>,
+				 <&gcc GCC_USB3_PRIM_CLKREF_CLK>,
 				 <&gcc GCC_USB_PHY_CFG_AHB2PHY_CLK>,
-				 <&gcc GCC_USB3_PRIM_CLKREF_CLK>;
-			clock-names = "aux", "cfg_ahb", "ref";
-
-			resets = <&gcc GCC_USB3PHY_PHY_BCR>,
-				 <&gcc GCC_USB3_PHY_BCR>;
-			reset-names = "phy", "common";
-
-			usb_ssphy: phy@ff6200 {
-				reg = <0x00ff6200 0x170>,
-				      <0x00ff6400 0x200>,
-				      <0x00ff6800 0x800>;
-				#phy-cells = <0>;
-				#clock-cells = <0>;
-				clocks = <&gcc GCC_USB3_PHY_PIPE_CLK>;
-				clock-names = "pipe0";
-				clock-output-names = "usb3_uni_phy_pipe_clk_src";
-			};
+				 <&gcc GCC_USB3_PHY_PIPE_CLK>;
+			clock-names = "aux",
+				      "ref",
+				      "cfg_ahb",
+				      "pipe";
+			clock-output-names = "usb3_uni_phy_pipe_clk_src";
+			#clock-cells = <0>;
+			#phy-cells = <0>;
+
+			resets = <&gcc GCC_USB3_PHY_BCR>,
+				 <&gcc GCC_USB3PHY_PHY_BCR>;
+			reset-names = "phy",
+				      "phy_phy";
+
+			status = "disabled";
 		};
 
 		mc_virt: interconnect@1100000 {
@@ -603,7 +598,7 @@ usb_dwc3: usb@a600000 {
 				iommus = <&apps_smmu 0x1a0 0x0>;
 				snps,dis_u2_susphy_quirk;
 				snps,dis_enblslpm_quirk;
-				phys = <&usb_hsphy>, <&usb_ssphy>;
+				phys = <&usb_hsphy>, <&usb_qmpphy>;
 				phy-names = "usb2-phy", "usb3-phy";
 			};
 		};
-- 
2.39.2

