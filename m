Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 388132B30AB
	for <lists+devicetree@lfdr.de>; Sat, 14 Nov 2020 21:44:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726150AbgKNUm5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 14 Nov 2020 15:42:57 -0500
Received: from mail.kernel.org ([198.145.29.99]:34168 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726112AbgKNUm5 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 14 Nov 2020 15:42:57 -0500
Received: from dellmb.labs.office.nic.cz (nat-1.nic.cz [217.31.205.1])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 9EC8022245;
        Sat, 14 Nov 2020 20:42:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1605386576;
        bh=FnCuexM0kO0jnpgp1XCR5u8z571sh6thfUS4KZTEyeU=;
        h=From:To:Cc:Subject:Date:From;
        b=InSksdMEeGaqVa2jPwjAmlJC1VIvWDOVykP5D24BkxqmpnZb8WP0MsXViifXneOVV
         LTjKvqCs9V29Q2AakwftafmUKjCPtmJnxxQgKk0VBXdpA5mYOe8m7u6l8SKqZeIP6Y
         Rj5JHxuLuEZXhFYs7xpWUxvpxWucBK/2317X+XEY=
From:   =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>
To:     Gregory CLEMENT <gregory.clement@bootlin.com>
Cc:     arm@kernel.org, =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>,
        Andrew Lunn <andrew@lunn.ch>, Rob Herring <robh+dt@kernel.org>,
        devicetree@vger.kernel.org
Subject: [PATCH mvebu-dt64] arm64: dts: armada-3720-turris-mox: update ethernet-phy handle name
Date:   Sat, 14 Nov 2020 21:42:53 +0100
Message-Id: <20201114204253.8573-1-kabel@kernel.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Use property name `phy-handle` instead of the deprecated `phy` to
connect eth2 to the PHY.

Signed-off-by: Marek Behún <kabel@kernel.org>
Fixes: 7109d817db2e ("arm64: dts: marvell: add DTS for Turris Mox")
Cc: Gregory CLEMENT <gregory.clement@bootlin.com>
Cc: Andrew Lunn <andrew@lunn.ch>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: devicetree@vger.kernel.org
---
 arch/arm64/boot/dts/marvell/armada-3720-turris-mox.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/marvell/armada-3720-turris-mox.dts b/arch/arm64/boot/dts/marvell/armada-3720-turris-mox.dts
index f3a678e0fd99..bf76ebe46379 100644
--- a/arch/arm64/boot/dts/marvell/armada-3720-turris-mox.dts
+++ b/arch/arm64/boot/dts/marvell/armada-3720-turris-mox.dts
@@ -146,7 +146,7 @@ &eth0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&rgmii_pins>;
 	phy-mode = "rgmii-id";
-	phy = <&phy1>;
+	phy-handle = <&phy1>;
 	status = "okay";
 };
 
-- 
2.26.2

