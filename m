Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1E54E26A507
	for <lists+devicetree@lfdr.de>; Tue, 15 Sep 2020 14:23:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726250AbgIOMXI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Sep 2020 08:23:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39520 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726462AbgIOMCJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Sep 2020 08:02:09 -0400
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com [IPv6:2a00:1450:4864:20::242])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3E250C061351
        for <devicetree@vger.kernel.org>; Tue, 15 Sep 2020 05:02:08 -0700 (PDT)
Received: by mail-lj1-x242.google.com with SMTP id k25so2551101ljg.9
        for <devicetree@vger.kernel.org>; Tue, 15 Sep 2020 05:02:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=X1U8igR5qO7iPNb+4cf2CNWPJtBwSJ3VtmXN3I31cMM=;
        b=TU3EY0AUc9+U+0kAhm+eoAz7fwyGsJ6L/Qau3Y9me2xyi2UKuy92IiDI+rYV4YXEZY
         Sudi+xcVj19soxsjbrQop3vNZqvBorRP9iiVFsSnt7ca9YrkP7c3/RU9nG1B1+gzbAOk
         X2KahydmiPQn8k7n74Yhj4yg6xzYM6hB50t96Jb5lGkLU1QOb6jha1sth/F8RzEzti+0
         Rmyse7kjufUhqz/K7nYIjztHqiEFOBmew59WkPOKObQ7qSL/WdIlHTGyZBa2OdASn6EE
         42mVm8MGgTmCqI5zQuJklZciiX6hxh6Gho+enXhdDMAdGs4PNT+J9qHDsRZ1V9NUpTo1
         GNEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=X1U8igR5qO7iPNb+4cf2CNWPJtBwSJ3VtmXN3I31cMM=;
        b=r1fdZmBnQEOzLFfJ7pW76TXDaenerLuB7ic9HrLOU5k0gtVebGN4PFB/P94b1S5J2D
         OHaIt7PiStEmKnJ1Uo/x8UcORxW8FTOKVgOZBDDerkDUbgkaZOeXuAc3gAGyV+ExeVMf
         6lV4HSFQhuO37j9Qi+7NrGjFCNMV+a8a0QOy+4G0aU6xIafU7wJc1AgaQjpVOsT11s1C
         fnf6DMdgIh/hdTDzyY7xQJh7Wrg2IyzArppoJzijbqi0Bu8dkaR+qZ72MmsbkvVHWknJ
         mEF4ltBlc2C/x8ql2j16e3PvBuHY/4RC4BA9tTec4RBFrBR3nqwHsuytoX1MjGCLpHGX
         nKfw==
X-Gm-Message-State: AOAM531DQffGfEBwvIyM5Q4BZyx+V7mk/YbAEPsOnneFrH6S+TwUaB8n
        CXVgZ2C8BSTcFZRcxA44ItUXAA==
X-Google-Smtp-Source: ABdhPJznN0B+C5b0qITIqkvfKVWT6/WGjITA+UaIeZvn9OFsGeRSdOrbhb/Sjv8eL/KuadoP13D67w==
X-Received: by 2002:a05:651c:10d:: with SMTP id a13mr6350084ljb.217.1600171326573;
        Tue, 15 Sep 2020 05:02:06 -0700 (PDT)
Received: from eriador.lan ([188.162.64.139])
        by smtp.gmail.com with ESMTPSA id u1sm4237613lfu.24.2020.09.15.05.02.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Sep 2020 05:02:05 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH] arm64: dts: sm8250: Add OPP table for all qup devices
Date:   Tue, 15 Sep 2020 15:02:03 +0300
Message-Id: <20200915120203.290295-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

qup has a requirement to vote on the performance state of the CX domain
in sm8250 devices. Add OPP tables for these and also add power-domains
property for all qup instances for uart and spi.
i2c does not support scaling and uses a fixed clock.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 69 ++++++++++++++++++++++++++++
 1 file changed, 69 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index c989bc1370ab..6cd45a667ba9 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -411,6 +411,25 @@ ipcc: mailbox@408000 {
 			#mbox-cells = <2>;
 		};
 
