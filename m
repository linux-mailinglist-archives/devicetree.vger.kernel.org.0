Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 162D7B6D4C
	for <lists+devicetree@lfdr.de>; Wed, 18 Sep 2019 22:11:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2390960AbfIRUL2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Sep 2019 16:11:28 -0400
Received: from viti.kaiser.cx ([85.214.81.225]:42250 "EHLO viti.kaiser.cx"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S2390933AbfIRUL2 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 18 Sep 2019 16:11:28 -0400
X-Greylist: delayed 1909 seconds by postgrey-1.27 at vger.kernel.org; Wed, 18 Sep 2019 16:11:27 EDT
Received: from dslb-084-059-234-127.084.059.pools.vodafone-ip.de ([84.59.234.127] helo=martin-debian-1.paytec.ch)
        by viti.kaiser.cx with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
        (Exim 4.89)
        (envelope-from <martin@kaiser.cx>)
        id 1iAfnW-0001vE-I4; Wed, 18 Sep 2019 21:39:30 +0200
From:   Martin Kaiser <martin@kaiser.cx>
To:     Shawn Guo <shawnguo@kernel.org>,
        Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
        Rob Herring <robh+dt@kernel.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Martin Kaiser <martin@kaiser.cx>
Subject: [PATCH] dt-bindings: display: imx: fix native-mode setting
Date:   Wed, 18 Sep 2019 21:38:53 +0200
Message-Id: <20190918193853.25689-1-martin@kaiser.cx>
X-Mailer: git-send-email 2.11.0
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

According to
Documentation/devicetree/bindings/display/panel/display-timing.txt,
native-mode is a property of the display-timings node.

If it's located outside of display-timings, the native-mode setting is
ignored and the first display timing is used.

We've already fixed the board definitions which got this wrong. Fix the
example in the imx framebuffer bindings as well.

Signed-off-by: Martin Kaiser <martin@kaiser.cx>
---
 Documentation/devicetree/bindings/display/imx/fsl,imx-fb.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/imx/fsl,imx-fb.txt b/Documentation/devicetree/bindings/display/imx/fsl,imx-fb.txt
index e5a8b363d829..f4df9e83bcd2 100644
--- a/Documentation/devicetree/bindings/display/imx/fsl,imx-fb.txt
+++ b/Documentation/devicetree/bindings/display/imx/fsl,imx-fb.txt
@@ -38,10 +38,10 @@ Example:
 
 	display0: display0 {
 		model = "Primeview-PD050VL1";
-		native-mode = <&timing_disp0>;
 		bits-per-pixel = <16>;
 		fsl,pcr = <0xf0c88080>;	/* non-standard but required */
 		display-timings {
+			native-mode = <&timing_disp0>;
 			timing_disp0: 640x480 {
 				hactive = <640>;
 				vactive = <480>;
-- 
2.11.0

