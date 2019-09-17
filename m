Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id DBE5DB4962
	for <lists+devicetree@lfdr.de>; Tue, 17 Sep 2019 10:28:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729490AbfIQI1K (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Sep 2019 04:27:10 -0400
Received: from gloria.sntech.de ([185.11.138.130]:46788 "EHLO gloria.sntech.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727309AbfIQI1J (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 17 Sep 2019 04:27:09 -0400
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102] helo=phil.fritz.box)
        by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
        (Exim 4.89)
        (envelope-from <heiko@sntech.de>)
        id 1iA8pH-0005ZY-NC; Tue, 17 Sep 2019 10:27:07 +0200
From:   Heiko Stuebner <heiko@sntech.de>
To:     linux-arm-kernel@lists.infradead.org
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        robh+dt@kernel.org, mark.rutland@arm.com,
        linux-rockchip@lists.infradead.org,
        christoph.muellner@theobroma-systems.com,
        Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH 03/13] arm64: dts: rockchip: remove px30 emmc_pwren pinctrl
Date:   Tue, 17 Sep 2019 10:26:49 +0200
Message-Id: <20190917082659.25549-3-heiko@sntech.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190917082659.25549-1-heiko@sntech.de>
References: <20190917082659.25549-1-heiko@sntech.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

That gpio1-b0 can only be flash_cs apart from a regular gpio,
so there is no power-related pinmux for the emmc for this pin.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index 06328f1b05e8..a178d6e2c279 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -1648,11 +1648,6 @@
 					<1 RK_PB2 2 &pcfg_pull_up_8ma>;
 			};
 
-			emmc_pwren: emmc-pwren {
-				rockchip,pins =
-					<1 RK_PB0 2 &pcfg_pull_none>;
-			};
-
 			emmc_rstnout: emmc-rstnout {
 				rockchip,pins =
 					<1 RK_PB3 2 &pcfg_pull_none>;
-- 
2.20.1

