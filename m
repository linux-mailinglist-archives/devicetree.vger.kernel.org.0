Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F0B553D0397
	for <lists+devicetree@lfdr.de>; Tue, 20 Jul 2021 23:06:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229706AbhGTUZv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Jul 2021 16:25:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45008 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234712AbhGTUNk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Jul 2021 16:13:40 -0400
Received: from mail-oi1-x22d.google.com (mail-oi1-x22d.google.com [IPv6:2607:f8b0:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 92112C061762
        for <devicetree@vger.kernel.org>; Tue, 20 Jul 2021 13:54:13 -0700 (PDT)
Received: by mail-oi1-x22d.google.com with SMTP id u11so651201oiv.1
        for <devicetree@vger.kernel.org>; Tue, 20 Jul 2021 13:54:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=zTZZLjUdyFEqjaWHt/tewDnsUMyMzDCTcPb3etZIKoA=;
        b=lxufml5UsQxSyJM3+U5G3ly0oIpM8okLujJYTBxzEc757KP5AiDsQOl/dQuq3wZmEU
         Ojq7NJlTx9V7ukdbydzweZ5H7sw3a2eBTufzIrXAgLZWAOl5wylVjEs5taP6BGgqG0/X
         q8htvm0YYJnQFZ4ch65OMhDcnDurpttq5F8aN1AOqMqvACwyHU+Ya+n6ymIlq6P7kbFX
         FZbpMO31NHzwcjhHBY2TAXqidE8vx4IzimeILXjo0SJ59LvxpslDDnnRXTvGKGyJ6ISb
         S0yytaDqWuctUjqmwkSUfalmf17oQf2azNVpDiR8gc+iIl0ieJBvtKyCGQfivlkLH4nL
         Plag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=zTZZLjUdyFEqjaWHt/tewDnsUMyMzDCTcPb3etZIKoA=;
        b=NdLNNp2NKG+etCbc9ST+9aQk2qE33uV5iNcEmzVVBFg1jwUgOXKtTmB4XPMQRTPR1t
         jHg+UkEJ5aKgCw0+1+/9yZy39v6oYgCnFJCQQ05NYSt7jXKRWytVukI6uYh7BNQ9ff2f
         BNAZOYDuc9WZNtEmYzcRtcV9kMO1IYzbjMbZi48FVpV5JT8lf73KL7Jtt9Q0W58UkHGS
         rsjtUVMZmuqLDXPpPuCOd+ytRpPeOio8mcQOX5T0OVUFL4R9//PBONMYLT9X4JgT+2SX
         GuL2rnL7lKTg4MNu17tBrlpJ6JoyKWA+vDJQ6nNESXh2PN1dlIK1RDFTPoN3duoF7z9A
         RWZQ==
X-Gm-Message-State: AOAM53201zulyHmsf88tweg3YZJnwIPkFvUrvJQrIVN1AKhnkKwp2qwd
        dnUYF2eTS0/L5X2cpxfoIZGWYMfBS5o=
X-Google-Smtp-Source: ABdhPJyxc7S7uhEYeOxBRv2Mffwu4iNkDj6Bhgz+KqOvyvnGy/IvgkvetEfkRxWJJFrXzYZizbLZkw==
X-Received: by 2002:aca:61d5:: with SMTP id v204mr270952oib.138.1626814452626;
        Tue, 20 Jul 2021 13:54:12 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id s6sm3329094otd.6.2021.07.20.13.54.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jul 2021 13:54:11 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     devicetree@vger.kernel.org
Cc:     robh+dt@kernel.org, heiko@sntech.de, maccraft123mc@gmail.com,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH v2] arm64: dts: rockchip: Correct regulator for USB host
Date:   Tue, 20 Jul 2021 15:54:01 -0500
Message-Id: <20210720205401.26311-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

When writing a battery driver, I noticed that the USB voltage was ~3.7V
while running off of battery on a mainline kernel. After consulting the
schematics for the Odroid Go Advance, it appears that the BOOST
regulator is involved in the process of powering the USB host. Power
for the USB host goes from the vccsys regulator into the PMIC, then out
from the PMIC BOOST regulator into the FC9516A (which is controlled by
GPIO), which then feeds power into the USB host. I named the regulator
usb_midu because on the datasheet the pin is described as "MIDU/BOOST -
middle point of USB power supply / boost output". Making these changes
solved the USB power issue on battery and I'm now reading approximately
5V. Note that as a result of this you will receive a warning on dmesg
of " reg-fixed-voltage vcc_host: Failed to register regulator: -517".
This is because the supplying regulator for the fixed regulator is not
available until later.

Changes since v1:
 - Removed phy-supply, as this generated a warning in dmesg.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
index 7fc674a99a6c..79d2f86ab46d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
@@ -207,7 +207,7 @@ vcc_host: vcc_host {
 		gpio = <&gpio0 RK_PB7 GPIO_ACTIVE_HIGH>;
 		enable-active-high;
 		regulator-always-on;
-		vin-supply = <&vccsys>;
+		vin-supply = <&usb_midu>;
 	};
 };
 
@@ -311,6 +311,7 @@ rk817: pmic@20 {
 		vcc5-supply = <&vccsys>;
 		vcc6-supply = <&vccsys>;
 		vcc7-supply = <&vccsys>;
+		vcc8-supply = <&vccsys>;
 
 		regulators {
 			vdd_logic: DCDC_REG1 {
@@ -460,6 +461,14 @@ regulator-state-mem {
 					regulator-suspend-microvolt = <3000000>;
 				};
 			};
+
+			usb_midu: BOOST {
+				regulator-name = "usb_midu";
+				regulator-min-microvolt = <5000000>;
+				regulator-max-microvolt = <5400000>;
+				regulator-always-on;
+				regulator-boot-on;
+			};
 		};
 
 		rk817_codec: codec {
 
-- 
2.25.1

