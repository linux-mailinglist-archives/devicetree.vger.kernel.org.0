Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9553A766756
	for <lists+devicetree@lfdr.de>; Fri, 28 Jul 2023 10:35:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235047AbjG1Ifu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Jul 2023 04:35:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36892 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235048AbjG1IfT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Jul 2023 04:35:19 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D4B0844B8
        for <devicetree@vger.kernel.org>; Fri, 28 Jul 2023 01:34:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1690533283; x=1722069283;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=wB6X/8AQ5f02NzptERXJa7VYkVtINT/p5Q99fuqlrok=;
  b=ccivIDfGItN3WKhDLD5YwR9rDrXTx6mgvVYJ8XVBSnP7j5KHB/+DxrYP
   7OxlCYJkm9fKKgf4+Hp+9N6+XQQnZbf8jirwSEPX0aizlLa5qBV0J71MX
   4NeexaswTh/CBKZjCFtNOtSuYka6g076ey9o6mNmRJIkYDcQUYAsVYckD
   OOlWUB2eaedDgBzHHY5MY9bBWwdrXy5rUkieSyzuDa4jUJiCePVwYv61T
   TLQalMnMvwN8Zk4T34v5TG2ZWxpIlm3IhStIYr3BJS5zun2hS02QFLQlB
   Drgcje0xx0p+bPoakJx1bM+8QDtmn68elXjRyJ4GiQ+Aud8m7S2HGIzzN
   Q==;
X-IronPort-AV: E=Sophos;i="6.01,236,1684792800"; 
   d="scan'208";a="32171292"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 28 Jul 2023 10:34:39 +0200
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 9636C280075;
        Fri, 28 Jul 2023 10:34:39 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>, Peng Fan <peng.fan@nxp.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/1] arm64: dts: imx93: Fix anatop node size
Date:   Fri, 28 Jul 2023 10:34:35 +0200
Message-Id: <20230728083435.118491-1-alexander.stein@ew.tq-group.com>
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

Although the memory map of i.MX93 reference manual rev. 2 claims that
analog top has start address of 0x44480000 and end address of 0x4448ffff,
this overlaps with TMU memory area starting at 0x44482000, as stated in
section 73.6.1.
As PLL configuration registers start at addresses up to 0x44481400, as used
by clk-imx93, reduce the anatop size to 0x2000, so exclude the TMU area
but keep all PLL registers inside.

Fixes: ec8b5b5058ea ("arm64: dts: freescale: Add i.MX93 dtsi support")
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
Unfortunately TMU isn't listed in memory map, so it was a bit of guess work.

This fixes the probe failure of qoriq_thermal:
qoriq_thermal 44482000.tmu: can't request region for resource [mem 0x44482000-0x44482fff]
qoriq_thermal 44482000.tmu: Failed to get memory region
qoriq_thermal: probe of 44482000.tmu failed with error -16

/proc/iomem also shows it's claimed by anatop:
> 44480000-4448ffff : 44450000.clock-controller anatop@44480000

 arch/arm64/boot/dts/freescale/imx93.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx93.dtsi b/arch/arm64/boot/dts/freescale/imx93.dtsi
index 4ec9df78f2050..6f85a05ee7e1a 100644
--- a/arch/arm64/boot/dts/freescale/imx93.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx93.dtsi
@@ -379,7 +379,7 @@ mediamix: power-domain@44462400 {
 
 			anatop: anatop@44480000 {
 				compatible = "fsl,imx93-anatop", "syscon";
-				reg = <0x44480000 0x10000>;
+				reg = <0x44480000 0x2000>;
 			};
 
 			tmu: tmu@44482000 {
-- 
2.34.1

