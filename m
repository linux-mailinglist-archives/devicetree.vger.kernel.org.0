Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AFA31301EE1
	for <lists+devicetree@lfdr.de>; Sun, 24 Jan 2021 22:13:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725986AbhAXVNJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 24 Jan 2021 16:13:09 -0500
Received: from antares.kleine-koenig.org ([94.130.110.236]:46192 "EHLO
        antares.kleine-koenig.org" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725968AbhAXVNI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 24 Jan 2021 16:13:08 -0500
X-Greylist: delayed 536 seconds by postgrey-1.27 at vger.kernel.org; Sun, 24 Jan 2021 16:13:08 EST
Received: by antares.kleine-koenig.org (Postfix, from userid 1000)
        id CDBA7ADC8EE; Sun, 24 Jan 2021 22:03:30 +0100 (CET)
From:   =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To:     Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc:     devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        Aditya Prayoga <aditya@kobol.io>
Subject: [PATCH 2/2] arm64: dts: rockchip: Rely on SoC external pull up on pmic-int-l
Date:   Sun, 24 Jan 2021 22:03:28 +0100
Message-Id: <20210124210328.611707-2-uwe@kleine-koenig.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210124210328.611707-1-uwe@kleine-koenig.org>
References: <20210124210328.611707-1-uwe@kleine-koenig.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

According to the schematic there is an external pull up, so there is no
need to enable the internal one additionally. Using no pull up matches
the vendor device tree.

Signed-off-by: Uwe Kleine-König <uwe@kleine-koenig.org>
---
 arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts b/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
index d6446c32b91e..1e880a0a3f69 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
@@ -331,7 +331,7 @@ sys_red_led_on: sys-red-led-on {
 
 	pmic {
 		pmic_int_l: pmic-int-l {
-			rockchip,pins = <0 RK_PB2 RK_FUNC_GPIO &pcfg_pull_up>;
+			rockchip,pins = <0 RK_PB2 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
 
-- 
2.29.2

