Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3772D63F0F2
	for <lists+devicetree@lfdr.de>; Thu,  1 Dec 2022 13:56:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230338AbiLAM4O (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Dec 2022 07:56:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37512 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229843AbiLAM4O (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Dec 2022 07:56:14 -0500
Received: from smtp-out-07.comm2000.it (smtp-out-07.comm2000.it [212.97.32.77])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 040F057B7C
        for <devicetree@vger.kernel.org>; Thu,  1 Dec 2022 04:56:12 -0800 (PST)
Received: from francesco-nb.pivistrello.it (93-49-2-63.ip317.fastwebnet.it [93.49.2.63])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: francesco@dolcini.it)
        by smtp-out-07.comm2000.it (Postfix) with ESMTPSA id 5BCC53C7F73;
        Thu,  1 Dec 2022 13:55:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailserver.it;
        s=mailsrv; t=1669899371;
        bh=sPFdQlxZpzeQAbWmUGDFdr4A3mzU0NxYxflx0xvA/q8=;
        h=From:To:Cc:Subject:Date;
        b=SICDXH8vDJ7bxgIjuw/AVr2VUlDew49H1kGCX+gU1Ky4alhSg/GeQOh2Ov9fCumO6
         gjCg9hn/38kaz+07unS/VkCBkNVXSbbLtikeL2EvsGP4W5K2QEDcKompwZwhQO7V1o
         qTu9TkLFgFOpOhVqByKofgnm1Opn94irXoJ9sT4+rjzc7h5G9o9tLlEKe6rfpJMsfN
         tg7kfV9qvMRuUB90goKIR4vEKro60gAZRrgFOWD4AzFj62TMWojaPFF5MDNDrKlAFR
         ppVyKME6Y+ORJW0ncZTE3uZRu/pyeKAGzXF+9sUApDzZ34Xv5QFaKpplJqbnsI4+2t
         2Wqsgg9slPMng==
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
Subject: [PATCH v1] arm64: dts: verdin-imx8mm: fix dahlia audio playback
Date:   Thu,  1 Dec 2022 13:55:48 +0100
Message-Id: <20221201125548.34793-1-francesco@dolcini.it>
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
clock to the wm8904 audio codec. Without this change with an audio
stream rate of 44.1 kHz the playback is completely distorted.

Fixes: 6a57f224f734 ("arm64: dts: freescale: add initial support for verdin imx8m mini")
Signed-off-by: Emanuele Ghidoli <emanuele.ghidoli@toradex.com>
Signed-off-by: Francesco Dolcini <francesco.dolcini@toradex.com>
---
 arch/arm64/boot/dts/freescale/imx8mm-verdin-dahlia.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-verdin-dahlia.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-verdin-dahlia.dtsi
index c2a5c2f7b204..7c3f5c54f040 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-verdin-dahlia.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm-verdin-dahlia.dtsi
@@ -9,6 +9,7 @@ sound_card: sound-card {
 		simple-audio-card,bitclock-master = <&dailink_master>;
 		simple-audio-card,format = "i2s";
 		simple-audio-card,frame-master = <&dailink_master>;
+		simple-audio-card,mclk-fs = <256>;
 		simple-audio-card,name = "imx8mm-wm8904";
 		simple-audio-card,routing =
 			"Headphone Jack", "HPOUTL",
-- 
2.25.1

