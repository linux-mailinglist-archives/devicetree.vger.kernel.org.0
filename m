Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D92D8516DB6
	for <lists+devicetree@lfdr.de>; Mon,  2 May 2022 11:49:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1384516AbiEBJxM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 May 2022 05:53:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43528 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1384523AbiEBJwo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 May 2022 05:52:44 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 627E312AAF
        for <devicetree@vger.kernel.org>; Mon,  2 May 2022 02:49:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1651484956; x=1683020956;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=ci02NB4QGci9pTeqTiLS0Ke/DzJkZ60fO1FMVNrrSdU=;
  b=b5ki0itsbB0ttYh+Pw7jfQMUAw1ElM5yvF5Ma4YGWEd0IjcPWFOY6WvG
   nvn7Ce0sVZkcusttNEfWm4RajeUOjgZXbsxLQ0GWPhjh7tSEhXFuDPtqZ
   eu6/HIPM/AuVJjBUhES95Wv7hxNlRdhlQoOQ7CKscMFHLNLGuDv5Mvh9D
   IcYKqdHs1i/sRMtqcY2tSBM05GIa4A5i2TM9iQQYWBFIflwmCS87bLn8k
   SNYH7Jl6eaVaP61EoRS9d+dk7rZMcXq5KfWUnsDCtQjOwLCIlN4auTWEk
   nDJbbpDBpGcDX2TOKMuBajaZbtcYCBdPORb+bHN2xOjS1xixVw9kNCY0r
   Q==;
X-IronPort-AV: E=Sophos;i="5.91,190,1647298800"; 
   d="scan'208";a="23608917"
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
  bh=ci02NB4QGci9pTeqTiLS0Ke/DzJkZ60fO1FMVNrrSdU=;
  b=Ns6FB/gL5wXWiMMAB+Dc0nw82reyemAUdjK4lfKN16g642ETONF1EvXB
   /hO2CKx/tg+zPPSffA7pD1q1XKa5Z5LCWn+Euz9Fo2FbVDD+LRYsez3K+
   87GvnC5lpyGbUReGpOOT45C+cCc0NoRkoz6iD92hiHuOPmDPvGqRhVD5w
   HBsF6Lx7wSNkhUShMZsq5GP9NHl1X95pcgb9CKR22if408SriNpeUmOwC
   gLC1bhQq/9KOyDYVnVNtVZF83iW5HKPWT4jMZINvEEXSTjfXVTUv4J3D8
   4/7CCsO9p+iqVZKEGsoKbzQym4bAmB+DMjMRXwlzoxF4xtQDhGhoIAFfF
   w==;
X-IronPort-AV: E=Sophos;i="5.91,190,1647298800"; 
   d="scan'208";a="23608916"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 02 May 2022 11:49:07 +0200
Received: from steina-w.tq-net.de (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 64B7F28007C;
        Mon,  2 May 2022 11:49:07 +0200 (CEST)
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
Subject: [PATCH 4/4] arm64: dt: imx8mp: support pwm polarity inversion
Date:   Mon,  2 May 2022 11:49:01 +0200
Message-Id: <20220502094901.251310-5-alexander.stein@ew.tq-group.com>
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

The i.MX8M Plus has the same PWM IP as i.MX6 / i.MX7. This IP
and the driver supporting pwm polarity inversion. Switch CPU
device tree fragment to use 3 pwm-cells.

Tested on MBa8MPxL mainboard.

Signed-off-by: Markus Niebel <Markus.Niebel@ew.tq-group.com>
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index 7ad824e6b820..89ef26399bfa 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -567,7 +567,7 @@ pwm1: pwm@30660000 {
 				clocks = <&clk IMX8MP_CLK_PWM1_ROOT>,
 					 <&clk IMX8MP_CLK_PWM1_ROOT>;
 				clock-names = "ipg", "per";
-				#pwm-cells = <2>;
+				#pwm-cells = <3>;
 				status = "disabled";
 			};
 
@@ -578,7 +578,7 @@ pwm2: pwm@30670000 {
 				clocks = <&clk IMX8MP_CLK_PWM2_ROOT>,
 					 <&clk IMX8MP_CLK_PWM2_ROOT>;
 				clock-names = "ipg", "per";
-				#pwm-cells = <2>;
+				#pwm-cells = <3>;
 				status = "disabled";
 			};
 
@@ -589,7 +589,7 @@ pwm3: pwm@30680000 {
 				clocks = <&clk IMX8MP_CLK_PWM3_ROOT>,
 					 <&clk IMX8MP_CLK_PWM3_ROOT>;
 				clock-names = "ipg", "per";
-				#pwm-cells = <2>;
+				#pwm-cells = <3>;
 				status = "disabled";
 			};
 
@@ -600,7 +600,7 @@ pwm4: pwm@30690000 {
 				clocks = <&clk IMX8MP_CLK_PWM4_ROOT>,
 					 <&clk IMX8MP_CLK_PWM4_ROOT>;
 				clock-names = "ipg", "per";
-				#pwm-cells = <2>;
+				#pwm-cells = <3>;
 				status = "disabled";
 			};
 
-- 
2.25.1

