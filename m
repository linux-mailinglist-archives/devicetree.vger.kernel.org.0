Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 07C9764D8E3
	for <lists+devicetree@lfdr.de>; Thu, 15 Dec 2022 10:46:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230150AbiLOJqC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Dec 2022 04:46:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45602 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230136AbiLOJpx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Dec 2022 04:45:53 -0500
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com [IPv6:2607:f8b0:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3387D272B
        for <devicetree@vger.kernel.org>; Thu, 15 Dec 2022 01:45:52 -0800 (PST)
Received: by mail-pl1-x635.google.com with SMTP id 17so6338945pll.0
        for <devicetree@vger.kernel.org>; Thu, 15 Dec 2022 01:45:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xfisaX1yRNC7eLaChTG8lYX6QtvwXvGxy+CVBHfkvYY=;
        b=EEqLm2S7EqL3///kF/8ooxf8kcKH6HQg+q06nqDxz18j62Hl2358QbO6sMZqZVwJ4/
         G7UM9JUmlSyr7cYFB7lLPAzQjbg9Se8ykqWYoChXMXp5eHcpiEU/ou/HdsnB/R7pbYYL
         nxo3hBgLJrw5VeixPoJrpZGGw12Q5hL7t/OVUWdD3YlR3g1C7exuo7dOFkDgZ3XgDH6l
         I/EmDFIj1oJBbrd+05ySpglLn5j0vACZRzSAkAxKK8jRiEPsCc5UDKLiNr0P8wLAfW+9
         C8mWCpqAdLUwOLvtAkBg6jWNdadWDHXpU9CO5u81RKI0RyBBlUIr+g7ncUDbixip+6nd
         dYBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xfisaX1yRNC7eLaChTG8lYX6QtvwXvGxy+CVBHfkvYY=;
        b=ZFzdRXxAYK1N18ZHHWZR8RwfWw68mf9pdllmuFZCorcaKNlCVCtWU1Y7YgwUW/Oywm
         f+UbYB4CL+64yNXF4BVJFwLjAbQKXG8M3dHTf62wcxygEgGvS2cRFv7vaBbi/ByLasqi
         tsJu5RDUDIaYIuJia1ZK1oBcA6EMvzSzmYsnuokl3Rq/az5EhYFOUTkGXjGXsVdtnDUw
         ErHvKLLCYugUdHiKOBRqHqN5cy8jzmj51RqG3Q9orLWpn8fvnGTzPKPM9acJPpcVBOol
         vOpyLqT425wNp+5mEktmtFtZEW7zRNEF8nkGGvdCN076fAMWtlGp2kc+4lODP+TxZcIA
         90ow==
X-Gm-Message-State: ANoB5pkMg/Flo8nXgeuafhnVOYNcUBQeqlY2xwl7iE6VTzOHgDshpzLm
        10pk33MrQGnqZBB/WkCoa6yDsQ==
X-Google-Smtp-Source: AA0mqf5JiNySvW4848edZMJBnhFMzPqYBdD+JpHuO1YoIcrg/5JutiGXLQvrNB0l7xxjWMNoW8GORQ==
X-Received: by 2002:a17:902:6b46:b0:18f:a820:1811 with SMTP id g6-20020a1709026b4600b0018fa8201811mr13125455plt.31.1671097551597;
        Thu, 15 Dec 2022 01:45:51 -0800 (PST)
Received: from localhost.localdomain ([2401:4900:1c5f:4e45:ae49:8018:6d22:e5b4])
        by smtp.gmail.com with ESMTPSA id b5-20020a170902650500b0018971fba556sm3342646plk.139.2022.12.15.01.45.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Dec 2022 01:45:51 -0800 (PST)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Cc:     agross@kernel.org, bhupesh.sharma@linaro.org,
        bhupesh.linux@gmail.com, linux-kernel@vger.kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski@linaro.org,
        konrad.dybcio@linaro.org, andersson@kernel.org
Subject: [PATCH v3 1/3] arm64: dts: qcom: sm6115: Cleanup USB node's label
Date:   Thu, 15 Dec 2022 15:15:30 +0530
Message-Id: <20221215094532.589291-2-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221215094532.589291-1-bhupesh.sharma@linaro.org>
References: <20221215094532.589291-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

There is only one USB controller present on SM6115 / SM4250
Qualcomm SoC, so drop the numbering used with USB node's label
names in the dtsi and the related sm4250-oneplus-billie2.dts.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
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

