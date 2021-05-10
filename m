Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E5AFD377C99
	for <lists+devicetree@lfdr.de>; Mon, 10 May 2021 08:54:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230074AbhEJGz7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 May 2021 02:55:59 -0400
Received: from antares.kleine-koenig.org ([94.130.110.236]:56606 "EHLO
        antares.kleine-koenig.org" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229608AbhEJGz6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 May 2021 02:55:58 -0400
Received: by antares.kleine-koenig.org (Postfix, from userid 1000)
        id 25A48B91AE8; Mon, 10 May 2021 08:54:53 +0200 (CEST)
From:   =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To:     Heiko Stuebner <heiko@sntech.de>
Cc:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org,
        Aditya Prayoga <aditya@kobol.io>
Subject: [PATCH] arm64: dts: rockchip: Increase maximal SDIO voltage to 3.3 V
Date:   Mon, 10 May 2021 08:54:49 +0200
Message-Id: <20210510065449.942173-1-uwe@kleine-koenig.org>
X-Mailer: git-send-email 2.30.2
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
index 19485b552bc4..39a1d276bd05 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
@@ -256,11 +256,11 @@ vcc_sdio_s0: LDO_REG4 {
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
 
-- 
2.30.2

