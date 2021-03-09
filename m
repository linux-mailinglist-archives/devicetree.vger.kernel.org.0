Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BD4B0332A37
	for <lists+devicetree@lfdr.de>; Tue,  9 Mar 2021 16:21:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231697AbhCIPUb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Mar 2021 10:20:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41470 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231946AbhCIPUK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Mar 2021 10:20:10 -0500
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk [IPv6:2001:4d48:ad52:32c8:5054:ff:fe00:142])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7AB6EC06174A
        for <devicetree@vger.kernel.org>; Tue,  9 Mar 2021 07:20:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
        Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:References:
        In-Reply-To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
        Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
        List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=u0qFe9+8Ck8t0iYnHgNpVV5A230WgCmOwerUrrs7O1k=; b=l2QzxSlAMTwKNCVZGsji3/R3+P
        DI/QGMPlDXDSnwz3EQBO0fL193CeTVM6jdksPK7jQPJ13KRNEkmANsOJk2YA9R+Tynd4w4a95xwxm
        GYaKkAbthL7cEh2aCTqBFzRUUshiY2DBHindC3OJ8aMPBpq+VCrRiRZWfsVzcsbQnQ2xuMxcMGVNo
        bOwqALMKvoNSu/0GH5zA3agmu/52RNL/PIyOYAktRyOUpXzMV1el3qTd2qSgbi2NB7+s+TNZMLjyr
        WDxUM8uyQUn2UUq3lOKYnWpk0w2olLNWwr90Xq7eRCUA7jay/I3wtAZOpHy6ijWIAw7Z0UpLMI8Jm
        qeu4nsBA==;
Received: from e0022681537dd.dyn.armlinux.org.uk ([fd8f:7570:feb6:1:222:68ff:fe15:37dd]:47222 helo=rmk-PC.armlinux.org.uk)
        by pandora.armlinux.org.uk with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <rmk@armlinux.org.uk>)
        id 1lJe9Z-0003ef-4P; Tue, 09 Mar 2021 15:20:09 +0000
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim 4.92)
        (envelope-from <rmk@armlinux.org.uk>)
        id 1lJe9Y-0008Lz-Rr; Tue, 09 Mar 2021 15:20:08 +0000
In-Reply-To: <20210309151925.GG1463@shell.armlinux.org.uk>
References: <20210309151925.GG1463@shell.armlinux.org.uk>
From:   Russell King <rmk+kernel@armlinux.org.uk>
To:     Andrew Lunn <andrew@lunn.ch>,
        Gregory Clement <gregory.clement@bootlin.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH 1/2] arm64: dts: marvell: clearfog-gt-8k: add pwm-fan
MIME-Version: 1.0
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset="utf-8"
Message-Id: <E1lJe9Y-0008Lz-Rr@rmk-PC.armlinux.org.uk>
Sender: Russell King <rmk@armlinux.org.uk>
Date:   Tue, 09 Mar 2021 15:20:08 +0000
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add pwm-fan support for controlling the fan speed.

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
---
 arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts b/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts
index eb01cc96ba7a..b1723ac0aeec 100644
--- a/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts
+++ b/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts
@@ -31,6 +31,13 @@
 		ethernet2 = &cp1_eth2;
 	};
 
+	pwm {
+		compatible = "pwm-fan";
+		pinctrl-names = "default";
+		pinctrl-0 = <&cp0_fan_pwm_pins>;
+		pwms = <&cp0_gpio2 16 40000>;
+	};
+
 	v_3_3: regulator-3-3v {
 		compatible = "regulator-fixed";
 		regulator-name = "v_3_3";
-- 
2.20.1

