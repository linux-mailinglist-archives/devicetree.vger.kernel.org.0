Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D6AFE5BD5F5
	for <lists+devicetree@lfdr.de>; Mon, 19 Sep 2022 22:57:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229540AbiISU5j (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Sep 2022 16:57:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57174 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229692AbiISU5i (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Sep 2022 16:57:38 -0400
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9F79D4BA5E
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 13:57:36 -0700 (PDT)
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 28JKvURc021529;
        Mon, 19 Sep 2022 15:57:30 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1663621050;
        bh=KibnN0Ah/GNK4yfdlnlaWyMQTYsHN5LsmpEGU5zryTw=;
        h=From:To:CC:Subject:Date;
        b=V2iHrNZ6jtscUcg0Wc+0ak8Jzd+l11EQPLord7m4nabnzyzokDqJLkLzqx92rNWIM
         B2Sqcr43XOpp+kXwkgy/Fsdu1V62Tbw9BO8JYW7GWdzngliLUd/2ig13JjqP2NOciM
         tVQ3F2bgOrMAWdHt6aTa9nbZAPquyWbbHD3jPB+s=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 28JKvTQ8095400
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Mon, 19 Sep 2022 15:57:30 -0500
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6; Mon, 19
 Sep 2022 15:57:29 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6 via
 Frontend Transport; Mon, 19 Sep 2022 15:57:29 -0500
Received: from ubuntu.ent.ti.com (ileaxei01-snat2.itg.ti.com [10.180.69.6])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 28JKvOIt081854;
        Mon, 19 Sep 2022 15:57:25 -0500
From:   Matt Ranostay <mranostay@ti.com>
To:     <nm@ti.com>, <vigneshr@ti.com>
CC:     <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        Matt Ranostay <mranostay@ti.com>,
        Vaishnav Achath <vaishnav.a@ti.com>
Subject: [PATCH v2] arm64: dts: ti: k3-j7200: fix main pinmux range
Date:   Mon, 19 Sep 2022 13:57:23 -0700
Message-ID: <20220919205723.8342-1-mranostay@ti.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Range size of 0x2b4 was incorrect since there isn't 173 configurable
pins for muxing. Additionally there is a non-addessable region in the
mapping which requires spliting into two ranges.

main_pmx0 -> 67 pins
main_pmx1 -> 3 pins

Fixes: d361ed88455f ("arm64: dts: ti: Add support for J7200 SoC")
Tested-by: Vaishnav Achath <vaishnav.a@ti.com>
Signed-off-by: Matt Ranostay <mranostay@ti.com>
---

Changes from v1:
* Fixed offsets for new pin ranges
* Correct USB pinmux reference to main_pmx1 from main_pmx0
* Correct pin count in commit message
* Add additional accessible pin to main_pmx1 node

 arch/arm64/boot/dts/ti/k3-j7200-common-proc-board.dts | 10 ++++++----
 arch/arm64/boot/dts/ti/k3-j7200-main.dtsi             | 11 ++++++++++-
 2 files changed, 16 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-j7200-common-proc-board.dts b/arch/arm64/boot/dts/ti/k3-j7200-common-proc-board.dts
index 121975dc8239..7e8552fd2b6a 100644
--- a/arch/arm64/boot/dts/ti/k3-j7200-common-proc-board.dts
+++ b/arch/arm64/boot/dts/ti/k3-j7200-common-proc-board.dts
@@ -134,15 +134,17 @@ J721E_IOPAD(0xe4, PIN_INPUT, 8) /* (V1) TIMER_IO0.MMC1_SDCD */
 		>;
 	};
 
-	main_usbss0_pins_default: main-usbss0-pins-default {
+	vdd_sd_dv_pins_default: vdd-sd-dv-pins-default {
 		pinctrl-single,pins = <
-			J721E_IOPAD(0x120, PIN_OUTPUT, 0) /* (T4) USB0_DRVVBUS */
+			J721E_IOPAD(0xd0, PIN_OUTPUT, 7) /* (T5) SPI0_D1.GPIO0_55 */
 		>;
 	};
+};
 
-	vdd_sd_dv_pins_default: vdd-sd-dv-pins-default {
+&main_pmx1 {
+	main_usbss0_pins_default: main-usbss0-pins-default {
 		pinctrl-single,pins = <
-			J721E_IOPAD(0xd0, PIN_OUTPUT, 7) /* (T5) SPI0_D1.GPIO0_55 */
+			J721E_IOPAD(0x04, PIN_OUTPUT, 0) /* (T4) USB0_DRVVBUS */
 		>;
 	};
 };
diff --git a/arch/arm64/boot/dts/ti/k3-j7200-main.dtsi b/arch/arm64/boot/dts/ti/k3-j7200-main.dtsi
index cf657ac0bd6a..80a57916bcb3 100644
--- a/arch/arm64/boot/dts/ti/k3-j7200-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j7200-main.dtsi
@@ -295,7 +295,16 @@ cpts@310d0000 {
 	main_pmx0: pinctrl@11c000 {
 		compatible = "pinctrl-single";
 		/* Proxy 0 addressing */
-		reg = <0x00 0x11c000 0x00 0x2b4>;
+		reg = <0x00 0x11c000 0x00 0x10c>;
+		#pinctrl-cells = <1>;
+		pinctrl-single,register-width = <32>;
+		pinctrl-single,function-mask = <0xffffffff>;
+	};
+
+	main_pmx1: pinctrl@11c11c {
+		compatible = "pinctrl-single";
+		/* Proxy 0 addressing */
+		reg = <0x00 0x11c11c 0x00 0xc>;
 		#pinctrl-cells = <1>;
 		pinctrl-single,register-width = <32>;
 		pinctrl-single,function-mask = <0xffffffff>;
-- 
2.37.2

