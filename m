Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DFA7A6670EA
	for <lists+devicetree@lfdr.de>; Thu, 12 Jan 2023 12:30:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230253AbjALLaF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 Jan 2023 06:30:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44092 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231592AbjALL2A (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 Jan 2023 06:28:00 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3FB90186C8
        for <devicetree@vger.kernel.org>; Thu, 12 Jan 2023 03:20:26 -0800 (PST)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <ukl@pengutronix.de>)
        id 1pFvd4-00081u-RC; Thu, 12 Jan 2023 12:20:18 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
        by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
        (envelope-from <ukl@pengutronix.de>)
        id 1pFvd2-005WbQ-BQ; Thu, 12 Jan 2023 12:20:16 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
        (envelope-from <ukl@pengutronix.de>)
        id 1pFvd1-00CFm0-Kj; Thu, 12 Jan 2023 12:20:15 +0100
From:   =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= 
        <u.kleine-koenig@pengutronix.de>
To:     Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Amelie Delaunay <amelie.delaunay@st.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de
Subject: [PATCH] ARM: dts: stm32mp15x: adjust USB OTG gadget tx fifo sizes
Date:   Thu, 12 Jan 2023 12:20:13 +0100
Message-Id: <20230112112013.1086787-1-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=5321; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=nNLgwvYuoaZ8+6gtSpPIpU3F9+Vhm10XGr3g7FWNFug=; b=owEBbQGS/pANAwAKAcH8FHityuwJAcsmYgBjv+zpXalQ5lGu4Vr4c0mC7wrY24clRImSIH+epUJv z13Qq0iJATMEAAEKAB0WIQR+cioWkBis/z50pAvB/BR4rcrsCQUCY7/s6QAKCRDB/BR4rcrsCQkwCA ChROy+vi1tQeckwK7JsY03xeg4R2Y5vZ0gByUQ8jfd1W7zuHbQTCmqWyViO7UGE79XcnebsqZSU2Vm UbhIB2x3inVasHLAzcn4qAE/bTtkeHEJy6wkLeWdA8YXqKNQmKF5qFhgY8RLtfx7ABLlh1wXGISEmF pXctu8jcLIjcL7HBNfxZKFWXKKY019o0uL5PPNruxFTLwBy3VKHEJMIqhQtjTHXJRFbAHkR5nBDE5f R6ki1ljS5bIZps4WL8vZIQs9/4MhaKQtHiaBNmHzOUjjDDn5gi+nFhBgJkSVzdoCctq1X8TB3JQSXl ODaySMi7WbjJXzEDG1uhyqxoeLEJlG
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

