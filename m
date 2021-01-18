Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E7F062F9D73
	for <lists+devicetree@lfdr.de>; Mon, 18 Jan 2021 12:03:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389353AbhARLDB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Jan 2021 06:03:01 -0500
Received: from comms.puri.sm ([159.203.221.185]:59684 "EHLO comms.puri.sm"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S2389554AbhARK4L (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 18 Jan 2021 05:56:11 -0500
Received: from localhost (localhost [127.0.0.1])
        by comms.puri.sm (Postfix) with ESMTP id E5787DF6EA;
        Mon, 18 Jan 2021 02:55:00 -0800 (PST)
Received: from comms.puri.sm ([127.0.0.1])
        by localhost (comms.puri.sm [127.0.0.1]) (amavisd-new, port 10024)
        with ESMTP id pBhZFJ2ZQqPO; Mon, 18 Jan 2021 02:55:00 -0800 (PST)
From:   Martin Kepplinger <martin.kepplinger@puri.sm>
To:     robh@kernel.org, shawnguo@kernel.org, festevam@gmail.com
Cc:     kernel@pengutronix.de, linux-imx@nxp.com, krzk@kernel.org,
        kernel@puri.sm, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        catalin.marinas@arm.com, will@kernel.org,
        =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>,
        Martin Kepplinger <martin.kepplinger@puri.sm>
Subject: [PATCH v2 3/9] arm64: dts: imx8mq-librem5: Don't mark buck3 as always on
Date:   Mon, 18 Jan 2021 11:54:19 +0100
Message-Id: <20210118105425.425-4-martin.kepplinger@puri.sm>
In-Reply-To: <20210118105425.425-1-martin.kepplinger@puri.sm>
References: <20210118105425.425-1-martin.kepplinger@puri.sm>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Guido Günther <agx@sigxcpu.org>

With the pmic driver fixed we can now shut off the regulator in the gpc.

Signed-off-by: Guido Günther <agx@sigxcpu.org>
Signed-off-by: Martin Kepplinger <martin.kepplinger@puri.sm>
---
 arch/arm64/boot/dts/freescale/imx8mq-librem5.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq-librem5.dtsi b/arch/arm64/boot/dts/freescale/imx8mq-librem5.dtsi
index 9928e941ee21..95d710831f28 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-librem5.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq-librem5.dtsi
@@ -679,7 +679,6 @@
 				regulator-min-microvolt = <700000>;
 				regulator-max-microvolt = <1300000>;
 				rohm,dvs-run-voltage = <900000>;
-				regulator-always-on;
 			};
 
 			buck4_reg: BUCK4 {
-- 
2.20.1

