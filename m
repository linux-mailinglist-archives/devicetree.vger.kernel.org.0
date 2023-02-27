Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 583096A3E83
	for <lists+devicetree@lfdr.de>; Mon, 27 Feb 2023 10:38:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229613AbjB0Jiz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Feb 2023 04:38:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50962 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229548AbjB0Jiy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Feb 2023 04:38:54 -0500
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6291DCC2B
        for <devicetree@vger.kernel.org>; Mon, 27 Feb 2023 01:38:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1677490732; x=1709026732;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=OyY50N72D82Tv2zs2wQqlUTBMS7zJdzJLO+pxfUNwHU=;
  b=RErB78zCZTtMF0qKFVzjp34MtiTVq+23e3+QOF+VccGd/IV2V12FSVag
   N74VPA+MxbkrTV8WqCaeB/Bnzctw1JTQwJRyHfYg342eIXjJQ/8aBcei1
   UoDPIQiItiEcbBY6xs9rbV3ShQJY2g16JwhUKpxXqy2t7h+GuBWrBWyat
   ccrZJkpyTdqV/O2alOTufU23LJ+nZpThGWT+6WUo4Tp1+7b8fmsuiAKZ5
   pLZjwn7bDKyi7VOAEdxmzpXges33OIA7nZ3sKsrbsyBY2x8hk29aC68Np
   KLqnU1UziDMgKMAEEoQNPS/MYDlSrapXYPg3FuGfPTKcFOsX9ZczI0arG
   w==;
X-IronPort-AV: E=Sophos;i="5.97,331,1669071600"; 
   d="scan'208";a="29329245"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 27 Feb 2023 10:38:50 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Mon, 27 Feb 2023 10:38:50 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Mon, 27 Feb 2023 10:38:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1677490730; x=1709026730;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=OyY50N72D82Tv2zs2wQqlUTBMS7zJdzJLO+pxfUNwHU=;
  b=RILWy93ac5ukrkbXdKEVD9XfNVQvhE7xx0BY751VHHh/eK9mOeBQ+HOt
   /8wu2ZOEaC5R2F29XmbWoHHuxcGW4FhHb2UvUEecMQ0EMzk5F+BUKJoFJ
   yfHSQIpxFXMMQbuRRsWAiSUlTOk7Aeegbc6Is+2jtR92dDqBzv0QsZRpn
   blFIsUM2SUx/nHFA50I2nv2QnHI8GRWgKkf67ijZWntKL7z5LfEhWO3RL
   nY2/A9ori/9jT0E5i3d17PBDK0REfNdfsMvT+/H5th2DEqlHS7JA3Gaai
   4E0aKokmS9GGluM+wBeidnUzr/4w3sWtsV1tisPlXVYVfTEv0y+ig02hj
   w==;
X-IronPort-AV: E=Sophos;i="5.97,331,1669071600"; 
   d="scan'208";a="29329244"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 27 Feb 2023 10:38:50 +0100
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 30651280056;
        Mon, 27 Feb 2023 10:38:50 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Markus Niebel <Markus.Niebel@ew.tq-group.com>
Subject: [PATCH 1/1] arm64: dts: imx93: add missing tpm pwm instances
Date:   Mon, 27 Feb 2023 10:38:46 +0100
Message-Id: <20230227093846.151474-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

TPM1/TPM3 are missing, add them.

Signed-off-by: Markus Niebel <Markus.Niebel@ew.tq-group.com>
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/imx93.dtsi | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx93.dtsi b/arch/arm64/boot/dts/freescale/imx93.dtsi
index 2076f9c9983a..a30c5d5f4d13 100644
--- a/arch/arm64/boot/dts/freescale/imx93.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx93.dtsi
@@ -153,6 +153,14 @@ system_counter: timer@44290000 {
 				nxp,no-divider;
 			};
 
+			tpm1: pwm@44310000 {
+				compatible = "fsl,imx7ulp-pwm";
+				reg = <0x44310000 0x1000>;
+				clocks = <&clk IMX93_CLK_TPM1_GATE>;
+				#pwm-cells = <3>;
+				status = "disabled";
+			};
+
 			tpm2: pwm@44320000 {
 				compatible = "fsl,imx7ulp-pwm";
 				reg = <0x44320000 0x10000>;
@@ -316,6 +324,14 @@ mu2: mailbox@42440000 {
 				status = "disabled";
 			};
 
+			tpm3: pwm@424e0000 {
+				compatible = "fsl,imx7ulp-pwm";
+				reg = <0x424e0000 0x1000>;
+				clocks = <&clk IMX93_CLK_TPM3_GATE>;
+				#pwm-cells = <3>;
+				status = "disabled";
+			};
+
 			tpm4: pwm@424f0000 {
 				compatible = "fsl,imx7ulp-pwm";
 				reg = <0x424f0000 0x10000>;
-- 
2.34.1

