Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DD4A6466C04
	for <lists+devicetree@lfdr.de>; Thu,  2 Dec 2021 23:19:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237010AbhLBWW7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Dec 2021 17:22:59 -0500
Received: from perceval.ideasonboard.com ([213.167.242.64]:39440 "EHLO
        perceval.ideasonboard.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229836AbhLBWW6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Dec 2021 17:22:58 -0500
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 09D2AD8B;
        Thu,  2 Dec 2021 23:19:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1638483574;
        bh=6n1BR5zVebyaW/fEs1YkIJj09GEmgdCoh3REBCiC3Aw=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=e/R8ReV+i0W6dcrktmALU6KF4sgrgO+C4WUOI7SAjKBs45NS0AwssYMA47fgOhGQg
         pDjLAz0L3HjYY2Hcg/Xu3dslGCJpe749pILN/rRW9FffkksmH+5VBZ2fhwJWi8F3OX
         VyKhyG/bNGoQDQSnKW5yIm7bOrrrjGgcXdwcvQcs=
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     devicetree@vger.kernel.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        NXP Linux Team <linux-imx@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH 1/3] ARM: dts: imx7s-warp: Drop undefined property in mipi_csi node
Date:   Fri,  3 Dec 2021 00:19:01 +0200
Message-Id: <20211202221903.21882-2-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211202221903.21882-1-laurent.pinchart@ideasonboard.com>
References: <20211202221903.21882-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The fsl,csis-hs-settle property isn't defined by the
nxp,imx7-mipi-csi2.yaml binding, and isn't parsed by the corresponding
driver. Drop it.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 arch/arm/boot/dts/imx7s-warp.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx7s-warp.dts b/arch/arm/boot/dts/imx7s-warp.dts
index 569bbd84e371..614d252f029f 100644
--- a/arch/arm/boot/dts/imx7s-warp.dts
+++ b/arch/arm/boot/dts/imx7s-warp.dts
@@ -248,7 +248,6 @@ mpl3115@60 {
 
 &mipi_csi {
 	clock-frequency = <166000000>;
-	fsl,csis-hs-settle = <3>;
 	status = "okay";
 
 	port@0 {
-- 
Regards,

Laurent Pinchart

