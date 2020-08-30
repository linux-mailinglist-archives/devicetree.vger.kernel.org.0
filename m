Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EBD49257067
	for <lists+devicetree@lfdr.de>; Sun, 30 Aug 2020 22:12:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726178AbgH3UMI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 30 Aug 2020 16:12:08 -0400
Received: from mout.kundenserver.de ([212.227.126.133]:47951 "EHLO
        mout.kundenserver.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726150AbgH3UMH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 30 Aug 2020 16:12:07 -0400
Received: from buildfff.adridolf.com ([188.192.134.246]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MCKO2-1kLrcE1XNK-009NWS; Sun, 30 Aug 2020 22:11:56 +0200
From:   Adrian Schmutzler <freifunk@adrianschmutzler.de>
To:     Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org
Subject: [PATCH] arm64: dts: rockchip: replace status value "ok" by "okay"
Date:   Sun, 30 Aug 2020 22:11:12 +0200
Message-Id: <20200830201112.1934-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:uf6YlynqW3NquFxGS1zExJAHcdSff5eY3WC+TNDcjw1QG0P+tt1
 ZsOUv3XQdQadCyBQoa8Zjlk36Tx5/81+F2htn460uZyc5sgkMZWFs8vp+znZcyz1Ol7xzwI
 JEjKZ1KkxEShlBiUQOWFWlgIA5SwffcHUz87cFUP4pey+joZFpG/v6jgdJg1QyqXUx+vAPK
 w7tUj5YDm1tUNPPuQJeMA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:iJ9lBfz7u5Q=:3xEeAracVWTLwrvg4wITTS
 ZLrcgNzvdAXiPV+6QPLzjMOTzoUp91U4xyQIcM1Gcj3JmgGO8W9ZuMQbdSb+5GzwABMRUxqte
 lDsM6VcMfR+e3oO7Kz+g8ozTyouerhs6TeB29wjiar9UHlMFiUTV9YaAw/aTHkqu4Jqxr46M9
 FZiAuhA/oTp5eCvDAciMgqMyKl+hNzt9Ysww5YQOix5nufe7WUN1yUj9/5r7uzjC/VeyKNk0Y
 kewlTtk/aLx7XtGVhxQv9XyGCeEeuTqKBkW0Qhnn1Mw16jUc2HYLrsQ3YoQpyqXCSfyy+RdiJ
 b6WL1OSzWthkmRzbV6Y8Td1LbF1Fxd6SGinhxJTWuVecpbru8CQ1orEF4FjphhEnFUUGjcmZm
 MCIGEoR4E21jPYbDGttk+wzKY17wcixqzQWIgmDrNNmqHk2R1KsavyItRcGIHKH6f0RATR4Nr
 O/qPw8230fF+gnK1jytJlmJN4bdMqUu9PkF4DN8A1tEHqlywmrl7ojhTuS1RUbXn8+lIUVWro
 zUeAuX2b1xvltoL6OwpWSDWh9rpeugGR6R5ciR9vx7a0k15O2FwU8B3/PuDbOdyNL9f2dwoA/
 evFnSjG6DdOoXKAutnVMJtFxnmHh6vpdTzY2XVPyiH8BDDw7c9HXbrN+5hgCegApURylnUj75
 jIqfflNvAP5uBs7iOu/gAz4lS53Vdw8V6MVET8V4Os4fUEHEjXI0gCrQDjNpgUMwgVyS9c4YB
 nX1bA3MRBPYk7oBuIVyKmZYYtPC3oaoQ7JMqsr1tiAvKq0LE4pCwpC+q4t0q3zCqyf4F846Pm
 rjLRqbRYM3PyIKX6zSjb/fwI0uBdWoUsosSI2ZD3HBSv1RbxazEv7LaCas01BKUQE/cR5VqWn
 vUkZZxMNsFPBY6FHagzw==
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

While the DT parser recognizes "ok" as a valid value for the
"status" property, it is actually mentioned nowhere. Use the
proper value "okay" instead, as done in the majority of files
already.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 arch/arm64/boot/dts/rockchip/rk3368-evb.dtsi           | 2 +-
 arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts | 2 +-
 arch/arm64/boot/dts/rockchip/rk3368-r88.dts            | 4 ++--
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3368-evb.dtsi b/arch/arm64/boot/dts/rockchip/rk3368-evb.dtsi
index 1c52f47c43a6..87fabc64cc39 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-evb.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3368-evb.dtsi
@@ -134,7 +134,7 @@
 	pinctrl-0 = <&rmii_pins>;
 	tx_delay = <0x30>;
 	rx_delay = <0x10>;
-	status = "ok";
+	status = "okay";
 };
 
 &i2c0 {
diff --git a/arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts b/arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts
index b058ce999e3b..ecce16ecc9c3 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts
@@ -183,7 +183,7 @@
 	snps,reset-delays-us = <0 10000 1000000>;
 	tx_delay = <0x30>;
 	rx_delay = <0x10>;
-	status = "ok";
+	status = "okay";
 };
 
 &i2c0 {
diff --git a/arch/arm64/boot/dts/rockchip/rk3368-r88.dts b/arch/arm64/boot/dts/rockchip/rk3368-r88.dts
index 236ab0f1b206..2582fa4b90e2 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-r88.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3368-r88.dts
@@ -167,7 +167,7 @@
 	pinctrl-0 = <&rmii_pins>;
 	tx_delay = <0x30>;
 	rx_delay = <0x10>;
-	status = "ok";
+	status = "okay";
 };
 
 &i2c0 {
@@ -198,7 +198,7 @@
 };
 
 &io_domains {
-	status = "ok";
+	status = "okay";
 
 	audio-supply = <&vcc_io>;
 	gpio30-supply = <&vcc_io>;
-- 
2.20.1