There are in sum 952 dwords available for g-rx-fifo-size,
g-np-tx-fifo-size and the eight entries of g-tx-fifo-size. For high
speed endpoints the maximal packet size is 512 (for full speed it's 64)
bytes. So a tx-fifo-size of more than 128 (dwords) isn't sensible.

So instead of one (too) big and several small fifos, use two big fifos
and to better use the remaining available space increase one of the
small fifos.

This allows to work with CONFIG_USB_CDC_COMPOSITE (i.e. Ethernet and
ACM) which requires 4 endpoints with fifo sizes 512, 512, 16 and 10
respectively.

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
---
Hello,

with CONFIG_USB_CDC_COMPOSITE enabled on the old device tree, the driver
dies in a rather bad way:

[    2.472914] dwc2 49000000.usb-otg: dwc2_hsotg_ep_enable: No suitable fifo found
[    2.478767] ------------[ cut here ]------------
[    2.483369] WARNING: CPU: 0 PID: 0 at kernel/dma/mapping.c:532 dma_free_attrs+0xc8/0xcc
[    2.491363] Modules linked in:
[    2.494407] CPU: 0 PID: 0 Comm: swapper/0 Not tainted 5.15.0-20221026-1 #1
[    2.501267] Hardware name: STM32 (Device Tree Support)
[    2.506409] [<c01110e8>] (unwind_backtrace) from [<c010c9c0>] (show_stack+0x18/0x1c)
[    2.514129] [<c010c9c0>] (show_stack) from [<c0a83648>] (dump_stack_lvl+0x40/0x4c)
[    2.521689] [<c0a83648>] (dump_stack_lvl) from [<c0136228>] (__warn+0xf4/0x150)
[    2.528986] [<c0136228>] (__warn) from [<c0a7fe2c>] (warn_slowpath_fmt+0x6c/0xd0)
[    2.536458] [<c0a7fe2c>] (warn_slowpath_fmt) from [<c01ad534>] (dma_free_attrs+0xc8/0xcc)
[    2.544623] [<c01ad534>] (dma_free_attrs) from [<c01adbc0>] (dmam_free_coherent+0x40/0x9c)
[    2.552876] [<c01adbc0>] (dmam_free_coherent) from [<c0754570>] (dwc2_hsotg_ep_enable+0x63c/0x6b0)
[    2.561827] [<c0754570>] (dwc2_hsotg_ep_enable) from [<c0791a44>] (usb_ep_enable+0x40/0xf0)
[    2.570167] [<c0791a44>] (usb_ep_enable) from [<c0798364>] (gether_connect+0x2c/0x1c0)
[    2.578073] [<c0798364>] (gether_connect) from [<c0799f70>] (ecm_set_alt+0xcc/0x1f8)
[    2.585805] [<c0799f70>] (ecm_set_alt) from [<c078d0ec>] (composite_setup+0x5bc/0x1d40)
[    2.593799] [<c078d0ec>] (composite_setup) from [<c07568f0>] (dwc2_hsotg_complete_setup+0x16c/0x68c)
[    2.602921] [<c07568f0>] (dwc2_hsotg_complete_setup) from [<c0755474>] (dwc2_hsotg_complete_request+0x9c/0x210)
[    2.612999] [<c0755474>] (dwc2_hsotg_complete_request) from [<c0757d68>] (dwc2_hsotg_epint+0xe0c/0x1248)
[    2.622470] [<c0757d68>] (dwc2_hsotg_epint) from [<c075a1a4>] (dwc2_hsotg_irq+0x9c4/0x10a4)
[    2.630812] [<c075a1a4>] (dwc2_hsotg_irq) from [<c0194238>] (__handle_irq_event_percpu+0x64/0x234)
[    2.639762] [<c0194238>] (__handle_irq_event_percpu) from [<c01944f0>] (handle_irq_event+0x64/0xc8)
[    2.648798] [<c01944f0>] (handle_irq_event) from [<c0199028>] (handle_fasteoi_irq+0xbc/0x214)
[    2.657312] [<c0199028>] (handle_fasteoi_irq) from [<c0193a9c>] (handle_domain_irq+0x84/0xb8)
[    2.665827] [<c0193a9c>] (handle_domain_irq) from [<c05628b0>] (gic_handle_irq+0x84/0x98)
[    2.673995] [<c05628b0>] (gic_handle_irq) from [<c0100afc>] (__irq_svc+0x5c/0x90)
[    2.681466] Exception stack(0xc1001ef8 to 0xc1001f40)
[    2.686509] 1ee0:                                                       00000484 c0d6f994
[    2.694680] 1f00: 00000000 c011afe0 c10f5ae0 00000000 ffffe000 c1004f54 00000000 00000000
[    2.702848] 1f20: c1000000 c0e11af0 c1000000 c1001f48 c01091ec c01091f0 60000013 ffffffff
[    2.711008] [<c0100afc>] (__irq_svc) from [<c01091f0>] (arch_cpu_idle+0x40/0x44)
[    2.718393] [<c01091f0>] (arch_cpu_idle) from [<c0a91f40>] (default_idle_call+0x4c/0x168)
[    2.726561] [<c0a91f40>] (default_idle_call) from [<c016f054>] (do_idle+0x23c/0x290)
[    2.734294] [<c016f054>] (do_idle) from [<c016f3fc>] (cpu_startup_entry+0x20/0x24)
[    2.741852] [<c016f3fc>] (cpu_startup_entry) from [<c0f01040>] (start_kernel+0x5e8/0x634)
[    2.750020] [<c0f01040>] (start_kernel) from [<00000000>] (0x0)
[    2.755929] ---[ end trace febb0e7bfc3d83c0 ]---

so there might be another change required to fail in a nicer way.
(That's the WARN_ON(irqs_disabled()) in dma_free_attrs() that triggers
here.)

Another thought I had while tuning the tx fifo sizes was: Why is the
size allocation not (more) done dynamically? At least only setting a
fixed amount of dwords aside for g-tx-fifo-size and allocate from that
shouldn't be too hard, should it?

Note I know very little about USB, so it might well be possible that I
missed a use case, but with this change my USB gadget works as expected.

Best regards
Uwe

 arch/arm/boot/dts/stm32mp151.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/stm32mp151.dtsi b/arch/arm/boot/dts/stm32mp151.dtsi
index 5491b6c4dec2..af70ca1f9b57 100644
--- a/arch/arm/boot/dts/stm32mp151.dtsi
+++ b/arch/arm/boot/dts/stm32mp151.dtsi
@@ -1137,7 +1137,7 @@ usbotg_hs: usb-otg@49000000 {
 			interrupts = <GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH>;
 			g-rx-fifo-size = <512>;
 			g-np-tx-fifo-size = <32>;
-			g-tx-fifo-size = <256 16 16 16 16 16 16 16>;
+			g-tx-fifo-size = <128 128 64 16 16 16 16 16>;
 			dr_mode = "otg";
 			otg-rev = <0x200>;
 			usb33d-supply = <&usb33>;
-- 
2.39.0

