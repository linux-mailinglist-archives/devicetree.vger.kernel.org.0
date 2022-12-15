Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3160864E4E7
	for <lists+devicetree@lfdr.de>; Fri, 16 Dec 2022 00:59:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229971AbiLOX67 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Dec 2022 18:58:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42480 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229931AbiLOX64 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Dec 2022 18:58:56 -0500
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 09C7E5EDF8
        for <devicetree@vger.kernel.org>; Thu, 15 Dec 2022 15:58:47 -0800 (PST)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 81E2D85362;
        Fri, 16 Dec 2022 00:58:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1671148725;
        bh=TDOc4ppLLzaGk+mMPWRRZyxZdqyriNmTGWPAXmIqn3Q=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=jtLDbEsnpXNIojp8ztFz8HKPFkEbJaKKayUCiuWdAyyEoNcQca/2CYbxIpwHgzxmo
         ZxvPa1Hixk/TA//ILdqP8zmeqgPjuAtrhxvJ07LKLN611mC14FOUm6QJQb+0bMERFZ
         rgIzniow/2kC4a+4cmuZx5C0eRkmRo6f5sPmJbfWVMAIPq7QY2mDivm8mVSb9E/u/M
         4XTsyhjplcmTC667A/WW/adrCDxZt1Kw+QnS7SCO7YbPzSyYWTMLfH7JRFlK+kaZQs
         D3T2T5ci2RcTbM3pIhyllqLNFVKn4PYBq/1NNLnL1nBxhTKaBz1PN/9rliCMv1yyp+
         Q2luBTFxTKPHg==
From:   Marek Vasut <marex@denx.de>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Marek Vasut <marex@denx.de>, Fabio Estevam <festevam@denx.de>,
        Felix Radensky <felix.r@variscite.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Peng Fan <peng.fan@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH 2/3] arm64: dts: imx8mn: Drop deprecated regulator-compatible from Variscite VAR-SOM-MX8MN
Date:   Fri, 16 Dec 2022 00:58:26 +0100
Message-Id: <20221215235827.228620-2-marex@denx.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221215235827.228620-1-marex@denx.de>
References: <20221215235827.228620-1-marex@denx.de>
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

The "regulator-compatible" property is deprecated and unused, as the
match happens on the node name in Linux of_regulator_match() in case
the property is not present. Drop the deprecated property from DT.

Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Fabio Estevam <festevam@denx.de>
Cc: Felix Radensky <felix.r@variscite.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: Peng Fan <peng.fan@nxp.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: devicetree@vger.kernel.org
To: linux-arm-kernel@lists.infradead.org
---
 arch/arm64/boot/dts/freescale/imx8mn-var-som.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mn-var-som.dtsi b/arch/arm64/boot/dts/freescale/imx8mn-var-som.dtsi
index 87b5e23c766f7..2888de154f780 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn-var-som.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn-var-som.dtsi
@@ -207,7 +207,6 @@ ldo4_reg: LDO4 {
 			};
 
 			ldo5_reg: LDO5 {
-				regulator-compatible = "ldo5";
 				regulator-min-microvolt = <1800000>;
 				regulator-max-microvolt = <1800000>;
 				regulator-always-on;
-- 
2.35.1

