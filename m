Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2113D670C47
	for <lists+devicetree@lfdr.de>; Tue, 17 Jan 2023 23:59:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229967AbjAQW70 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Jan 2023 17:59:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53538 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230024AbjAQW6z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Jan 2023 17:58:55 -0500
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C0032A146
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 14:39:08 -0800 (PST)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 8A80485551;
        Tue, 17 Jan 2023 23:39:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1673995143;
        bh=IxNHsubQw/r0nr6pAnHQtTl93OSBHz+BSmRXMbC1qDM=;
        h=From:To:Cc:Subject:Date:From;
        b=qG1vCoMc6Rp+nRMRfOj3IH0von1GnTE3vgEVPvvPcXDYftB7CjKr0/Jg2SYZkIN3n
         y786di79WmOWirkTMgGeWDfOXo0d3OSzDjopBmQGA0c8cwSl4/VJtp0B1KBqqtKGuJ
         AoIxdPR2s3S6lhNPvWKdrkHt5BroXts8Sh4w0GwWSKlcCOKflqTheqzmhBMxaOAA0T
         p2l6cAZNm2WCWQX3HQn1+H89Xa1kRq2sZaIcG0S3CfsMOZIMv/6fT2h4CAt2fwTRV5
         Jcm0YYrlvt425rxjjLRbSAXwDcJ9HRpnC86ZNalpNA7RhcmQCstbiQOi/GuGo0fRb4
         RE1DKTspj7ExA==
From:   Marek Vasut <marex@denx.de>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Marek Vasut <marex@denx.de>,
        Christoph Niedermaier <cniedermaier@dh-electronics.com>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Peng Fan <peng.fan@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH] MAINTAINERS: Add entry for DHCOM i.MX8M Plus SoMs and boards
Date:   Tue, 17 Jan 2023 23:38:52 +0100
Message-Id: <20230117223852.130143-1-marex@denx.de>
X-Mailer: git-send-email 2.39.0
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

Add maintainers entry for DH electronics DHCOM i.MX8M Plus
based SoMs and boards.

Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Christoph Niedermaier <cniedermaier@dh-electronics.com>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Marek Vasut <marex@denx.de>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: Peng Fan <peng.fan@nxp.com>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: devicetree@vger.kernel.org
To: linux-arm-kernel@lists.infradead.org
---
 MAINTAINERS | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index d0a36e45aa4be..e9be585d507e9 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -5968,6 +5968,12 @@ S:	Maintained
 F:	arch/arm/boot/dts/imx6*-dhcom-*
 F:	arch/arm/boot/dts/imx6*-dhcor-*
 
+DH ELECTRONICS IMX8M PLUS DHCOM BOARD SUPPORT
+M:	Marek Vasut <marex@denx.de>
+L:	kernel@dh-electronics.com
+S:	Maintained
+F:	arch/arm64/boot/dts/freescale/imx8mp*-dhcom-*
+
 DH ELECTRONICS STM32MP1 DHCOM/DHCOR BOARD SUPPORT
 M:	Marek Vasut <marex@denx.de>
 L:	kernel@dh-electronics.com
-- 
2.39.0

