Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4810A52252A
	for <lists+devicetree@lfdr.de>; Tue, 10 May 2022 22:07:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229836AbiEJUG6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 May 2022 16:06:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52766 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229979AbiEJUF7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 May 2022 16:05:59 -0400
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C64AE14081
        for <devicetree@vger.kernel.org>; Tue, 10 May 2022 13:05:54 -0700 (PDT)
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 2BA65B60;
        Tue, 10 May 2022 22:05:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1652213153;
        bh=nRJhvi9DyuC/lZzQexSZUncMbFTe7b4FyQjl73rQ0zg=;
        h=From:To:Cc:Subject:Date:From;
        b=iNohotgGOnTyQ5pQ6/ZUkUzNWWYUy6jZOfVyCNYWccAEwy7LZ13RYrCLbUCRIfJL6
         xClhtQxbTbgjqx7/BgJ1W/VPhlcXK/lNS1VKGt7dzdwk6us/pHkExtFQg0/11xJTfN
         Vm09hVJfyrs7XJxAG9rI5abouGpMAivAMPZoKUsY=
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     Shawn Guo <shawnguo@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Lucas Stach <l.stach@pengutronix.de>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Paul Elder <paul.elder@ideasonboard.com>,
        Marek Vasut <marex@denx.de>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH] dt-bindings: soc: imx8mp-media-blk-ctrl: Fix DT example
Date:   Tue, 10 May 2022 23:05:43 +0300
Message-Id: <20220510200543.13482-1-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The DT example incorrectly names the ISP power domain "isp1" instead of
"isp". This causes a validation failure:

Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.example.dtb: blk-ctl@32ec0000: power-domain-names:7: 'isp' was expected
        From schema: Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml

Fix it.

Fixes: 584d6dd668e2 ("dt-bindings: soc: Add i.MX8MP media block control DT bindings")
Reported-by: Rob Herring <robh+dt@kernel.org>
Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
Shawn, this fixes an issue in linux-next, could you please apply the
patch to your imx/bindings branch for v5.19 ?
---
 .../devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml  | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml b/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml
index 21d3ee486295..b246d8386ba4 100644
--- a/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml
+++ b/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml
@@ -88,7 +88,7 @@ examples:
                         <&mediamix_pd>, <&ispdwp_pd>, <&ispdwp_pd>,
                         <&mipi_phy2_pd>;
         power-domain-names = "bus", "mipi-dsi1", "mipi-csi1", "lcdif1", "isi",
-                             "mipi-csi2", "lcdif2", "isp1", "dwe", "mipi-dsi2";
+                             "mipi-csi2", "lcdif2", "isp", "dwe", "mipi-dsi2";
         clocks = <&clk IMX8MP_CLK_MEDIA_APB_ROOT>,
                  <&clk IMX8MP_CLK_MEDIA_AXI_ROOT>,
                  <&clk IMX8MP_CLK_MEDIA_CAM1_PIX_ROOT>,
-- 
Regards,

Laurent Pinchart

