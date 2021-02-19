Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A674031F706
	for <lists+devicetree@lfdr.de>; Fri, 19 Feb 2021 11:06:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230117AbhBSKFw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 Feb 2021 05:05:52 -0500
Received: from comms.puri.sm ([159.203.221.185]:38300 "EHLO comms.puri.sm"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229678AbhBSKFv (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 19 Feb 2021 05:05:51 -0500
Received: from localhost (localhost [127.0.0.1])
        by comms.puri.sm (Postfix) with ESMTP id 4F708E1FE0;
        Fri, 19 Feb 2021 02:05:11 -0800 (PST)
Received: from comms.puri.sm ([127.0.0.1])
        by localhost (comms.puri.sm [127.0.0.1]) (amavisd-new, port 10024)
        with ESMTP id DRmkpbzu1iKS; Fri, 19 Feb 2021 02:05:10 -0800 (PST)
From:   Martin Kepplinger <martin.kepplinger@puri.sm>
To:     robh@kernel.org, shawnguo@kernel.org, festevam@gmail.com
Cc:     kernel@pengutronix.de, linux-imx@nxp.com, krzk@kernel.org,
        kernel@puri.sm, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>,
        Martin Kepplinger <martin.kepplinger@puri.sm>
Subject: [PATCH v3 1/5] arm64: dts: imx8mq-librem5-devkit: Drop buck3 startup-ramp-delay
Date:   Fri, 19 Feb 2021 11:04:35 +0100
Message-Id: <20210219100439.9428-2-martin.kepplinger@puri.sm>
In-Reply-To: <20210219100439.9428-1-martin.kepplinger@puri.sm>
References: <20210219100439.9428-1-martin.kepplinger@puri.sm>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Guido Günther <agx@sigxcpu.org>

The PMIC driver now sets appropriate default delays.

Signed-off-by: Guido Günther <agx@sigxcpu.org>
Signed-off-by: Martin Kepplinger <martin.kepplinger@puri.sm>
---
 arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
index dd217a0760e9..88508890063f 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
@@ -315,7 +315,6 @@
 				regulator-min-microvolt = <700000>;
 				regulator-max-microvolt = <1300000>;
 				regulator-boot-on;
-				regulator-enable-ramp-delay = <200>;
 				rohm,dvs-run-voltage = <900000>;
 			};
 
-- 
2.20.1