+		qup_opp_table: qup-opp-table {
+			compatible = "operating-points-v2";
+
+			opp-50000000 {
+				opp-hz = /bits/ 64 <50000000>;
+				required-opps = <&rpmhpd_opp_min_svs>;
+			};
+
+			opp-75000000 {
+				opp-hz = /bits/ 64 <75000000>;
+				required-opps = <&rpmhpd_opp_low_svs>;
+			};
+
+			opp-120000000 {
+				opp-hz = /bits/ 64 <120000000>;
+				required-opps = <&rpmhpd_opp_svs>;
+			};
+		};
+
 		qupv3_id_2: geniqup@8c0000 {
 			compatible = "qcom,geni-se-qup";
 			reg = <0x0 0x008c0000 0x0 0x6000>;
@@ -445,6 +464,8 @@ spi14: spi@880000 {
 				interrupts = <GIC_SPI 373 IRQ_TYPE_LEVEL_HIGH>;
 				#address-cells = <1>;
 				#size-cells = <0>;
+				power-domains = <&rpmhpd SM8250_CX>;
+				operating-points-v2 = <&qup_opp_table>;
 				status = "disabled";
 			};
 
@@ -471,6 +492,8 @@ spi15: spi@884000 {
 				interrupts = <GIC_SPI 583 IRQ_TYPE_LEVEL_HIGH>;
 				#address-cells = <1>;
 				#size-cells = <0>;
+				power-domains = <&rpmhpd SM8250_CX>;
+				operating-points-v2 = <&qup_opp_table>;
 				status = "disabled";
 			};
 
@@ -497,6 +520,8 @@ spi16: spi@888000 {
 				interrupts = <GIC_SPI 584 IRQ_TYPE_LEVEL_HIGH>;
 				#address-cells = <1>;
 				#size-cells = <0>;
+				power-domains = <&rpmhpd SM8250_CX>;
+				operating-points-v2 = <&qup_opp_table>;
 				status = "disabled";
 			};
 
@@ -523,6 +548,8 @@ spi17: spi@88c000 {
 				interrupts = <GIC_SPI 585 IRQ_TYPE_LEVEL_HIGH>;
 				#address-cells = <1>;
 				#size-cells = <0>;
+				power-domains = <&rpmhpd SM8250_CX>;
+				operating-points-v2 = <&qup_opp_table>;
 				status = "disabled";
 			};
 
@@ -534,6 +561,8 @@ uart17: serial@88c000 {
 				pinctrl-names = "default";
 				pinctrl-0 = <&qup_uart17_default>;
 				interrupts = <GIC_SPI 585 IRQ_TYPE_LEVEL_HIGH>;
+				power-domains = <&rpmhpd SM8250_CX>;
+				operating-points-v2 = <&qup_opp_table>;
 				status = "disabled";
 			};
 
@@ -560,6 +589,8 @@ spi18: spi@890000 {
 				interrupts = <GIC_SPI 586 IRQ_TYPE_LEVEL_HIGH>;
 				#address-cells = <1>;
 				#size-cells = <0>;
+				power-domains = <&rpmhpd SM8250_CX>;
+				operating-points-v2 = <&qup_opp_table>;
 				status = "disabled";
 			};
 
@@ -571,6 +602,8 @@ uart18: serial@890000 {
 				pinctrl-names = "default";
 				pinctrl-0 = <&qup_uart18_default>;
 				interrupts = <GIC_SPI 586 IRQ_TYPE_LEVEL_HIGH>;
+				power-domains = <&rpmhpd SM8250_CX>;
+				operating-points-v2 = <&qup_opp_table>;
 				status = "disabled";
 			};
 
@@ -597,6 +630,8 @@ spi19: spi@894000 {
 				interrupts = <GIC_SPI 587 IRQ_TYPE_LEVEL_HIGH>;
 				#address-cells = <1>;
 				#size-cells = <0>;
+				power-domains = <&rpmhpd SM8250_CX>;
+				operating-points-v2 = <&qup_opp_table>;
 				status = "disabled";
 			};
 		};
@@ -635,6 +670,8 @@ spi0: spi@980000 {
 				interrupts = <GIC_SPI 601 IRQ_TYPE_LEVEL_HIGH>;
 				#address-cells = <1>;
 				#size-cells = <0>;
+				power-domains = <&rpmhpd SM8250_CX>;
+				operating-points-v2 = <&qup_opp_table>;
 				status = "disabled";
 			};
 
@@ -661,6 +698,8 @@ spi1: spi@984000 {
 				interrupts = <GIC_SPI 602 IRQ_TYPE_LEVEL_HIGH>;
 				#address-cells = <1>;
 				#size-cells = <0>;
+				power-domains = <&rpmhpd SM8250_CX>;
+				operating-points-v2 = <&qup_opp_table>;
 				status = "disabled";
 			};
 
@@ -687,6 +726,8 @@ spi2: spi@988000 {
 				interrupts = <GIC_SPI 603 IRQ_TYPE_LEVEL_HIGH>;
 				#address-cells = <1>;
 				#size-cells = <0>;
+				power-domains = <&rpmhpd SM8250_CX>;
+				operating-points-v2 = <&qup_opp_table>;
 				status = "disabled";
 			};
 
@@ -698,6 +739,8 @@ uart2: serial@988000 {
 				pinctrl-names = "default";
 				pinctrl-0 = <&qup_uart2_default>;
 				interrupts = <GIC_SPI 603 IRQ_TYPE_LEVEL_HIGH>;
+				power-domains = <&rpmhpd SM8250_CX>;
+				operating-points-v2 = <&qup_opp_table>;
 				status = "disabled";
 			};
 
@@ -724,6 +767,8 @@ spi3: spi@98c000 {
 				interrupts = <GIC_SPI 604 IRQ_TYPE_LEVEL_HIGH>;
 				#address-cells = <1>;
 				#size-cells = <0>;
+				power-domains = <&rpmhpd SM8250_CX>;
+				operating-points-v2 = <&qup_opp_table>;
 				status = "disabled";
 			};
 
