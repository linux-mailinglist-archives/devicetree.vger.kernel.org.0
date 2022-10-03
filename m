Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5E2015F2C81
	for <lists+devicetree@lfdr.de>; Mon,  3 Oct 2022 10:54:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229730AbiJCIyE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Oct 2022 04:54:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34866 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229542AbiJCIxl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Oct 2022 04:53:41 -0400
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D46AB9FDF
        for <devicetree@vger.kernel.org>; Mon,  3 Oct 2022 01:37:22 -0700 (PDT)
Received: from mail.ideasonboard.com (cpc141996-chfd3-2-0-cust928.12-3.cable.virginm.net [86.13.91.161])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 9D2D5E03;
        Mon,  3 Oct 2022 10:37:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1664786241;
        bh=l2wI/3l5MRDpZSdpFkfZtjSR9fCawLLrbGsVo05g3VY=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=ctnCJenpUMUNsPkkPk8hX06+ALVmL6IQKzrefvVOGKB8iNEARNH5kzgZZaO6QBoNT
         MTHDrO4iT3rsR1tiVz3hy12FDBqkKZbVSX8DImxuBUsoUEJtVn4NI31HyTeY21h8Db
         anSAYOhJg6t+E4LEGqsx0dDs3rdoTy2zdoe7n/cI=
From:   Daniel Scally <dan.scally@ideasonboard.com>
To:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh@kernel.org>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Li Yang <leoyang.li@nxp.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Cc:     Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        laurent.pinchart@ideasonboard.com, kieran.bingham@ideasonboard.com,
        debix-tech@polyhex.net, Daniel Scally <dan.scally@ideasonboard.com>
Subject: [PATCH 2/3] dt-bindings: arm: fsl: Enumerate Debix Model A Board
Date:   Mon,  3 Oct 2022 09:37:04 +0100
Message-Id: <20221003083705.22495-3-dan.scally@ideasonboard.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221003083705.22495-1-dan.scally@ideasonboard.com>
References: <20221003083705.22495-1-dan.scally@ideasonboard.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add an entry to the list of imx8mp boards denoting the Debix Model A
board from Polyhex Technology Co.

Reviewed-by: Kieran Bingham <kieran.bingham@ideasonboard.com>
Signed-off-by: Daniel Scally <dan.scally@ideasonboard.com>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index ef524378d449..0be82122ef05 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -916,6 +916,7 @@ properties:
           - enum:
               - fsl,imx8mp-evk            # i.MX8MP EVK Board
               - gateworks,imx8mp-gw74xx   # i.MX8MP Gateworks Board
+              - polyhex,imx8mp-debix-modela2gb # Polyhex Debix Model A (2GB) Board
               - toradex,verdin-imx8mp     # Verdin iMX8M Plus Modules
               - toradex,verdin-imx8mp-nonwifi  # Verdin iMX8M Plus Modules without Wi-Fi / BT
               - toradex,verdin-imx8mp-wifi  # Verdin iMX8M Plus Wi-Fi / BT Modules
-- 
2.34.1

