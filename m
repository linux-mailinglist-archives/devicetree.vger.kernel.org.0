Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 83E83516DB8
	for <lists+devicetree@lfdr.de>; Mon,  2 May 2022 11:50:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1358256AbiEBJx3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 May 2022 05:53:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43482 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1384421AbiEBJwn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 May 2022 05:52:43 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D6DB412624
        for <devicetree@vger.kernel.org>; Mon,  2 May 2022 02:49:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1651484955; x=1683020955;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=kNdxQM4Z358rG+nMcsZbxOxW/RpxRdESr63QyCt4bkA=;
  b=RWdk12eJOgAfu2Ws86SOPG9y9liDNTlAV+jpoJmN9gZMg1Qto1ey3Yef
   pCO0EXC7RfkC2ELian8XCMjfcjnL1L9I5avG3AzqgWlZOiQ10yNG62k9+
   LclYkxT0JUhQXc6DlDkx1kn3F7Bd1r+uE2GiMFyTSRs/npPT7rDhpDa3z
   lLs+91sAGa5PPgdbgoi+hF8RR2WDQDDE382/oAobO+r7q8Pwskh71Cqkc
   v+cxWxNdPePZXrzFIGxN7jK+bXw/f0QyfXPJTLqxqvcWjxvNUibJyJxVC
   fh9LTEpMADuksRk7w17rVQQDadefOnyizYvlDvT2tN6lO+ht/D0vMOJkO
   Q==;
X-IronPort-AV: E=Sophos;i="5.91,190,1647298800"; 
   d="scan'208";a="23608913"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 02 May 2022 11:49:07 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Mon, 02 May 2022 11:49:07 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Mon, 02 May 2022 11:49:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1651484947; x=1683020947;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=kNdxQM4Z358rG+nMcsZbxOxW/RpxRdESr63QyCt4bkA=;
  b=nLhuRlOUrZ8833DCPm/AElqwpYdyUpORJgUrS6vPHlVdDLmxkAfmTml5
   3gTFqNpWPJDYWu+UO7VfX20n730gxawETu9/p4b5UPRjzTTdhoeCpiTDl
   +gzyCBYqpm9/dOG6lNhbyoVZVQ1HisCPKO6Cyu/w4PIhpiODcy5zpVJeO
   WP1Ox3uKiAQqSTQO0CjPFHVChjpR44BvRBHpCAc5hZ5ZpOi+0dw1ocTNx
   MzoDUywPJju/LZreo5hHw4YNXKIYSO2yxErDGtI3bhtZ/oHcyKwe9N9OR
   j0yYwRgJJYbvpT7WOPUG9D+YDW/a3xLAo/FvNHx+IknI/pDrgYoK3tUl1
   w==;
X-IronPort-AV: E=Sophos;i="5.91,190,1647298800"; 
   d="scan'208";a="23608912"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 02 May 2022 11:49:07 +0200
Received: from steina-w.tq-net.de (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id C8C26280078;
        Mon,  2 May 2022 11:49:06 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Markus Niebel <Markus.Niebel@ew.tq-group.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Alexander Stein <alexander.stein@ew.tq-group.com>
Subject: [PATCH 2/4] arm64: dt: imx8mm: support pwm polarity inversion
Date:   Mon,  2 May 2022 11:48:59 +0200
Message-Id: <20220502094901.251310-3-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220502094901.251310-1-alexander.stein@ew.tq-group.com>
References: <20220502094901.251310-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Markus Niebel <Markus.Niebel@ew.tq-group.com>

The i.MX8M Mini has the same PWM IP as i.MX6 / i.MX7. This IP
and the driver supporting pwm polarity inversion. Switch CPU
device tree fragment to use 3 pwm-cells and correct board
device trees.

Signed-off-by: Markus Niebel <Markus.Niebel@ew.tq-group.com>
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 .../boot/dts/freescale/imx8mm-data-modul-edm-sbc.dts      | 2 +-
 arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi             | 2 +-
 arch/arm64/boot/dts/freescale/imx8mm.dtsi                 | 8 ++++----
 3 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-data-modul-edm-sbc.dts b/arch/arm64/boot/dts/freescale/imx8mm-data-modul-edm-sbc.dts
index 154116d01c94..fbc9cc23700a 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-data-modul-edm-sbc.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mm-data-modul-edm-sbc.dts
@@ -35,7 +35,7 @@ backlight: backlight {
 		brightness-levels = <0 1 10 20 30 40 50 60 70 75 80 90 100>;
 		default-brightness-level = <7>;
 		enable-gpios = <&gpio3 0 GPIO_ACTIVE_HIGH>;
-		pwms = <&pwm1 0 5000000>;
+		pwms = <&pwm1 0 5000000 0>;
 		/* Disabled by default, unless display board plugged in. */
 		status = "disabled";
 	};
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
index 6a209395452a..c42b966f7a64 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
@@ -61,7 +61,7 @@ reg_usdhc2_vmmc: regulator-usdhc2 {
 
 	backlight: backlight {
 		compatible = "pwm-backlight";
-		pwms = <&pwm1 0 5000000>;
+		pwms = <&pwm1 0 5000000 0>;
 		brightness-levels = <0 255>;
 		num-interpolated-steps = <255>;
 		default-brightness-level = <250>;
diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index 1ee05677c2dd..1bf070473829 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -758,7 +758,7 @@ pwm1: pwm@30660000 {
 				clocks = <&clk IMX8MM_CLK_PWM1_ROOT>,
 					<&clk IMX8MM_CLK_PWM1_ROOT>;
 				clock-names = "ipg", "per";
-				#pwm-cells = <2>;
+				#pwm-cells = <3>;
 				status = "disabled";
 			};
 
@@ -769,7 +769,7 @@ pwm2: pwm@30670000 {
 				clocks = <&clk IMX8MM_CLK_PWM2_ROOT>,
 					 <&clk IMX8MM_CLK_PWM2_ROOT>;
 				clock-names = "ipg", "per";
-				#pwm-cells = <2>;
+				#pwm-cells = <3>;
 				status = "disabled";
 			};
 
@@ -780,7 +780,7 @@ pwm3: pwm@30680000 {
 				clocks = <&clk IMX8MM_CLK_PWM3_ROOT>,
 					 <&clk IMX8MM_CLK_PWM3_ROOT>;
 				clock-names = "ipg", "per";
-				#pwm-cells = <2>;
+				#pwm-cells = <3>;
 				status = "disabled";
 			};
 
@@ -791,7 +791,7 @@ pwm4: pwm@30690000 {
 				clocks = <&clk IMX8MM_CLK_PWM4_ROOT>,
 					 <&clk IMX8MM_CLK_PWM4_ROOT>;
 				clock-names = "ipg", "per";
-				#pwm-cells = <2>;
+				#pwm-cells = <3>;
 				status = "disabled";
 			};
 
-- 
2.25.1

