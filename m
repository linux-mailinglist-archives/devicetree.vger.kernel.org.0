Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id EEA21167D56
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2020 13:21:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727720AbgBUMVo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Feb 2020 07:21:44 -0500
Received: from michel.telenet-ops.be ([195.130.137.88]:41530 "EHLO
        michel.telenet-ops.be" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727683AbgBUMVo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Feb 2020 07:21:44 -0500
Received: from ramsan ([84.195.182.253])
        by michel.telenet-ops.be with bizsmtp
        id 5QMi2200C5USYZQ06QMiA0; Fri, 21 Feb 2020 13:21:42 +0100
Received: from rox.of.borg ([192.168.97.57])
        by ramsan with esmtp (Exim 4.90_1)
        (envelope-from <geert@linux-m68k.org>)
        id 1j57JO-0002E7-6D; Fri, 21 Feb 2020 13:21:42 +0100
Received: from geert by rox.of.borg with local (Exim 4.90_1)
        (envelope-from <geert@linux-m68k.org>)
        id 1j57JO-0008LO-4p; Fri, 21 Feb 2020 13:21:42 +0100
From:   Geert Uytterhoeven <geert+renesas@glider.be>
To:     Marcus Wolf <linux@Wolf-Entwicklungen.de>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Pantelis Antoniou <pantelis.antoniou@konsulko.com>,
        Frank Rowand <frowand.list@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
Cc:     devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
        Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH 2/3] staging: pi433: overlay: Fix reg-related warnings
Date:   Fri, 21 Feb 2020 13:21:32 +0100
Message-Id: <20200221122133.32024-3-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200221122133.32024-1-geert+renesas@glider.be>
References: <20200221122133.32024-1-geert+renesas@glider.be>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

When running "scripts/dtc/dtc -@ -I dts -O dtb -o pi433-overlay.dtbo.1
drivers/staging/pi433/Documentation/devicetree/pi433-overlay.dts":

    drivers/staging/pi433/Documentation/devicetree/pi433-overlay.dts:13.12-15.6: Warning (unit_address_vs_reg): /fragment@0/__overlay__/spidev@0: node has a unit name, but no reg property
    drivers/staging/pi433/Documentation/devicetree/pi433-overlay.dts:17.12-19.6: Warning (unit_address_vs_reg): /fragment@0/__overlay__/spidev@1: node has a unit name, but no reg property

Add the missing "reg" properties to fix this.

    drivers/staging/pi433/Documentation/devicetree/pi433-overlay.dts:14.5-15: Warning (reg_format): /fragment@0/__overlay__/spidev@0:reg: property has invalid length (4 bytes) (#address-cells == 2, #size-cells == 1)
    drivers/staging/pi433/Documentation/devicetree/pi433-overlay.dts:19.5-15: Warning (reg_format): /fragment@0/__overlay__/spidev@1:reg: property has invalid length (4 bytes) (#address-cells == 2, #size-cells == 1)

Add the missing "#{address,size}-cells" to fix this.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 .../staging/pi433/Documentation/devicetree/pi433-overlay.dts  | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/staging/pi433/Documentation/devicetree/pi433-overlay.dts b/drivers/staging/pi433/Documentation/devicetree/pi433-overlay.dts
index dfc9f974ac24ecc1..b584180d78d019aa 100644
--- a/drivers/staging/pi433/Documentation/devicetree/pi433-overlay.dts
+++ b/drivers/staging/pi433/Documentation/devicetree/pi433-overlay.dts
@@ -8,13 +8,17 @@
 	fragment@0 {
 		target = <&spi0>;
 		__overlay__ {
+			#address-cells = <1>;
+			#size-cells = <0>;
 			status = "okay";
 
 			spidev@0{
+				reg = <0>;
 				status = "disabled";
 			};
 
 			spidev@1{
+				reg = <1>;
 				status = "disabled";
 			};
 		};
-- 
2.17.1

