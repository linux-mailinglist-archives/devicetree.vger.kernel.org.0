Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6864B724744
	for <lists+devicetree@lfdr.de>; Tue,  6 Jun 2023 17:09:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233918AbjFFPJ1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Jun 2023 11:09:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40148 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233893AbjFFPJ0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Jun 2023 11:09:26 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 861CF12D
        for <devicetree@vger.kernel.org>; Tue,  6 Jun 2023 08:09:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1686064165; x=1717600165;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=lXkA/Aqya+mgVpTbgS3c1YBHhHmaVNTC82U06MfqsXI=;
  b=iA3sCyTiC5mbJM/0gdu7+7w7f8i+102Dfhqq854YTy0JoQ7QADrPbTHE
   Nx0cdkLD/ljGmOnYQUBTmvhRag5Z31rfweafbcapuxs6GER84nyjDxmmE
   o+QXND1USbC1Ie9aQbBWyAxH2uw9PCjwwEyZfdc708wGCaB589+CeMZZc
   rvUW1yXM5jhubRhx1BgD5s62ikSKGjA4ZwmTx+WHvkXypLDso+jniahRG
   B0BqqG7fygzruwU9ml41nYzk0CfscyxiXFBuHMBVkjgisdyqTr5cS2zvB
   rWUDoKubgA1TvZI5gjjh0oNCgYSIZzjzAHvR4dSM8mB1qr+xZyk43h3TL
   A==;
X-IronPort-AV: E=Sophos;i="6.00,221,1681164000"; 
   d="scan'208";a="31308219"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 06 Jun 2023 17:09:20 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Tue, 06 Jun 2023 17:09:20 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Tue, 06 Jun 2023 17:09:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1686064160; x=1717600160;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=lXkA/Aqya+mgVpTbgS3c1YBHhHmaVNTC82U06MfqsXI=;
  b=n1z5Zi6eWgVERJHr8HVA0dVxMlgl1ZR0KK97hx55mueSJ4eUPZ0bxcYe
   ruplgev0P51gKI/tuncR1Uc/oyjOm2trB5vcVasKlVjeN4+b9CQPl4BWo
   7b0XDJ98PJqE++cAJVQ4QuTOo5mNW/wrSs7dXcQmz6kL5oa5lUVoEBbaf
   np9ycNKGxTc2C0znI41/d6NuSad/XK5wLAyjyEFiOHIf0OCm/ImE+CG1M
   XlqPJ8bvFefEqd295VBiRHw5MPmGnVFgsKuX+Bj9IbWwb/ctPKbtojw/A
   v7IcF6FCbSHpvn/guGoL9t//dCmEaP7L3mWedrK1AHPWctwK+uitXNlAK
   w==;
X-IronPort-AV: E=Sophos;i="6.00,221,1681164000"; 
   d="scan'208";a="31308218"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 06 Jun 2023 17:09:20 +0200
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 26FFE280090;
        Tue,  6 Jun 2023 17:09:20 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/3] arm64: dts: imx8mq: Fix lcdif clocks
Date:   Tue,  6 Jun 2023 17:09:18 +0200
Message-Id: <20230606150919.778261-3-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230606150919.778261-1-alexander.stein@ew.tq-group.com>
References: <20230606150919.778261-1-alexander.stein@ew.tq-group.com>
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

Add display APB and AXI clocks as required by bindings. This fixes the
warnings:
lcd-controller@30320000: clocks: [[2, 128]] is too short
        From schema: Documentation/devicetree/bindings/display/fsl,lcdif.yaml
lcd-controller@30320000: clock-names: ['pix'] is too short
        From schema: Documentation/devicetree/bindings/display/fsl,lcdif.yaml

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/imx8mq.dtsi | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
index b7f296fe5bb8c..813fd85657f6b 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
@@ -550,8 +550,10 @@ lcdif: lcd-controller@30320000 {
 				compatible = "fsl,imx8mq-lcdif", "fsl,imx6sx-lcdif";
 				reg = <0x30320000 0x10000>;
 				interrupts = <GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>;
-				clocks = <&clk IMX8MQ_CLK_LCDIF_PIXEL>;
-				clock-names = "pix";
+				clocks = <&clk IMX8MQ_CLK_LCDIF_PIXEL>,
+					 <&clk IMX8MQ_CLK_DISP_APB_ROOT>,
+					 <&clk IMX8MQ_CLK_DISP_AXI_ROOT>;
+				clock-names = "pix", "axi", "disp_axi";
 				assigned-clocks = <&clk IMX8MQ_VIDEO_PLL1_REF_SEL>,
 						  <&clk IMX8MQ_VIDEO_PLL1_BYPASS>,
 						  <&clk IMX8MQ_CLK_LCDIF_PIXEL>,
-- 
2.34.1

