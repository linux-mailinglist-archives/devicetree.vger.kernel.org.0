Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1B963724743
	for <lists+devicetree@lfdr.de>; Tue,  6 Jun 2023 17:09:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234788AbjFFPJ0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Jun 2023 11:09:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40138 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233918AbjFFPJZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Jun 2023 11:09:25 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4FC091BD
        for <devicetree@vger.kernel.org>; Tue,  6 Jun 2023 08:09:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1686064164; x=1717600164;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=H+FCe04/LiCo+Q6QaX6QC9rIQi8VRX1DqSx73I3EOLc=;
  b=Ko4VxnM3mgzhwR/1sZmV8I2gCdMZZb6L/ofwzX1IgHU3X58mvSFLPiIu
   Gf9ZSV5zHEt+SDWrqNbXl5VCK2U4wpPwBxC0kalO51F/upu4hLsVH7NsI
   cLyCmHrliqxGyvfQECk3xzlg/PQ00xvccHRRgebZxixNRf+I1dIOn3VGF
   jglVXXsqYF0ZZGDq42vbNODzv85ZFU1HNdE1W8TexwpMlZPderb90EdbE
   K/iqReHSO0nfR0Y1enbm/6Inp0ZXvq+s4ULHoESiC3WBid8ovS3QrcsZh
   jloXdZ2tAnXIWU8Iy/WvfVBD7Qmtxr6Q0h4Qgz8G+U6mZRJZJc/hKrvgs
   A==;
X-IronPort-AV: E=Sophos;i="6.00,221,1681164000"; 
   d="scan'208";a="31308217"
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
  bh=H+FCe04/LiCo+Q6QaX6QC9rIQi8VRX1DqSx73I3EOLc=;
  b=R7OUM5rd/wcXi2c6RxIMPSlDXW2mQnKOx5I6+Uft63GV2+ufHMrLuP3i
   DZRRbFLqjICQb0mMiFHhnZeuiJ8AAzb0oQDZgrBw9MtV7sSCx2B26uBeE
   RyPDp0ExagdFnZ7hREwrOisz4Aa5a+uMo0lc1E1QqcD1x7BZqgq5mFEeP
   x+d1lqGiwmFxH9piL9eFN4cHMyhMPjXln1P9MzWGrrtWeqnRtQYfgGJlZ
   iIjjlampaiB1Wo5y3npq3f7FMMkQ7GnWLoyU5qqGSVTZXloxZXqskHf0F
   4EbsigmP+CQOAXnBAJJL9gUnBIarUntErIaMpSJHWIp91ebRH4f31R4SV
   A==;
X-IronPort-AV: E=Sophos;i="6.00,221,1681164000"; 
   d="scan'208";a="31308216"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 06 Jun 2023 17:09:20 +0200
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id E85AB280092;
        Tue,  6 Jun 2023 17:09:19 +0200 (CEST)
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
Subject: [PATCH 1/3] arm64: dts: imx8mq: Fix lcdif compatible
Date:   Tue,  6 Jun 2023 17:09:17 +0200
Message-Id: <20230606150919.778261-2-alexander.stein@ew.tq-group.com>
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

"fsl,imx8mq-lcdif" is compatible to "fsl,imx6sx-lcdif", adjust the list
accordingly. Fixes the dtbs_check warning:
imx8mq-tqma8mq-mba8mx.dtb: lcd-controller@30320000: compatible: 'oneOf'
conditional failed, one must be fixed:
 ['fsl,imx8mq-lcdif', 'fsl,imx28-lcdif'] is too long
 'fsl,imx8mq-lcdif' is not one of ['fsl,imx23-lcdif', 'fsl,imx28-lcdif',
 'fsl,imx6sx-lcdif', 'fsl,imx8mp-lcdif', 'fsl,imx93-lcdif']
 'fsl,imx6sx-lcdif' was expected

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/imx8mq.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
index 54e374e81ce6c..b7f296fe5bb8c 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
@@ -547,7 +547,7 @@ sdma2: dma-controller@302c0000 {
 			};
 
 			lcdif: lcd-controller@30320000 {
-				compatible = "fsl,imx8mq-lcdif", "fsl,imx28-lcdif";
+				compatible = "fsl,imx8mq-lcdif", "fsl,imx6sx-lcdif";
 				reg = <0x30320000 0x10000>;
 				interrupts = <GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clk IMX8MQ_CLK_LCDIF_PIXEL>;
-- 
2.34.1

