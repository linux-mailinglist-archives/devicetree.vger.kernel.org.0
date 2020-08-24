Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C89B92500AD
	for <lists+devicetree@lfdr.de>; Mon, 24 Aug 2020 17:15:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726943AbgHXPPl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Aug 2020 11:15:41 -0400
Received: from mailoutvs7.siol.net ([185.57.226.198]:33976 "EHLO mail.siol.net"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1725780AbgHXPNf (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 24 Aug 2020 11:13:35 -0400
X-Greylist: delayed 523 seconds by postgrey-1.27 at vger.kernel.org; Mon, 24 Aug 2020 11:13:35 EDT
Received: from localhost (localhost [127.0.0.1])
        by mail.siol.net (Postfix) with ESMTP id A36A452576B;
        Mon, 24 Aug 2020 17:04:52 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta10.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
        by localhost (psrvmta10.zcs-production.pri [127.0.0.1]) (amavisd-new, port 10032)
        with ESMTP id u8vV1oXnJ427; Mon, 24 Aug 2020 17:04:52 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
        by mail.siol.net (Postfix) with ESMTPS id 643B8525768;
        Mon, 24 Aug 2020 17:04:52 +0200 (CEST)
Received: from localhost.localdomain (89-212-178-211.dynamic.t-2.net [89.212.178.211])
        (Authenticated sender: 031275009)
        by mail.siol.net (Postfix) with ESMTPSA id 21B4E52576E;
        Mon, 24 Aug 2020 17:04:50 +0200 (CEST)
From:   Jernej Skrabec <jernej.skrabec@siol.net>
To:     mripard@kernel.org, wens@csie.org, robh+dt@kernel.org
Cc:     airlied@linux.ie, daniel@ffwll.ch, heiko@sntech.de,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-sunxi@googlegroups.com
Subject: [PATCH 2/2] ARM: dts: sun8i: r40: Add Mali node
Date:   Mon, 24 Aug 2020 17:04:34 +0200
Message-Id: <20200824150434.951693-3-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200824150434.951693-1-jernej.skrabec@siol.net>
References: <20200824150434.951693-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

R40 has Mali400 GP2 GPU. Add a node for it.

Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 arch/arm/boot/dts/sun8i-r40.dtsi | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/arch/arm/boot/dts/sun8i-r40.dtsi b/arch/arm/boot/dts/sun8i-r=
40.dtsi
index b782041e0e04..b82031b19893 100644
--- a/arch/arm/boot/dts/sun8i-r40.dtsi
+++ b/arch/arm/boot/dts/sun8i-r40.dtsi
@@ -743,6 +743,28 @@ i2c4: i2c@1c2c000 {
 			#size-cells =3D <0>;
 		};
=20
+		mali: gpu@1c40000 {
+			compatible =3D "allwinner,sun8i-r40-mali", "arm,mali-400";
+			reg =3D <0x01c40000 0x10000>;
+			interrupts =3D <GIC_SPI 69 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 70 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 71 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 72 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 74 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 75 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 73 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names =3D "gp",
+					  "gpmmu",
+					  "pp0",
+					  "ppmmu0",
+					  "pp1",
+					  "ppmmu1",
+					  "pmu";
+			clocks =3D <&ccu CLK_BUS_GPU>, <&ccu CLK_GPU>;
+			clock-names =3D "bus", "core";
+			resets =3D <&ccu RST_BUS_GPU>;
+		};
+
 		gmac: ethernet@1c50000 {
 			compatible =3D "allwinner,sun8i-r40-gmac";
 			syscon =3D <&ccu>;
--=20
2.28.0

