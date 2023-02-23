Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B5C116A0C9F
	for <lists+devicetree@lfdr.de>; Thu, 23 Feb 2023 16:11:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233393AbjBWPLJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Feb 2023 10:11:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52480 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233330AbjBWPLI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Feb 2023 10:11:08 -0500
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C6FD946179
        for <devicetree@vger.kernel.org>; Thu, 23 Feb 2023 07:11:06 -0800 (PST)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 0299685831;
        Thu, 23 Feb 2023 16:11:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1677165064;
        bh=5+SqeNuDll1+A0cT51RRG6pnuQ0c1roVFERlrFacWsU=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=yU7jQa1E8t0/02cOBcnR+VrpxTigN0VBJQFYYymxXfcQFMMWqSrXqzxaUyyzpsyFJ
         YpyUzvVnHeMl3PN97e6xS49PXgkHWtwXtlEiHR4xlWrljvqpMrnzu+CDpG/8Opyuij
         Mb+BPpj1j4CsUmOXCyMeWomFKetByM8c5vnT8Al6TGdmfPrbcnASXagOgOTJbHeGpD
         pn7QH/A1Vb477k53adkos//52PnoTqzKlhZa2cU/PS2Q5fOGDFXvARLgEP+bTM4Tns
         ECoGQt/e5fHEUT4kHG9JuIt11lgfGpj5GL8fRFNjia3Gho7KuskMHPwhlIUn0oPZmq
         FsKBFgzPV5Ipg==
From:   Marek Vasut <marex@denx.de>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Marek Vasut <marex@denx.de>, Liu Ying <victor.liu@nxp.com>,
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
Subject: [PATCH v4 4/4] arm64: dts: imx8mp: Drop simple-bus from fsl,imx8mp-media-blk-ctrl
Date:   Thu, 23 Feb 2023 16:10:43 +0100
Message-Id: <20230223151043.41548-4-marex@denx.de>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230223151043.41548-1-marex@denx.de>
References: <20230223151043.41548-1-marex@denx.de>
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

This block should not be compatible with simple-bus and misuse it that way.
Instead, the driver should scan its subnodes and bind drivers to them.

Reviewed-by: Liu Ying <victor.liu@nxp.com>
Fixes: 94e6197dadc9 ("arm64: dts: imx8mp: Add LCDIF2 & LDB nodes")
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
V2: Turn this into 4/4
V3: Add RB from Liu
V4: No change
---
 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index 2dd60e3252f35..ca8093ee4d0e4 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -1151,7 +1151,7 @@ lcdif2_to_ldb: endpoint {
 
 			media_blk_ctrl: blk-ctrl@32ec0000 {
 				compatible = "fsl,imx8mp-media-blk-ctrl",
-					     "simple-bus", "syscon";
+					     "syscon";
 				reg = <0x32ec0000 0x10000>;
 				#address-cells = <1>;
 				#size-cells = <1>;
-- 
2.39.1

