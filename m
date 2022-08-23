Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7553559EB17
	for <lists+devicetree@lfdr.de>; Tue, 23 Aug 2022 20:34:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232664AbiHWSeK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Aug 2022 14:34:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44138 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231678AbiHWSdn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Aug 2022 14:33:43 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 145147CA8B
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 09:56:14 -0700 (PDT)
Received: from tr.lan (ip-86-49-12-201.bb.vodafone.cz [86.49.12.201])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 813FC8026A;
        Tue, 23 Aug 2022 18:56:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1661273771;
        bh=3oFbtOy41nDJmKrUHsdnmKkPch0JKEWtQDXOwmMv+k4=;
        h=From:To:Cc:Subject:Date:From;
        b=dTx1Da57cFgj08sn+QdplvOI2yD1erlA21iOpoelN29VJa7CF2Iae1kuGpkJ4NJbt
         BL+plfi0YcUerKGE7jEXCvjMcwa8QHzJ+1hYIFY1EeZ2QKI61oulX0lRhdatVCdbmt
         GGnx5oeTBJTQVICA1wHNJ1hZX5dP4BblQZ9spUK2p49Wly+D2esbBQuDoTzBQtMktl
         TIVEtHM8sBGF1MYBqPnhMNfxEbGtNOOUpMYHpGD8V0dUJOp5Wthiv8/UbU34KXlexT
         H03gsQjTyw1J3km7HuyTupSq449eX7G7FbxySNLhWBAyTzfQtZzkp0Np5tJTkxBEhA
         GqZePTN3O+RUA==
From:   Marek Vasut <marex@denx.de>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Marek Vasut <marex@denx.de>, Fabio Estevam <festevam@denx.de>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        Peng Fan <peng.fan@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org
Subject: [PATCH] arm64: dts: imx8mp: Add SNVS LPGPR
Date:   Tue, 23 Aug 2022 18:56:02 +0200
Message-Id: <20220823165602.275931-1-marex@denx.de>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.6 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add SNVS LPGPR bindings to MX8M Plus, the LPGPR is used to store
e.g. boot counter.

Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Fabio Estevam <festevam@denx.de>
Cc: Marcel Ziswiler <marcel.ziswiler@toradex.com>
Cc: Peng Fan <peng.fan@nxp.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: devicetree@vger.kernel.org
To: linux-arm-kernel@lists.infradead.org
---
 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index f7adcb2c14880..21689e9e68170 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -478,6 +478,11 @@ snvs_pwrkey: snvs-powerkey {
 					wakeup-source;
 					status = "disabled";
 				};
+
+				snvs_lpgpr: snvs-lpgpr {
+					compatible = "fsl,imx8mp-snvs-lpgpr",
+						     "fsl,imx7d-snvs-lpgpr";
+				};
 			};
 
 			clk: clock-controller@30380000 {
-- 
2.35.1

