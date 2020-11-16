Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D38DB2B43C8
	for <lists+devicetree@lfdr.de>; Mon, 16 Nov 2020 13:34:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728568AbgKPMdK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Nov 2020 07:33:10 -0500
Received: from mail.kernel.org ([198.145.29.99]:47696 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728329AbgKPMdJ (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 16 Nov 2020 07:33:09 -0500
Received: from dellmb.labs.office.nic.cz (nat-1.nic.cz [217.31.205.1])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id CA886206D8;
        Mon, 16 Nov 2020 12:33:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1605529989;
        bh=OlEpSU0xRjHHjHGXre7tgRd49ZT8S26aVDrDaUiwycU=;
        h=From:To:Cc:Subject:Date:From;
        b=1MPsimIeyuwVdcDtfrBQh4uXXSjqbN/p9PI3lDPrcTI9UL7mGD1iEewAxi3UqJ/kl
         bL9WQ20u0xemtnRO6PetYnQrWdc4eDPRiaC37tJ4sKQnsIX1RIUeT9zD2uCwz4yP5Y
         KCdPhwMCq/V2CeIqazzN45VjaloOOfJMT12zA7Ps=
From:   =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>
To:     Gregory CLEMENT <gregory.clement@bootlin.com>
Cc:     arm@kernel.org, =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>,
        Andrew Lunn <andrew@lunn.ch>, Rob Herring <robh+dt@kernel.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH mvebu-dt64] arm64: dts: armada-3720-turris-mox: add 3W power capability to SFP cage
Date:   Mon, 16 Nov 2020 13:33:03 +0100
Message-Id: <20201116123303.7234-1-kabel@kernel.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add maximum-power-milliwatt = 3000 to SFP node of Turris MOX.

Signed-off-by: Marek Behún <kabel@kernel.org>
Fixes: 7109d817db2e ("arm64: dts: marvell: add DTS for Turris Mox")
Cc: Gregory CLEMENT <gregory.clement@bootlin.com>
Cc: Andrew Lunn <andrew@lunn.ch>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
---
 arch/arm64/boot/dts/marvell/armada-3720-turris-mox.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/marvell/armada-3720-turris-mox.dts b/arch/arm64/boot/dts/marvell/armada-3720-turris-mox.dts
index f3a678e0fd99..d032e290675f 100644
--- a/arch/arm64/boot/dts/marvell/armada-3720-turris-mox.dts
+++ b/arch/arm64/boot/dts/marvell/armada-3720-turris-mox.dts
@@ -102,6 +102,7 @@ sfp: sfp {
 		mod-def0-gpio = <&moxtet_sfp 2 GPIO_ACTIVE_LOW>;
 		tx-disable-gpio = <&moxtet_sfp 4 GPIO_ACTIVE_HIGH>;
 		rate-select0-gpio = <&moxtet_sfp 5 GPIO_ACTIVE_HIGH>;
+		maximum-power-milliwatt = <3000>;
 
 		/* enabled by U-Boot if SFP module is present */
 		status = "disabled";
-- 
2.26.2

