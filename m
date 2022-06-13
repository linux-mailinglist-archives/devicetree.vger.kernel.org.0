Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3CB8A5499B0
	for <lists+devicetree@lfdr.de>; Mon, 13 Jun 2022 19:20:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236021AbiFMRU4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Jun 2022 13:20:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33836 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239325AbiFMRUl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Jun 2022 13:20:41 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D4E9F1BE9B
        for <devicetree@vger.kernel.org>; Mon, 13 Jun 2022 05:34:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1655123650; x=1686659650;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=WWt3TZQJ3b7nMr0MQMc7RhOZI5BNRwRg8omtFaW4y3E=;
  b=nzOFm3n7aYXXVKZSYtEA9aKRqKKsCKuF1nNgy/c3YlaUgE+ucXyCgzCE
   MxGhuwPQvUNp69xdz9OAkGq4OrS62XGDPGmDHmy/nnmQsyPxenMbfjQBE
   /0UXjM9clDHtedbiOUS4+DPfTS6K0zBnWGpNDH4zRx1rvXIQDbCDVnVKA
   OMOivKxi0TheHWqlNq0vMrZjgFLWoc77qSldYU+64WAvnSyUBSwLWJOcP
   LlxU/uoR86/xRd2/zK4E7CselxYfPhWZnlB1yPr3JJ2XpwbD++XBV8cjT
   iOkVCkRXf9JBAVfpPdyckPQkkAIzVgmQg/7/L5VEaQ5sBVjTIOQlf2r7R
   w==;
X-IronPort-AV: E=Sophos;i="5.91,297,1647298800"; 
   d="scan'208";a="24418711"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 13 Jun 2022 14:34:04 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Mon, 13 Jun 2022 14:34:04 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Mon, 13 Jun 2022 14:34:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1655123644; x=1686659644;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=WWt3TZQJ3b7nMr0MQMc7RhOZI5BNRwRg8omtFaW4y3E=;
  b=bckmF9tynId82cYVaSZ10beP1nTHyCWKwawzE5VNGDmY7KZsFYdhHnrN
   g/66bo63SOI0lcr48j60SelxImmGBSid1KgR41Y+MW4nClK3m/dYGJtoK
   B5NW/bsypikO6HO70uSHqH8e4FsQBU73lw11QU0Ki88xxEvMJD6Fy0qKv
   Xj+9yePTnNz28CKTiDr4Z73ebAd3S4D5gLLXc9oaQktiCkzIsdUjBCZf7
   mE3odRBrDiZsbkhMpvN14bc9GYrcSnqiJ7fPy1hRAK5Z/MN3L4SXuWRhK
   NDMUFE/1ASNQpr4BCJB+RRVTBh/OeMJpnR3a18Ta9LRn5FV0DI1EF1oNo
   Q==;
X-IronPort-AV: E=Sophos;i="5.91,297,1647298800"; 
   d="scan'208";a="24418709"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 13 Jun 2022 14:34:04 +0200
Received: from steina-w.tq-net.de (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id E3D62280073;
        Mon, 13 Jun 2022 14:34:03 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 6/7] ARM: dts: imx6ul: fix lcdif node compatible
Date:   Mon, 13 Jun 2022 14:33:56 +0200
Message-Id: <20220613123357.441779-6-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220613123357.441779-1-alexander.stein@ew.tq-group.com>
References: <20220613123357.441779-1-alexander.stein@ew.tq-group.com>
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

In yaml binding "fsl,imx6ul-lcdif" is listed as compatible to imx6sx-lcdif,
but not imx28-lcdif. Change the list accordingly. Fixes the
dt_binding_check warning:
lcdif@21c8000: compatible: 'oneOf' conditional failed, one must be fixed:
['fsl,imx6ul-lcdif', 'fsl,imx28-lcdif'] is too long
Additional items are not allowed ('fsl,imx28-lcdif' was unexpected)
'fsl,imx6ul-lcdif' is not one of ['fsl,imx23-lcdif', 'fsl,imx28-lcdif',
'fsl,imx6sx-lcdif']
'fsl,imx6sx-lcdif' was expected

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm/boot/dts/imx6ul.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx6ul.dtsi b/arch/arm/boot/dts/imx6ul.dtsi
index c67e28232d97..1dda3cddcbf2 100644
--- a/arch/arm/boot/dts/imx6ul.dtsi
+++ b/arch/arm/boot/dts/imx6ul.dtsi
@@ -1007,7 +1007,7 @@ csi: csi@21c4000 {
 			};
 
 			lcdif: lcdif@21c8000 {
-				compatible = "fsl,imx6ul-lcdif", "fsl,imx28-lcdif";
+				compatible = "fsl,imx6ul-lcdif", "fsl,imx6sx-lcdif";
 				reg = <0x021c8000 0x4000>;
 				interrupts = <GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clks IMX6UL_CLK_LCDIF_PIX>,
-- 
2.25.1

