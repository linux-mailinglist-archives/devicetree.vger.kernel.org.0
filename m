Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8E5E76457D8
	for <lists+devicetree@lfdr.de>; Wed,  7 Dec 2022 11:29:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229575AbiLGK30 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Dec 2022 05:29:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55042 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229564AbiLGK3A (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Dec 2022 05:29:00 -0500
Received: from smtp-out-01.comm2000.it (smtp-out-01.comm2000.it [212.97.32.64])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EA2DB4B755
        for <devicetree@vger.kernel.org>; Wed,  7 Dec 2022 02:27:57 -0800 (PST)
Received: from francesco-nb.toradex.int (31-10-206-125.static.upc.ch [31.10.206.125])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: francesco@dolcini.it)
        by smtp-out-01.comm2000.it (Postfix) with ESMTPSA id 4B84F844A88;
        Wed,  7 Dec 2022 11:27:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailserver.it;
        s=mailsrv; t=1670408876;
        bh=6nY4UGDtFWzpJk/6PJlbB14/CONbBYG3h7N8pHJt1Ns=;
        h=From:To:Cc:Subject:Date;
        b=vftRN8+Fd1tmObLurAmkG2gpNJ6LzEYAIOKtRoho6C1YGR7tMA/JXnKUWghC8jxKf
         ZBjc6lR+tH+ZT13UwY2ijk6AxYX/4+XXLZmQBWOZotRdxR5NCbuEsEsbSApuE1mjI1
         96ntVelOsgZI4sa4yf99Nfyfsi2brndzlSJZiVCYc9dpevicSRkXvJ5TTEtI82Yw0+
         FcQfyOUIrL8hg8S+LsLDvzUKZpaapUkGaJ9VA4zN6E0LlhLkKi8/lCAwZeDny5WBH7
         kKxFblv11gM6jNd1aTdUZWJ6dNKHNtKsZydWsqsdKX20IlL6S/eK+lXTFPjDOeWrft
         8hY416BQ19rxA==
From:   Francesco Dolcini <francesco@dolcini.it>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Emanuele Ghidoli <emanuele.ghidoli@toradex.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org,
        Francesco Dolcini <francesco.dolcini@toradex.com>
Subject: [PATCH v1] arm64: dts: verdin-imx8mm: fix dev board audio playback
Date:   Wed,  7 Dec 2022 11:27:49 +0100
Message-Id: <20221207102749.180485-1-francesco@dolcini.it>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Emanuele Ghidoli <emanuele.ghidoli@toradex.com>

Set optional `simple-audio-card,mclk-fs` parameter to ensure a proper
clock to the nau8822 audio codec. Without this change with an audio
stream rate of 44.1 kHz the playback is faster.
Set the MCLK at the right frequency, codec can properly use it to
generate 44.1 kHz I2S-FS.

Fixes: 6a57f224f734 ("arm64: dts: freescale: add initial support for verdin imx8m mini")
Signed-off-by: Emanuele Ghidoli <emanuele.ghidoli@toradex.com>
Signed-off-by: Francesco Dolcini <francesco.dolcini@toradex.com>
---
 arch/arm64/boot/dts/freescale/imx8mm-verdin-dev.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-verdin-dev.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-verdin-dev.dtsi
index 73cc3fafa018..b2bcd2282170 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-verdin-dev.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm-verdin-dev.dtsi
@@ -11,6 +11,7 @@ sound_card: sound-card {
 		simple-audio-card,bitclock-master = <&dailink_master>;
 		simple-audio-card,format = "i2s";
 		simple-audio-card,frame-master = <&dailink_master>;
+		simple-audio-card,mclk-fs = <256>;
 		simple-audio-card,name = "imx8mm-nau8822";
 		simple-audio-card,routing =
 			"Headphones", "LHP",
-- 
2.25.1

