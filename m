Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 48A9F704748
	for <lists+devicetree@lfdr.de>; Tue, 16 May 2023 10:04:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231547AbjEPIEf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 May 2023 04:04:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59924 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230054AbjEPIE2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 May 2023 04:04:28 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 394E144B6
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 01:04:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1684224267; x=1715760267;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=29EKeNfbvpclIXVTt2nNOH3JywbSngotqn4L7KkXTTY=;
  b=kWaeH9zBHjZ+qe7+NdVPeU+c/BLtZbNEvD6AFQPtntWYtqBbTbsDqp90
   1BOQJ+xd7rlom6asx0RvGuG6pjcObENYstZ+1P/+BmujCh6WOouvM2J/G
   fAexN1jI7hwaJK7/+o5g6ixZeMzWMmKGYt+aBd6JBgjZg96MAeXEhVWOF
   It/c+TKSGYhOehL64h20Z4sPyJGrc2QnIYdQf0ADn9+3V2AyJHnSB8MNN
   DpkwVueFcVO3mBBsGkP3/OMFt1zs6TraG+phA29YZI5fdaqyz8EB6BZjE
   qY0bGDZvD3DFLxJEl/OMwiTcoeQamKxclDmHIQCDrwSqq26tBBf81yLZg
   w==;
X-IronPort-AV: E=Sophos;i="5.99,278,1677538800"; 
   d="scan'208";a="30926886"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 16 May 2023 10:04:25 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Tue, 16 May 2023 10:04:25 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Tue, 16 May 2023 10:04:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1684224265; x=1715760265;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=29EKeNfbvpclIXVTt2nNOH3JywbSngotqn4L7KkXTTY=;
  b=W6mkH4DHx9YuVBjz41f7KfT8HG/YApAR/QclRLJNjFLf1US5Or6vwpQF
   2i6dSDZRY7xXRNIxJISBBu8HZ6FBkWcsfSKGznDiDjscQcXaY+u3VMgwS
   DaaXcyadjgHVs2AGpyyZ0nb9AfW2v40wq7J1Xz99uimNjIIH7wk/axhnO
   6j/8Xx1SbFBHq6cNmZEZrLWiRzt+TW3yIISku666vlSbxQnJ87aZCT+4o
   8uU2dLuzPMD4EPfZO3Ps1uCh4sRqEQEwM+SZfxNBOPQmFov28GpWBCReT
   jAwwTuz7HOApluQoFXHGDRtBPBcclNA3IQjY288DnAXACjd+f4O6Ebm9f
   w==;
X-IronPort-AV: E=Sophos;i="5.99,278,1677538800"; 
   d="scan'208";a="30926885"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 16 May 2023 10:04:25 +0200
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 3A1EE280056;
        Tue, 16 May 2023 10:04:25 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>, linux@ew.tq-group.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/1] arm64: dts: imx8mp: Add analog audio output on i.MX8MP TQMa8MPxL/MBa8MPxL
Date:   Tue, 16 May 2023 10:04:20 +0200
Message-Id: <20230516080420.426951-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Enable SAI3, add the codec and pinctrl nodes to enable audio support
on MBa8MPxL.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 .../freescale/imx8mp-tqma8mpql-mba8mpxl.dts   | 46 +++++++++++++++++++
 1 file changed, 46 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
index d8fb29e7e148..4240e20d38ac 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
@@ -202,6 +202,13 @@ linux,cma {
 		};
 	};
 
+	sound {
+		compatible = "fsl,imx-audio-tlv320aic32x4";
+		model = "tq-tlv320aic32x";
+		audio-cpu = <&sai3>;
+		audio-codec = <&tlv320aic3x04>;
+	};
+
 	thermal-zones {
 		soc-thermal {
 			trips {
@@ -449,6 +456,18 @@ &i2c2 {
 	sda-gpios = <&gpio5 17 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 	status = "okay";
 
+	tlv320aic3x04: audio-codec@18 {
+		compatible = "ti,tlv320aic32x4";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_tlv320aic3x04>;
+		reg = <0x18>;
+		clock-names = "mclk";
+		clocks = <&audio_blk_ctrl IMX8MP_CLK_AUDIOMIX_SAI3_MCLK1>;
+		reset-gpios = <&gpio4 29 GPIO_ACTIVE_LOW>;
+		iov-supply = <&reg_vcc_3v3>;
+		ldoin-supply = <&reg_vcc_3v3>;
+	};
+
 	se97_1c: temperature-sensor@1c {
 		compatible = "nxp,se97b", "jedec,jc-42.4-temp";
 		reg = <0x1c>;
@@ -528,6 +547,16 @@ &pwm3 {
 	status = "okay";
 };
 
+&sai3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_sai3>;
+	assigned-clocks = <&clk IMX8MP_CLK_SAI3>;
+	assigned-clock-parents = <&clk IMX8MP_AUDIO_PLL1_OUT>;
+	assigned-clock-rates = <12288000>;
+	fsl,sai-mclk-direction-output;
+	status = "okay";
+};
+
 &snvs_pwrkey {
 	status = "okay";
 };
@@ -843,6 +872,23 @@ pinctrl_regpwmfan: regpwmfangrp {
 		fsl,pins = <MX8MP_IOMUXC_SAI2_MCLK__GPIO4_IO27		0x80>;
 	};
 
+	pinctrl_sai3: sai3grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SAI3_TXFS__AUDIOMIX_SAI3_TX_SYNC	0x94
+			MX8MP_IOMUXC_SAI3_TXC__AUDIOMIX_SAI3_TX_BCLK	0x94
+			MX8MP_IOMUXC_SAI3_RXD__AUDIOMIX_SAI3_RX_DATA00	0x94
+			MX8MP_IOMUXC_SAI3_TXD__AUDIOMIX_SAI3_TX_DATA00	0x94
+			MX8MP_IOMUXC_SAI3_MCLK__AUDIOMIX_SAI3_MCLK	0x94
+		>;
+	};
+
+	pinctrl_tlv320aic3x04: tlv320aic3x04grp {
+		fsl,pins = <
+			/* CODEC RST# */
+			MX8MP_IOMUXC_SAI3_RXC__GPIO4_IO29		0x180
+		>;
+	};
+
 	/* X61 */
 	pinctrl_uart1: uart1grp {
 		fsl,pins = <MX8MP_IOMUXC_SD1_CLK__UART1_DCE_TX		0x140>,
-- 
2.34.1

