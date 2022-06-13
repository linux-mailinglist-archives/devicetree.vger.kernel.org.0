Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B2FFA548CB3
	for <lists+devicetree@lfdr.de>; Mon, 13 Jun 2022 18:14:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242199AbiFMPQV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Jun 2022 11:16:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37036 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1387587AbiFMPPM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Jun 2022 11:15:12 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 64CFF19280
        for <devicetree@vger.kernel.org>; Mon, 13 Jun 2022 05:34:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1655123648; x=1686659648;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=LOBrqVSjd5cqvWno960uxXoB7Fxk/KaKpa3za4EmJYA=;
  b=pnlnVG8IO3M7zhYq8A30FVZXV9GMCAEpo626ejTSKGBK54UYc2cwANNL
   Kqsqu9fefRDJZ3Xhcgjkioxqfp8v6SErRLlYIYBMSqH5KQvEksn4iE64Y
   fODvyNpKUi2Ua0aL13jOPA5+zDHCNQ1j+1r4568y0xqFjzXdj2cD/uYMl
   ban7vyG195DkskMeb4TgRUPZ7tiz6Yma/+SXtmKyicTG3cycwRITUA+q/
   lbKCp88M8qO5QpM0ZZO70K/+j1gT9s/1amAnRcOpE95Eng2bH175Ymd8M
   yyLIvuQ8NtVphntso2ptgIfaWD+gJ+S/LY5ABc0udptKFLINo92sY488B
   Q==;
X-IronPort-AV: E=Sophos;i="5.91,297,1647298800"; 
   d="scan'208";a="24418704"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 13 Jun 2022 14:34:03 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Mon, 13 Jun 2022 14:34:03 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Mon, 13 Jun 2022 14:34:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1655123643; x=1686659643;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=LOBrqVSjd5cqvWno960uxXoB7Fxk/KaKpa3za4EmJYA=;
  b=lP3kDHKmFo36/3gUmQbliDVWiyIcZeW2SE2H9vY194KTKpPOrDKTJuf+
   eG9akwOCxjq/GSPSxu5uI7NUWi19/38LtAZFJGdJuz8bXdhaygzsjRXWG
   nIEMvfinye17dcB24WI/cC0ZNcN2mfwFjBxzbkfHMCFp5y5041Uid3lZb
   wvFXqWkDKRedM5KT7lNe2yAtz89NP6Q1BqKCwtDGm1FNuemCH/ElCsQiC
   /BhzluB8JOQawdDb8ppGz84YFOYAJNr0zSE26rvP4ssiaiW0BNMXtpclv
   B5Px2an5MHXxIDd8Pp2tOg011BhRKxIEYdTUajDxluW56a1f3g+4BKNAG
   Q==;
X-IronPort-AV: E=Sophos;i="5.91,297,1647298800"; 
   d="scan'208";a="24418703"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 13 Jun 2022 14:34:03 +0200
Received: from steina-w.tq-net.de (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 63A0C280056;
        Mon, 13 Jun 2022 14:34:03 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 3/7] ARM: dts: imx6ul: fix keypad compatible
Date:   Mon, 13 Jun 2022 14:33:53 +0200
Message-Id: <20220613123357.441779-3-alexander.stein@ew.tq-group.com>
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

According to binding, the compatible shall only contain imx6ul and imx21
compatibles. Fixes the dt_binding_check warning:
keypad@20b8000: compatible: 'oneOf' conditional failed, one must be fixed:
['fsl,imx6ul-kpp', 'fsl,imx6q-kpp', 'fsl,imx21-kpp'] is too long
Additional items are not allowed ('fsl,imx6q-kpp', 'fsl,imx21-kpp' were
unexpected)
Additional items are not allowed ('fsl,imx21-kpp' was unexpected)
'fsl,imx21-kpp' was expected

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm/boot/dts/imx6ul.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx6ul.dtsi b/arch/arm/boot/dts/imx6ul.dtsi
index 2fcbd9d91521..df8b4ad62418 100644
--- a/arch/arm/boot/dts/imx6ul.dtsi
+++ b/arch/arm/boot/dts/imx6ul.dtsi
@@ -544,7 +544,7 @@ fec2: ethernet@20b4000 {
 			};
 
 			kpp: keypad@20b8000 {
-				compatible = "fsl,imx6ul-kpp", "fsl,imx6q-kpp", "fsl,imx21-kpp";
+				compatible = "fsl,imx6ul-kpp", "fsl,imx21-kpp";
 				reg = <0x020b8000 0x4000>;
 				interrupts = <GIC_SPI 82 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clks IMX6UL_CLK_KPP>;
-- 
2.25.1

