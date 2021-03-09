Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4B872332A39
	for <lists+devicetree@lfdr.de>; Tue,  9 Mar 2021 16:21:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231717AbhCIPUb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Mar 2021 10:20:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41492 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232019AbhCIPUQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Mar 2021 10:20:16 -0500
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk [IPv6:2001:4d48:ad52:32c8:5054:ff:fe00:142])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 600C9C06174A
        for <devicetree@vger.kernel.org>; Tue,  9 Mar 2021 07:20:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
        Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:References:
        In-Reply-To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
        Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
        List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=DhsE32wvGZG/gLjdkondQqaYUXZOcq0tNtw/oiIqhDk=; b=rd2Q7GO0cfMuR6s51kZ4kyoNhK
        ElCZ9D0MuqZzqgS4wXlRM2ZWvfqEXPF2teBUGsfhTxUFt2sl84AVAFxYL/DtxTudVbLc49khNV9X5
        2q+1OufVxwARZNptGvnAIVxAqRLUrUtEl7cBTbUtUD71OpGK5oXgR7oRSe8566LJlhPw90dgUXaut
        VDvQinBAgqYtZKjeQGwKLI7ImkfurpEPkPoSsQeGpmLmZhmnuAv+UDjEYl5JCwMOxUl51zrEFJr3S
        qCdOJ1Hjm+cd0XnwQF329aNCzvBXA+CZW3k6hakFcchtTfyUbJqNOgHh/3utn/NkDYP2UKw/DRMBX
        UorWE/fQ==;
Received: from e0022681537dd.dyn.armlinux.org.uk ([fd8f:7570:feb6:1:222:68ff:fe15:37dd]:47226 helo=rmk-PC.armlinux.org.uk)
        by pandora.armlinux.org.uk with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <rmk@armlinux.org.uk>)
        id 1lJe9e-0003ez-6M; Tue, 09 Mar 2021 15:20:14 +0000
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim 4.92)
        (envelope-from <rmk@armlinux.org.uk>)
        id 1lJe9d-0008MA-W7; Tue, 09 Mar 2021 15:20:14 +0000
In-Reply-To: <20210309151925.GG1463@shell.armlinux.org.uk>
References: <20210309151925.GG1463@shell.armlinux.org.uk>
From:   Russell King <rmk+kernel@armlinux.org.uk>
To:     Andrew Lunn <andrew@lunn.ch>,
        Gregory Clement <gregory.clement@bootlin.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH 2/2] arm64: dts: marvell: clearfog-gt-8k: add cooling maps
MIME-Version: 1.0
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset="utf-8"
Message-Id: <E1lJe9d-0008MA-W7@rmk-PC.armlinux.org.uk>
Sender: Russell King <rmk@armlinux.org.uk>
Date:   Tue, 09 Mar 2021 15:20:13 +0000
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add cooling maps suitable for a Noctua NF-A4/10 fan attached to the
heat sink.  The fan will toggle between two speeds in operation which
seems to be normal behaviour.  More fine-grained steps may help to
reduce this.

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
---
 .../marvell/armada-8040-clearfog-gt-8k.dts    | 122 +++++++++++++++++-
 1 file changed, 121 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts b/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts
index b1723ac0aeec..0ec0d5625818 100644
--- a/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts
+++ b/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts
@@ -31,8 +31,11 @@
 		ethernet2 = &cp1_eth2;
 	};
 
-	pwm {
+	fan: pwm {
 		compatible = "pwm-fan";
+		/* 20% steps */
+		cooling-levels = <0 51 102 153 204 255>;
+		#cooling-cells = <2>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&cp0_fan_pwm_pins>;
 		pwms = <&cp0_gpio2 16 40000>;
@@ -109,6 +112,123 @@
 	};
 };
 
+&ap_thermal_ic {
+	polling-delay = <1000>; /* milliseconds */
+	trips {
+		ap_active: trip-active {
+			temperature = <40000>; /* millicelsius */
+			hysteresis = <4000>; /* millicelsius */
+			type = "active";
+		};
+	};
+	cooling-maps {
+		map0 {
+			trip = <&ap_active>;
+			cooling-device = <&fan THERMAL_NO_LIMIT 4>;
+		};
+		map1 {
+			trip = <&ap_crit>;
+			cooling-device = <&fan 4 5>;
+		};
+	};
+};
+
+&cp0_thermal_ic {
+	polling-delay = <1000>; /* milliseconds */
+	trips {
+		cp0_active0: trip-active0 {
+			temperature = <40000>; /* millicelsius */
+			hysteresis = <2500>; /* millicelsius */
+			type = "active";
+		};
+		cp0_active1: trip-active1 {
+			temperature = <45000>; /* millicelsius */
+			hysteresis = <2500>; /* millicelsius */
+			type = "active";
+		};
+		cp0_active2: trip-active2 {
+			temperature = <50000>; /* millicelsius */
+			hysteresis = <2500>; /* millicelsius */
+			type = "active";
+		};
+		cp0_active3: trip-active3 {
+			temperature = <60000>; /* millicelsius */
+			hysteresis = <2500>; /* millicelsius */
+			type = "active";
+		};
+	};
+	cooling-maps {
+		map0 {
+			trip = <&cp0_active0>;
+			cooling-device = <&fan 0 1>;
+		};
+		map1 {
+			trip = <&cp0_active1>;
+			cooling-device = <&fan 1 2>;
+		};
+		map2 {
+			trip = <&cp0_active2>;
+			cooling-device = <&fan 2 3>;
+		};
+		map3 {
+			trip = <&cp0_active3>;
+			cooling-device = <&fan 3 4>;
+		};
+		map4 {
+			trip = <&cp0_crit>;
+			cooling-device = <&fan 4 5>;
+		};
+	};
+};
+
+&cp1_thermal_ic {
+	polling-delay = <1000>; /* milliseconds */
+	trips {
+		cp1_active0: trip-active0 {
+			temperature = <40000>; /* millicelsius */
+			hysteresis = <2500>; /* millicelsius */
+			type = "active";
+		};
+		cp1_active1: trip-active1 {
+			temperature = <45000>; /* millicelsius */
+			hysteresis = <2500>; /* millicelsius */
+			type = "active";
+		};
+		cp1_active2: trip-active2 {
+			temperature = <50000>; /* millicelsius */
+			hysteresis = <2500>; /* millicelsius */
+			type = "active";
+		};
+		cp1_active3: trip-active3 {
+			temperature = <60000>; /* millicelsius */
+			hysteresis = <2500>; /* millicelsius */
+			type = "active";
+		};
+	};
+	cooling-maps {
+		map0 {
+			trip = <&cp1_active0>;
+			cooling-device = <&fan 0 1>;
+		};
+		map1 {
+			trip = <&cp1_active1>;
+			cooling-device = <&fan 1 2>;
+		};
+		map2 {
+			trip = <&cp1_active2>;
+			cooling-device = <&fan 2 3>;
+		};
+		map3 {
+			trip = <&cp1_active3>;
+			cooling-device = <&fan 3 4>;
+		};
+		map4 {
+			trip = <&cp1_crit>;
+			cooling-device = <&fan 4 5>;
+		};
+	};
+};
+
 &uart0 {
 	status = "okay";
 	pinctrl-0 = <&uart0_pins>;
-- 
2.20.1

