Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3905564B550
	for <lists+devicetree@lfdr.de>; Tue, 13 Dec 2022 13:41:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234255AbiLMMlG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Dec 2022 07:41:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46460 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234934AbiLMMkS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Dec 2022 07:40:18 -0500
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com [IPv6:2607:f8b0:4864:20::1036])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A1C4A1FCCA
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 04:38:37 -0800 (PST)
Received: by mail-pj1-x1036.google.com with SMTP id u15-20020a17090a3fcf00b002191825cf02so3398048pjm.2
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 04:38:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wKPVsv2TqsP8zux8ohBTaLzqLXnKFjC2mxPTp1lrDzo=;
        b=pRkn7CERucvFWodZldKONF9Sc3CWZ5+E2aWS2cNNcv38w0mNCRE0sMmaG2VaE/Kwvf
         viS3cXILhSRSGiOMd9Sxi9s+40tXTMfqfK3ZI+GeJ2rgsmxNmJvmcOS5gGc8t8xzUTeF
         p7q5bOYgnA0rv93Yalk1qWGktpGkJxSo2R/9Gtg14Njk7pqo3d3HHnxeQitdNfPLXBMn
         vsb+41wvux/AFaQm5vFVuX68M0pdEP12N9FkRzbpGw0UuZOMlIZNGUdgb2kWhjuvWzHD
         ZRhJvCpMmPykClY3mctXRQWyAJPvTyR7oDvR7iA09AzG97XIlFLuB+gXhP3/hqoLnl4y
         Fjiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wKPVsv2TqsP8zux8ohBTaLzqLXnKFjC2mxPTp1lrDzo=;
        b=F2xJnuW09ErKqmh4JbsqO0EY2aRwQCjADk3rwHjBZR8lvW8/anwhyiOGF/Zcwx1+HN
         ECIbj/Nz1z74C6KK/4b3MWgbWrrxTu8Ing+ZapmlejnBQLpWjupSLfJKtBbyh2Wkh3Q2
         IRp/6cpb29yTiDx1oxRAtwAuLdKq82sJLJ7UI9rB5d9U3d+fcx7VlsSQf0ohH0jQ4LIz
         kykAKxD1pr0wcw/ygcoO0CUVPdDzUAqfyjh2aVcDA8p6Q03PPWtIFnm6Vm7ee5tkm6ea
         Iy1s31EPmD2J5xX+rTV7qtpCuh6C1UZOIoXaTKzvX2iO9VQn1HOQC1ePwieHEBjUCnDy
         WalA==
X-Gm-Message-State: ANoB5pl6Xwu9k9Wmj21R2T99qnb0Zm4ZQe8g3UnRa6Bet4UJoni7B+0+
        KWqEQA0YTW7IRlbCtrFDVoGeeQ==
X-Google-Smtp-Source: AA0mqf4EcKeBgZ7Qh6fEUbVbfs34/Rm5aKLLEN7nKMXzJCBYSbAcmgBi/Jzjnz6BZ+LNCt4GOegkkA==
X-Received: by 2002:a17:902:d412:b0:18f:37ec:9675 with SMTP id b18-20020a170902d41200b0018f37ec9675mr9524687ple.21.1670935117264;
        Tue, 13 Dec 2022 04:38:37 -0800 (PST)
Received: from localhost.localdomain ([2401:4900:1c60:4bad:5c3:ab51:3d81:6264])
        by smtp.gmail.com with ESMTPSA id m12-20020a170902c44c00b001889e58d520sm8297011plm.184.2022.12.13.04.38.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Dec 2022 04:38:36 -0800 (PST)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Cc:     agross@kernel.org, bhupesh.sharma@linaro.org,
        bhupesh.linux@gmail.com, linux-kernel@vger.kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski@linaro.org,
        konrad.dybcio@linaro.org, andersson@kernel.org
Subject: [PATCH 1/3] arm64: dts: qcom: sm6115: Cleanup USB node names
Date:   Tue, 13 Dec 2022 18:08:21 +0530
Message-Id: <20221213123823.455731-2-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221213123823.455731-1-bhupesh.sharma@linaro.org>
References: <20221213123823.455731-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

There is only one USB controller present on SM6115 / SM4250
Qualcomm SoC, so drop the numbering used with USB nodes
in the dtsi and the related sm4250-oneplus-billie2.dts.

Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm4250-oneplus-billie2.dts | 4 ++--
 arch/arm64/boot/dts/qcom/sm6115.dtsi                | 8 ++++----
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm4250-oneplus-billie2.dts b/arch/arm64/boot/dts/qcom/sm4250-oneplus-billie2.dts
index a3f1c7c41fd73..fa57f4bf58256 100644
--- a/arch/arm64/boot/dts/qcom/sm4250-oneplus-billie2.dts
+++ b/arch/arm64/boot/dts/qcom/sm4250-oneplus-billie2.dts
@@ -225,11 +225,11 @@ &ufs_mem_phy {
 	status = "okay";
 };
 
-&usb_1 {
+&usb {
 	status = "okay";
 };
 
-&usb_1_hsphy {
+&usb_hsphy {
 	vdd-supply = <&vreg_l4a>;
 	vdda-pll-supply = <&vreg_l12a>;
 	vdda-phy-dpdm-supply = <&vreg_l15a>;
diff --git a/arch/arm64/boot/dts/qcom/sm6115.dtsi b/arch/arm64/boot/dts/qcom/sm6115.dtsi
index 572bf04adf906..b5f7480c2e713 100644
--- a/arch/arm64/boot/dts/qcom/sm6115.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6115.dtsi
@@ -565,7 +565,7 @@ gcc: clock-controller@1400000 {
 			#power-domain-cells = <1>;
 		};
 
-		usb_1_hsphy: phy@1613000 {
+		usb_hsphy: phy@1613000 {
 			compatible = "qcom,sm6115-qusb2-phy";
 			reg = <0x01613000 0x180>;
 			#phy-cells = <0>;
@@ -991,7 +991,7 @@ spi5: spi@4a94000 {
 			};
 		};
 
-		usb_1: usb@4ef8800 {
+		usb: usb@4ef8800 {
 			compatible = "qcom,sm6115-dwc3", "qcom,dwc3";
 			reg = <0x04ef8800 0x400>;
 			#address-cells = <1>;
@@ -1019,11 +1019,11 @@ usb_1: usb@4ef8800 {
 			qcom,select-utmi-as-pipe-clk;
 			status = "disabled";
 
-			usb_1_dwc3: usb@4e00000 {
+			usb_dwc3: usb@4e00000 {
 				compatible = "snps,dwc3";
 				reg = <0x04e00000 0xcd00>;
 				interrupts = <GIC_SPI 255 IRQ_TYPE_LEVEL_HIGH>;
-				phys = <&usb_1_hsphy>;
+				phys = <&usb_hsphy>;
 				phy-names = "usb2-phy";
 				iommus = <&apps_smmu 0x120 0x0>;
 				snps,dis_u2_susphy_quirk;
-- 
2.38.1

