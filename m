Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AF91C343E90
	for <lists+devicetree@lfdr.de>; Mon, 22 Mar 2021 11:57:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230327AbhCVK5A (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Mar 2021 06:57:00 -0400
Received: from mail.cognitivepilot.com ([91.218.251.140]:10725 "EHLO
        mail.cognitivepilot.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230433AbhCVK4g (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Mar 2021 06:56:36 -0400
Received: from mail.cognitivepilot.com (localhost [127.0.0.1])
        by mail.cognitivepilot.com (Postfix) with ESMTP id 4F3rz34WMszmj4Lv
        for <devicetree@vger.kernel.org>; Mon, 22 Mar 2021 13:56:31 +0300 (MSK)
X-Virus-Scanned: amavisd-new at cognitivepilot.com
X-Spam-Flag: NO
X-Spam-Score: 2.247
X-Spam-Level: **
X-Spam-Status: No, score=2.247 tagged_above=2 required=6.2
        tests=[RDNS_NONE=1.274, SPF_HELO_NONE=0.001, SPF_SOFTFAIL=0.972]
        autolearn=no autolearn_force=no
Received: from mail.cognitivepilot.com ([127.0.0.1])
        by mail.cognitivepilot.com (mail.cognitivepilot.com [127.0.0.1]) (amavisd-new, port 10024)
        with ESMTP id eQX2WYYBrShb for <devicetree@vger.kernel.org>;
        Mon, 22 Mar 2021 13:56:31 +0300 (MSK)
Received: from localhost.localdomain (unknown [185.68.147.27])
        by mail.cognitivepilot.com (Postfix) with ESMTP id 4F3rz22jZ7zmSZQP;
        Mon, 22 Mar 2021 13:56:30 +0300 (MSK)
From:   Ivan Uvarov <i.uvarov@cognitivepilot.com>
To:     devicetree@vger.kernel.org
Cc:     Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Maxime Ripard <mripard@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        Andre Przywara <andre.przywara@arm.com>,
        Icenowy Zheng <icenowy@aosc.io>,
        Ivan Uvarov <i.uvarov@cognitivepilot.com>
Subject: [PATCH v2 1/4] ARM: dts: sun8i: r40: add /omit-if-no-ref/ to pinmux nodes for UARTs 0&3
Date:   Mon, 22 Mar 2021 13:55:35 +0300
Message-Id: <20210322105538.3475183-2-i.uvarov@cognitivepilot.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210322105538.3475183-1-i.uvarov@cognitivepilot.com>
References: <20210322105538.3475183-1-i.uvarov@cognitivepilot.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch adds the /omit-if-no-ref/ keyword to the pio nodes for
UART0 and UART3 pins of the R40 SoC, which would reduce the fdt size on
boards which do not use these UARTs.

Signed-off-by: Ivan Uvarov <i.uvarov@cognitivepilot.com>

 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boot/dts/sun8i-r40.dtsi b/arch/arm/boot/dts/sun8i-r40.dtsi
index d5ad3b9efd..0b257a0779 100644
--- a/arch/arm/boot/dts/sun8i-r40.dtsi
+++ b/arch/arm/boot/dts/sun8i-r40.dtsi
@@ -631,16 +631,19 @@ spi1_cs1_pi_pin: spi1-cs1-pi-pin {
 				function = "spi1";
 			};
 
+			/omit-if-no-ref/
 			uart0_pb_pins: uart0-pb-pins {
 				pins = "PB22", "PB23";
 				function = "uart0";
 			};
 
+			/omit-if-no-ref/
 			uart3_pg_pins: uart3-pg-pins {
 				pins = "PG6", "PG7";
 				function = "uart3";
 			};
 
+			/omit-if-no-ref/
 			uart3_rts_cts_pg_pins: uart3-rts-cts-pg-pins {
 				pins = "PG8", "PG9";
 				function = "uart3";
-- 
2.25.1

