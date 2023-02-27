Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 502246A4685
	for <lists+devicetree@lfdr.de>; Mon, 27 Feb 2023 16:54:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229816AbjB0Pym (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Feb 2023 10:54:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40962 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229815AbjB0Pym (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Feb 2023 10:54:42 -0500
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1133D1ADC3
        for <devicetree@vger.kernel.org>; Mon, 27 Feb 2023 07:54:41 -0800 (PST)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id A80BE85A81;
        Mon, 27 Feb 2023 16:54:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1677513279;
        bh=a8O4DByypb/t3gn7Z8fOup0Bdhrzf3HTjCQWF9LzYY4=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=O4lgGKTCluXo8gVo8zEYNvWSAfDIRSHVquCn9z9rrEnCPG46xrRPj3mfzz3G3HqY9
         M7i9hk+6glqC57uFKLlQamXGCwSJ78Mwej0DvP9vL+VoMxvuJKBkm/RJkJDyWc+CFe
         Gg3B4KwI0DGqgBQZ4kDwbag585KKyylsk7bNRT3qxx+6NBZkTZ4RMDrOVaz9Nw92L/
         jMtU3S8upDWUqy8zKah002e3GXUTTjJY8J34TfU6ncWzB1AjDyPiBaOnOpL1c4Y9h2
         yQdci7d5an9lcdB3fbbr+dXXfSzdbOPfMdCDng4j6Z5A9OQ28CA2Y9N6f3wNQCc753
         +reSWPf2WiBIw==
From:   Marek Vasut <marex@denx.de>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Marek Vasut <marex@denx.de>,
        Alexander Stein <alexander.stein@ew.tq-group.com>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Paul Elder <paul.elder@ideasonboard.com>,
        Peng Fan <peng.fan@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Richard Cochran <richardcochran@gmail.com>,
        Richard Zhu <hongxing.zhu@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v5 5/5] arm64: dts: imx8mp: Reorder clock and reg properties
Date:   Mon, 27 Feb 2023 16:54:23 +0100
Message-Id: <20230227155423.40359-5-marex@denx.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230227155423.40359-1-marex@denx.de>
References: <20230227155423.40359-1-marex@denx.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.6 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Align the clock and reg properties order with example bindings
and the rest of the imx8mp.dtsi . No functional change.

Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Lucas Stach <l.stach@pengutronix.de>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: Paul Elder <paul.elder@ideasonboard.com>
Cc: Peng Fan <peng.fan@nxp.com>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Richard Cochran <richardcochran@gmail.com>
Cc: Richard Zhu <hongxing.zhu@nxp.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
---
V5: New patch
---
 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index ca8093ee4d0e4..524b4ccfcc553 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -1202,10 +1202,10 @@ media_blk_ctrl: blk-ctrl@32ec0000 {
 
 				lvds_bridge: bridge@5c {
 					compatible = "fsl,imx8mp-ldb";
-					clocks = <&clk IMX8MP_CLK_MEDIA_LDB>;
-					clock-names = "ldb";
 					reg = <0x5c 0x4>, <0x128 0x4>;
 					reg-names = "ldb", "lvds";
+					clocks = <&clk IMX8MP_CLK_MEDIA_LDB>;
+					clock-names = "ldb";
 					assigned-clocks = <&clk IMX8MP_CLK_MEDIA_LDB>;
 					assigned-clock-parents = <&clk IMX8MP_VIDEO_PLL1_OUT>;
 					status = "disabled";
-- 
2.39.2

