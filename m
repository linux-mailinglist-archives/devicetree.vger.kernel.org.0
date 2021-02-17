Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3AD7A31D819
	for <lists+devicetree@lfdr.de>; Wed, 17 Feb 2021 12:24:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230174AbhBQLVa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Feb 2021 06:21:30 -0500
Received: from comms.puri.sm ([159.203.221.185]:34042 "EHLO comms.puri.sm"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S230328AbhBQLVU (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 17 Feb 2021 06:21:20 -0500
Received: from localhost (localhost [127.0.0.1])
        by comms.puri.sm (Postfix) with ESMTP id D74AFE122D;
        Wed, 17 Feb 2021 03:20:15 -0800 (PST)
Received: from comms.puri.sm ([127.0.0.1])
        by localhost (comms.puri.sm [127.0.0.1]) (amavisd-new, port 10024)
        with ESMTP id tYOGQw9O7Vio; Wed, 17 Feb 2021 03:20:14 -0800 (PST)
From:   Martin Kepplinger <martin.kepplinger@puri.sm>
To:     robh@kernel.org, shawnguo@kernel.org, festevam@gmail.com
Cc:     kernel@pengutronix.de, linux-imx@nxp.com, krzk@kernel.org,
        kernel@puri.sm, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        Martin Kepplinger <martin.kepplinger@puri.sm>
Subject: [PATCH v2 5/5] arm64: dts: imx8mq-librem5-r2: set nearlevel to 120
Date:   Wed, 17 Feb 2021 12:19:44 +0100
Message-Id: <20210217111944.1416-6-martin.kepplinger@puri.sm>
In-Reply-To: <20210217111944.1416-1-martin.kepplinger@puri.sm>
References: <20210217111944.1416-1-martin.kepplinger@puri.sm>
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Birch I can never reach 220 and hence the display would never
turn off. Tests suggest 120 to be a good threshold value for all Birch
devices.

Signed-off-by: Martin Kepplinger <martin.kepplinger@puri.sm>
---
 arch/arm64/boot/dts/freescale/imx8mq-librem5-r2.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq-librem5-r2.dts b/arch/arm64/boot/dts/freescale/imx8mq-librem5-r2.dts
index d77fc5df3f06..73bd431cbd6a 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-librem5-r2.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mq-librem5-r2.dts
@@ -25,5 +25,5 @@
 };
 
 &proximity {
-	proximity-near-level = <220>;
+	proximity-near-level = <120>;
 };
-- 
2.20.1

