Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 43A6863C2EB
	for <lists+devicetree@lfdr.de>; Tue, 29 Nov 2022 15:44:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233216AbiK2Oo2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Nov 2022 09:44:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51038 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234912AbiK2Oo1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Nov 2022 09:44:27 -0500
Received: from smtp-out-01.comm2000.it (smtp-out-01.comm2000.it [212.97.32.64])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F31672717F
        for <devicetree@vger.kernel.org>; Tue, 29 Nov 2022 06:44:25 -0800 (PST)
Received: from francesco-nb.pivistrello.it (93-49-2-63.ip317.fastwebnet.it [93.49.2.63])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: francesco@dolcini.it)
        by smtp-out-01.comm2000.it (Postfix) with ESMTPSA id BCB1B84279C;
        Tue, 29 Nov 2022 15:44:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailserver.it;
        s=mailsrv; t=1669733064;
        bh=X8QMB8+T2f6bfH8w0rBm33AiFfYFPr7OAEI44WK2Xcc=;
        h=From:To:Cc:Subject:Date;
        b=vE1QW3S0Mkuq7bVITpxRz6E/csarQLuLY6/SXfdEVZPtN6dqDVqFoxS+ci7OOL3hL
         JKE7KmuFcgh1nXajCj4kJds5ofoQNsCIo4N15RSSkahoTX/uGi18aChFPaJw7WdTyY
         60H4LOVS14FaaEDn+Chk0Sf9w8tcd1Y8QMKbrrnhFHB6cRlrTl6tXYAEg/dXqLKtqU
         2arR6MqTTKgs+B1K/fhBQIr3K3UwLrTeFUsKFmkHkVP+ngAcaDA/UitG/OL2lMIfaQ
         lVgiqUSHzm2AYEFpQ3iHyERokY8CODBP+ImRt1N+icaU2nEk3GsMqqPGlwIEt6BUNK
         NGufl4xBZ70aw==
From:   Francesco Dolcini <francesco@dolcini.it>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Francesco Dolcini <francesco.dolcini@toradex.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, laurent.pinchart@ideasonboard.com,
        Stefan Eichenberger <stefan.eichenberger@toradex.com>
Subject: [PATCH v2 0/2] arm64: dts: imx8mp-verdin: Add DSI Bridges
Date:   Tue, 29 Nov 2022 15:44:10 +0100
Message-Id: <20221129144412.37497-1-francesco@dolcini.it>
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

From: Francesco Dolcini <francesco.dolcini@toradex.com>

This series add DSI to HDMI and DSI to LVDS functionality to the Verdin iMX8M
Plus device tree.

Previous v1 [1] triggered some discussion with Laurent since these bridges are not
strictly part of the SoM, but are part of the whole board that is made out of
SoM + Carrier Board (e.g. Yavia [2]) or SoM + Carrier Board + Adapter
(e.g. Dahlia [3]). For this reason they are disabled by default.

I have not addressed his concerns here apart for the explanation I gave him in
the previous discussion thread, I do still believe that this could be merged as
it is.

This series is based on next-20221129.

Francesco

[1] https://lore.kernel.org/all/20220905211703.GA6180@francesco-nb.int.toradex.com/
[2] https://www.toradex.com/products/carrier-board/yavia
[3] https://www.toradex.com/products/carrier-board/dahlia-carrier-board-kit

v2: 
 - Added HDMI hot plug detect GPIO

Max Krummenacher (2):
  arm64: dts: imx8mp-verdin: add dsi to hdmi functionality
  arm64: dts: imx8mp-verdin: add dsi to lvds functionality

 .../boot/dts/freescale/imx8mp-verdin.dtsi     | 21 ++++++++++++++++++-
 1 file changed, 20 insertions(+), 1 deletion(-)

-- 
2.25.1

