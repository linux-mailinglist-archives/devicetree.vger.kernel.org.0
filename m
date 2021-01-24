Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 279D5301EE2
	for <lists+devicetree@lfdr.de>; Sun, 24 Jan 2021 22:13:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725968AbhAXVNJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 24 Jan 2021 16:13:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48950 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725969AbhAXVNJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 24 Jan 2021 16:13:09 -0500
X-Greylist: delayed 535 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sun, 24 Jan 2021 13:12:28 PST
Received: from antares.kleine-koenig.org (antares.kleine-koenig.org [IPv6:2a01:4f8:c0c:3a97::2])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C362C061573
        for <devicetree@vger.kernel.org>; Sun, 24 Jan 2021 13:12:28 -0800 (PST)
Received: by antares.kleine-koenig.org (Postfix, from userid 1000)
        id A932BADC8EC; Sun, 24 Jan 2021 22:03:30 +0100 (CET)
From:   =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To:     Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc:     devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        Aditya Prayoga <aditya@kobol.io>
Subject: [PATCH 1/2] arm64: dts: rockchip: Increase maximal SDIO voltage to 3.3 V
Date:   Sun, 24 Jan 2021 22:03:27 +0100
Message-Id: <20210124210328.611707-1-uwe@kleine-koenig.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

While comparing the vendor dts with the one added in v5.11-rc1 I noticed
that the vendor dts specified 3.3 V which matches the SDIO specification.

So fix the sdio regulator to provide (up to) 3.3 V.

Signed-off-by: Uwe Kleine-König <uwe@kleine-koenig.org>
---
 arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts b/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
index 2a561be724b2..d6446c32b91e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
@@ -251,11 +251,11 @@ vcc_sdio_s0: LDO_REG4 {
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <1800000>;
-				regulator-max-microvolt = <3000000>;
+				regulator-max-microvolt = <3300000>;
 
 				regulator-state-mem {
 					regulator-on-in-suspend;
-					regulator-suspend-microvolt = <3000000>;
+					regulator-suspend-microvolt = <3300000>;
 				};
 			};
 

base-commit: 19c329f6808995b142b3966301f217c831e7cf31
-- 
2.29.2

