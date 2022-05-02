Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CC49C516DB9
	for <lists+devicetree@lfdr.de>; Mon,  2 May 2022 11:50:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1380949AbiEBJxa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 May 2022 05:53:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43380 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1384411AbiEBJwm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 May 2022 05:52:42 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9BA15120B3
        for <devicetree@vger.kernel.org>; Mon,  2 May 2022 02:49:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1651484953; x=1683020953;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=7NOVRH5gYXnHf6z2bzLqGROkXli3gZcZvcXNGi/7KrM=;
  b=IIaU69L4qRYPTkkQ+TsfCnt/Ny9sksBO9h2/JQdWGlIJ6FZoLvQ2JylD
   1T5PaEprMYls9k4jbsfSG0EDwd5J3Q3QFi4HWi92CScIoKFFnkDv2h5Ly
   zrz9SqaOh4AB7Cb5EtofJRDhWHIXQ2eyXfMWqy6h/g6YLQIBqw9gO6uU+
   /Qy7wbW0o5IgeF7mldrOubWLpHbNwgsLwcboDqfH2mmlburZ3uv3c6hwr
   HISi7Ex0MjCYyV5Nx44x6Wi9wtZDts5RrFj73dDDjDqMfwEmvxZxJoG/W
   egHMrAzTQK3z4OWq/P3N2FHWmpYTeGi3PhRB1Fx/mlxA6PrbszzeCfBbh
   A==;
X-IronPort-AV: E=Sophos;i="5.91,190,1647298800"; 
   d="scan'208";a="23608911"
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
  bh=7NOVRH5gYXnHf6z2bzLqGROkXli3gZcZvcXNGi/7KrM=;
  b=pm7SJXbP13YfWVUmaFS376Bu24X+XL753slUNXFtd/afgDzCYuQC3tgr
   HNAjuquZQlLJ8eduliJDJKwUBnRF3yiHV06wII8xfU+OoSsAS6JsOw1rf
   1K5TCm2FltrBlcVHZGeYdMUx/tyXUUcqlzWlYa1uwAiQapDVA+0WJpBBa
   zTFiT4vNAuE6YwwJemVdPbo2qWKyqP6FuaoHy4dAlNboqpkGSPyR/eS6+
   O/irDAlqcT0q728nukEQFHYtmeY7BIlODBsPLBr9gKf64Ocr5/komIvd2
   A2gZ4bX6AXovMhLej7l8iKre82SeYmpCxwqT5YzVhW2q+NrizrPmqSEzq
   A==;
X-IronPort-AV: E=Sophos;i="5.91,190,1647298800"; 
   d="scan'208";a="23608910"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 02 May 2022 11:49:06 +0200
Received: from steina-w.tq-net.de (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 9421F280075;
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
Subject: [PATCH 1/4] arm64: dt: imx8mq: support pwm polarity inversion
Date:   Mon,  2 May 2022 11:48:58 +0200
Message-Id: <20220502094901.251310-2-alexander.stein@ew.tq-group.com>
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

The i.MX8MQ has the same PWM IP as i.MX6 / i.MX7. This IP and the driver
supporting pwm polarity inversion. Switch CPU device tree fragment to
use 3 pwm-cells and correct board device trees.

Signed-off-by: Markus Niebel <Markus.Niebel@ew.tq-group.com>
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts | 2 +-
 arch/arm64/boot/dts/freescale/imx8mq-mnt-reform2.dts    | 2 +-
 arch/arm64/boot/dts/freescale/imx8mq.dtsi               | 8 ++++----
 3 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
index 622f3787a186..b86f188a440d 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
@@ -18,7 +18,7 @@ / {
 	backlight_dsi: backlight-dsi {
 		compatible = "pwm-backlight";
 		/* 200 Hz for the PAM2841 */
-		pwms = <&pwm1 0 5000000>;
+		pwms = <&pwm1 0 5000000 0>;
 		brightness-levels = <0 100>;
 		num-interpolated-steps = <100>;
 		/* Default brightness level (index into the array defined by */
diff --git a/arch/arm64/boot/dts/freescale/imx8mq-mnt-reform2.dts b/arch/arm64/boot/dts/freescale/imx8mq-mnt-reform2.dts
index 94a13cb500e6..8956a46788fa 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-mnt-reform2.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mq-mnt-reform2.dts
@@ -18,7 +18,7 @@ backlight: backlight {
 		compatible = "pwm-backlight";
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_backlight>;
-		pwms = <&pwm2 0 10000>;
+		pwms = <&pwm2 0 10000 0>;
 		power-supply = <&reg_main_usb>;
 		enable-gpios = <&gpio1 10 GPIO_ACTIVE_HIGH>;
 		brightness-levels = <0 32 64 128 160 200 255>;
diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
index 1eca2b431467..49eadb081b19 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
@@ -798,7 +798,7 @@ pwm1: pwm@30660000 {
 				clocks = <&clk IMX8MQ_CLK_PWM1_ROOT>,
 				         <&clk IMX8MQ_CLK_PWM1_ROOT>;
 				clock-names = "ipg", "per";
-				#pwm-cells = <2>;
+				#pwm-cells = <3>;
 				status = "disabled";
 			};
 
@@ -809,7 +809,7 @@ pwm2: pwm@30670000 {
 				clocks = <&clk IMX8MQ_CLK_PWM2_ROOT>,
 				         <&clk IMX8MQ_CLK_PWM2_ROOT>;
 				clock-names = "ipg", "per";
-				#pwm-cells = <2>;
+				#pwm-cells = <3>;
 				status = "disabled";
 			};
 
@@ -820,7 +820,7 @@ pwm3: pwm@30680000 {
 				clocks = <&clk IMX8MQ_CLK_PWM3_ROOT>,
 				         <&clk IMX8MQ_CLK_PWM3_ROOT>;
 				clock-names = "ipg", "per";
-				#pwm-cells = <2>;
+				#pwm-cells = <3>;
 				status = "disabled";
 			};
 
@@ -831,7 +831,7 @@ pwm4: pwm@30690000 {
 				clocks = <&clk IMX8MQ_CLK_PWM4_ROOT>,
 				         <&clk IMX8MQ_CLK_PWM4_ROOT>;
 				clock-names = "ipg", "per";
-				#pwm-cells = <2>;
+				#pwm-cells = <3>;
 				status = "disabled";
 			};
 
-- 
2.25.1

