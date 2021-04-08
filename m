Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BC8D5358145
	for <lists+devicetree@lfdr.de>; Thu,  8 Apr 2021 13:02:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231167AbhDHLCp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Apr 2021 07:02:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34480 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229964AbhDHLCm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Apr 2021 07:02:42 -0400
Received: from ssl.serverraum.org (ssl.serverraum.org [IPv6:2a01:4f8:151:8464::1:2])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 77B8DC061760
        for <devicetree@vger.kernel.org>; Thu,  8 Apr 2021 04:02:29 -0700 (PDT)
Received: from mwalle01.fritz.box (unknown [IPv6:2a02:810c:c200:2e91:fa59:71ff:fe9b:b851])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-384) server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by ssl.serverraum.org (Postfix) with ESMTPSA id 3C95B22234;
        Thu,  8 Apr 2021 13:02:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc; s=mail2016061301;
        t=1617879746;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding;
        bh=SUxDw+DpTluQprPfBQeKr9XZNXZmnB1MAnzFLLh1p50=;
        b=bAwQLlvy9SWSTPcEJEN/ST4cpl7Rw8AO/jllyrRNyojdNgjnrs4maxj92n8Aui4az5Bkef
        gWw6kif0w+Nt/pvh0Bn8Hixe8uHoo+GX003CWEyqcW+f6S1XrfFGH6VJLBih58kTTV/sa/
        ll72odXz9HMYnKfMSYzKF6Jal/FdTi4=
From:   Michael Walle <michael@walle.cc>
To:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, Michael Walle <michael@walle.cc>
Subject: [PATCH 1/2] arm64: dts: ls1028a: fix memory node
Date:   Thu,  8 Apr 2021 13:02:18 +0200
Message-Id: <20210408110219.20149-1-michael@walle.cc>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam: Yes
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

While enabling EDAC support for the LS1028A it was discovered that the
memory node has a wrong endianness setting as well as a wrong interrupt
assignment. Fix both.

This was tested on a sl28 board. To force ECC errors, you can use the
error injection supported by the controller in hardware (with
CONFIG_EDAC_DEBUG enabled):

 # enable error injection
 $ echo 0x100 > /sys/devices/system/edac/mc/mc0/inject_ctrl
 # flip lowest bit of the data
 $ echo 0x1 > /sys/devices/system/edac/mc/mc0/inject_data_lo

Fixes: 8897f3255c9c ("arm64: dts: Add support for NXP LS1028A SoC")
Signed-off-by: Michael Walle <michael@walle.cc>
---
 arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
index 9506f0669ead..040a3e529bf1 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
@@ -197,8 +197,8 @@
 		ddr: memory-controller@1080000 {
 			compatible = "fsl,qoriq-memory-controller";
 			reg = <0x0 0x1080000 0x0 0x1000>;
-			interrupts = <GIC_SPI 144 IRQ_TYPE_LEVEL_HIGH>;
-			big-endian;
+			interrupts = <GIC_SPI 17 IRQ_TYPE_LEVEL_HIGH>;
+			little-endian;
 		};
 
 		dcfg: syscon@1e00000 {
-- 
2.20.1

