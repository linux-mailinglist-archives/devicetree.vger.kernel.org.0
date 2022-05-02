Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BFF3C516DB7
	for <lists+devicetree@lfdr.de>; Mon,  2 May 2022 11:50:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1354967AbiEBJx3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 May 2022 05:53:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43488 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1384519AbiEBJwn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 May 2022 05:52:43 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2563D12760
        for <devicetree@vger.kernel.org>; Mon,  2 May 2022 02:49:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1651484955; x=1683020955;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=hg61ERVzrL5sBOFYdRQ0uFMW1DGo0Jl96d3Qgjw0SdU=;
  b=qjgixQ5IXJ++gZ542R45pC5Pf4mSWKs8ARTYDetnmwkMTId0YlVJYMG4
   JkjlmwOznujVFY6A5ufTNj1haeVZ5tr2Fw01cOnsg/hmmQJnTwFbzZtRL
   rll0URAJxoARzlSJ64jWgY2zHZ1JFNWJO3CA44kDzpNxkXRt8aIQgglkJ
   oyuwR0vaElsAEGxJFENvwSh7bs8JVQuzh1RTEHXR7LuaoJH2jIP61unat
   c9vCH6wzExSuj1rRjtg3zUzXQBDcAvsjblpsnKD2DAqXXiVDsEyKAKN5u
   vkguQdjljmcYzTZOZETgKSA/sCTcgR+JKmdwc+DNHXMQDQSEy/OigoDHk
   w==;
X-IronPort-AV: E=Sophos;i="5.91,190,1647298800"; 
   d="scan'208";a="23608915"
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
  bh=hg61ERVzrL5sBOFYdRQ0uFMW1DGo0Jl96d3Qgjw0SdU=;
  b=JyxszQcHf9ywHpShM3+wKm3bKGT/kQ/kP4fqET4hAeDbOhr1OdgRdwsB
   YLAVgdwTFNNn5sGquE0DzQMiQLr/RhMeJ987/eaYt49qC0xoGO5OF0UcF
   0oQ3buYLEczNoA8jnURMD9G7sr7625Yr4K388DMYeCI6LRIpYD7MO59I2
   T/VHE1f1kp9DvWxsIXPzyIzTvL+IBZcfUzUdv/zciZKU5JgrpwNw4L7VT
   fCsBZ55wp2Ec7zmrAOLW7KKxSYJBajcVmK0arcWlVktT/u9j2HcbJ/pi1
   itF/FLwUCBLXBJPF2rQKaWkEyn1+AZ/g+H2lLcFAtflQW0nCxOT6LVhlh
   Q==;
X-IronPort-AV: E=Sophos;i="5.91,190,1647298800"; 
   d="scan'208";a="23608914"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 02 May 2022 11:49:07 +0200
Received: from steina-w.tq-net.de (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 2B911280070;
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
Subject: [PATCH 3/4] arm64: dt: imx8mn: support pwm polarity inversion
Date:   Mon,  2 May 2022 11:49:00 +0200
Message-Id: <20220502094901.251310-4-alexander.stein@ew.tq-group.com>
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

The i.MX8M Nano has the same PWM IP as i.MX6 / i.MX7. This IP
and the driver supporting pwm polarity inversion. Switch CPU
device tree fragment to use 3 pwm-cells.

Signed-off-by: Markus Niebel <Markus.Niebel@ew.tq-group.com>
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/imx8mn.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mn.dtsi b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
index 8def5d679e7e..e41e1d56f980 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
@@ -705,7 +705,7 @@ pwm1: pwm@30660000 {
 				clocks = <&clk IMX8MN_CLK_PWM1_ROOT>,
 					<&clk IMX8MN_CLK_PWM1_ROOT>;
 				clock-names = "ipg", "per";
-				#pwm-cells = <2>;
+				#pwm-cells = <3>;
 				status = "disabled";
 			};
 
@@ -716,7 +716,7 @@ pwm2: pwm@30670000 {
 				clocks = <&clk IMX8MN_CLK_PWM2_ROOT>,
 					 <&clk IMX8MN_CLK_PWM2_ROOT>;
 				clock-names = "ipg", "per";
-				#pwm-cells = <2>;
+				#pwm-cells = <3>;
 				status = "disabled";
 			};
 
@@ -727,7 +727,7 @@ pwm3: pwm@30680000 {
 				clocks = <&clk IMX8MN_CLK_PWM3_ROOT>,
 					 <&clk IMX8MN_CLK_PWM3_ROOT>;
 				clock-names = "ipg", "per";
-				#pwm-cells = <2>;
+				#pwm-cells = <3>;
 				status = "disabled";
 			};
 
@@ -738,7 +738,7 @@ pwm4: pwm@30690000 {
 				clocks = <&clk IMX8MN_CLK_PWM4_ROOT>,
 					 <&clk IMX8MN_CLK_PWM4_ROOT>;
 				clock-names = "ipg", "per";
-				#pwm-cells = <2>;
+				#pwm-cells = <3>;
 				status = "disabled";
 			};
 
-- 
2.25.1

