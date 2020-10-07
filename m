Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 14FE1285646
	for <lists+devicetree@lfdr.de>; Wed,  7 Oct 2020 03:25:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726597AbgJGBZa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Oct 2020 21:25:30 -0400
Received: from perceval.ideasonboard.com ([213.167.242.64]:39290 "EHLO
        perceval.ideasonboard.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726755AbgJGBZa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Oct 2020 21:25:30 -0400
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id D2CE442BE;
        Wed,  7 Oct 2020 03:25:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1602033928;
        bh=1X0YaMh0lhUK/qM8rRB3pmVXlzl0Sam5u+7TAn0PCps=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=rWVdS4GeyrCGpfK2iBSw1sk/yP3lZ9WXA6wiY0wXUmAymjU7ETsNBDWl+7X/eq48b
         goeNFsGuG79wE4hD45GmXuqpiWnoPmWdi3gvSMlCo/hoNjFNHEq5b2bS3SXTYBrqdW
         RktJNVoWmdFGMn41VUFcbR8YQHD0f+9onnPeJeDM=
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     dri-devel@lists.freedesktop.org
Cc:     Stefan Agner <stefan@agner.ch>, Marek Vasut <marex@denx.de>,
        devicetree@vger.kernel.org,
        =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>,
        Rob Herring <robh+dt@kernel.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 5/7] arm64: dts: imx8mq: Fix LCDIF compatible strings
Date:   Wed,  7 Oct 2020 04:24:36 +0300
Message-Id: <20201007012438.27970-6-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201007012438.27970-1-laurent.pinchart@ideasonboard.com>
References: <20201007012438.27970-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The LCDIF in the i.MX8 SoCs has additional features compared to the
i.MX28. Replace the fsl,imx28-lcdif fallback compatible string with
fsl,imx6sx-lcdif to reflect that.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Acked-by: Sam Ravnborg <sam@ravnborg.org>
---
 arch/arm64/boot/dts/freescale/imx8mq.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
index 561fa792fe5a..5c7f4c0de7ca 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
@@ -509,7 +509,7 @@ sdma2: sdma@302c0000 {
 			};
 
 			lcdif: lcd-controller@30320000 {
-				compatible = "fsl,imx8mq-lcdif", "fsl,imx28-lcdif";
+				compatible = "fsl,imx8mq-lcdif", "fsl,imx6sx-lcdif";
 				reg = <0x30320000 0x10000>;
 				interrupts = <GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clk IMX8MQ_CLK_LCDIF_PIXEL>;
-- 
Regards,

Laurent Pinchart