@@ -750,6 +795,8 @@ spi4: spi@990000 {
 				interrupts = <GIC_SPI 605 IRQ_TYPE_LEVEL_HIGH>;
 				#address-cells = <1>;
 				#size-cells = <0>;
+				power-domains = <&rpmhpd SM8250_CX>;
+				operating-points-v2 = <&qup_opp_table>;
 				status = "disabled";
 			};
 
@@ -776,6 +823,8 @@ spi5: spi@994000 {
 				interrupts = <GIC_SPI 606 IRQ_TYPE_LEVEL_HIGH>;
 				#address-cells = <1>;
 				#size-cells = <0>;
+				power-domains = <&rpmhpd SM8250_CX>;
+				operating-points-v2 = <&qup_opp_table>;
 				status = "disabled";
 			};
 
@@ -802,6 +851,8 @@ spi6: spi@998000 {
 				interrupts = <GIC_SPI 607 IRQ_TYPE_LEVEL_HIGH>;
 				#address-cells = <1>;
 				#size-cells = <0>;
+				power-domains = <&rpmhpd SM8250_CX>;
+				operating-points-v2 = <&qup_opp_table>;
 				status = "disabled";
 			};
 
@@ -813,6 +864,8 @@ uart6: serial@998000 {
 				pinctrl-names = "default";
 				pinctrl-0 = <&qup_uart6_default>;
 				interrupts = <GIC_SPI 607 IRQ_TYPE_LEVEL_HIGH>;
+				power-domains = <&rpmhpd SM8250_CX>;
+				operating-points-v2 = <&qup_opp_table>;
 				status = "disabled";
 			};
 
@@ -839,6 +892,8 @@ spi7: spi@99c000 {
 				interrupts = <GIC_SPI 608 IRQ_TYPE_LEVEL_HIGH>;
 				#address-cells = <1>;
 				#size-cells = <0>;
+				power-domains = <&rpmhpd SM8250_CX>;
+				operating-points-v2 = <&qup_opp_table>;
 				status = "disabled";
 			};
 		};
@@ -877,6 +932,8 @@ spi8: spi@a80000 {
 				interrupts = <GIC_SPI 353 IRQ_TYPE_LEVEL_HIGH>;
 				#address-cells = <1>;
 				#size-cells = <0>;
+				power-domains = <&rpmhpd SM8250_CX>;
+				operating-points-v2 = <&qup_opp_table>;
 				status = "disabled";
 			};
 
@@ -903,6 +960,8 @@ spi9: spi@a84000 {
 				interrupts = <GIC_SPI 354 IRQ_TYPE_LEVEL_HIGH>;
 				#address-cells = <1>;
 				#size-cells = <0>;
+				power-domains = <&rpmhpd SM8250_CX>;
+				operating-points-v2 = <&qup_opp_table>;
 				status = "disabled";
 			};
 
@@ -929,6 +988,8 @@ spi10: spi@a88000 {
 				interrupts = <GIC_SPI 355 IRQ_TYPE_LEVEL_HIGH>;
 				#address-cells = <1>;
 				#size-cells = <0>;
+				power-domains = <&rpmhpd SM8250_CX>;
+				operating-points-v2 = <&qup_opp_table>;
 				status = "disabled";
 			};
 
@@ -955,6 +1016,8 @@ spi11: spi@a8c000 {
 				interrupts = <GIC_SPI 356 IRQ_TYPE_LEVEL_HIGH>;
 				#address-cells = <1>;
 				#size-cells = <0>;
+				power-domains = <&rpmhpd SM8250_CX>;
+				operating-points-v2 = <&qup_opp_table>;
 				status = "disabled";
 			};
 
@@ -981,6 +1044,8 @@ spi12: spi@a90000 {
 				interrupts = <GIC_SPI 357 IRQ_TYPE_LEVEL_HIGH>;
 				#address-cells = <1>;
 				#size-cells = <0>;
+				power-domains = <&rpmhpd SM8250_CX>;
+				operating-points-v2 = <&qup_opp_table>;
 				status = "disabled";
 			};
 
@@ -992,6 +1057,8 @@ uart12: serial@a90000 {
 				pinctrl-names = "default";
 				pinctrl-0 = <&qup_uart12_default>;
 				interrupts = <GIC_SPI 357 IRQ_TYPE_LEVEL_HIGH>;
+				power-domains = <&rpmhpd SM8250_CX>;
+				operating-points-v2 = <&qup_opp_table>;
 				status = "disabled";
 			};
 
@@ -1018,6 +1085,8 @@ spi13: spi@a94000 {
 				interrupts = <GIC_SPI 358 IRQ_TYPE_LEVEL_HIGH>;
 				#address-cells = <1>;
 				#size-cells = <0>;
+				power-domains = <&rpmhpd SM8250_CX>;
+				operating-points-v2 = <&qup_opp_table>;
 				status = "disabled";
 			};
 		};
-- 
2.28.0

