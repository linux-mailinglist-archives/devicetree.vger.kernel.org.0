Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D1639431F40
	for <lists+devicetree@lfdr.de>; Mon, 18 Oct 2021 16:16:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231971AbhJROSD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Oct 2021 10:18:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44234 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232934AbhJROR5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 Oct 2021 10:17:57 -0400
Received: from baptiste.telenet-ops.be (baptiste.telenet-ops.be [IPv6:2a02:1800:120:4::f00:13])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 66371C033E99
        for <devicetree@vger.kernel.org>; Mon, 18 Oct 2021 06:59:13 -0700 (PDT)
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed20:e87a:7c37:aec5:5884])
        by baptiste.telenet-ops.be with bizsmtp
        id 7RzB2600R22VXnz01RzBx2; Mon, 18 Oct 2021 15:59:11 +0200
Received: from rox.of.borg ([192.168.97.57])
        by ramsan.of.borg with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.93)
        (envelope-from <geert@linux-m68k.org>)
        id 1mcTAV-005uyf-50; Mon, 18 Oct 2021 15:59:11 +0200
Received: from geert by rox.of.borg with local (Exim 4.93)
        (envelope-from <geert@linux-m68k.org>)
        id 1mcTAU-00Ddim-Iu; Mon, 18 Oct 2021 15:59:10 +0200
From:   Geert Uytterhoeven <geert+renesas@glider.be>
To:     Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Adam Ford <aford173@gmail.com>,
        Shawn Guo <shawnguo@kernel.org>, patches@opensource.cirrus.com
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH 1/2] arm64: dts: imx: imx8mn-beacon: Drop undocumented clock-names reference
Date:   Mon, 18 Oct 2021 15:59:02 +0200
Message-Id: <16af1bd2847da8b2a265e2a4389942ae11dea7c5.1634565154.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1634565154.git.geert+renesas@glider.be>
References: <cover.1634565154.git.geert+renesas@glider.be>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The wlf,wm8962 Device Tree bindings do not specify a clock-names
property.  Drop it.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
See also commit 190621e0f6094001 ("arm64: dts: imx8mm-beacon: Drop
unused clock-names reference").
---
 arch/arm64/boot/dts/freescale/imx8mn-beacon-baseboard.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mn-beacon-baseboard.dtsi b/arch/arm64/boot/dts/freescale/imx8mn-beacon-baseboard.dtsi
index 376ca8ff721331b8..0f40b43ac091c0f9 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn-beacon-baseboard.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn-beacon-baseboard.dtsi
@@ -126,7 +126,6 @@ wm8962: audio-codec@1a {
 		compatible = "wlf,wm8962";
 		reg = <0x1a>;
 		clocks = <&clk IMX8MN_CLK_SAI3_ROOT>;
-		clock-names = "xclk";
 		DCVDD-supply = <&reg_audio>;
 		DBVDD-supply = <&reg_audio>;
 		AVDD-supply = <&reg_audio>;
-- 
2.25.1

