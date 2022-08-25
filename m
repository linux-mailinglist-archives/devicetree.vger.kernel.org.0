Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 40F8C5A0BB5
	for <lists+devicetree@lfdr.de>; Thu, 25 Aug 2022 10:41:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233608AbiHYIlL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Aug 2022 04:41:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53436 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237830AbiHYIkw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Aug 2022 04:40:52 -0400
Received: from mail-sz.amlogic.com (mail-sz.amlogic.com [211.162.65.117])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1B5CAA74DD
        for <devicetree@vger.kernel.org>; Thu, 25 Aug 2022 01:40:51 -0700 (PDT)
Received: from rd02-sz.amlogic.software (10.28.8.43) by mail-sz.amlogic.com
 (10.28.11.5) with Microsoft SMTP Server id 15.1.2507.6; Thu, 25 Aug 2022
 16:40:46 +0800
From:   Huqiang Qin <huqiang.qin@amlogic.com>
To:     <khilman@baylibre.com>
CC:     <robh+dt@kernel.org>, <devicetree@vger.kernel.org>,
        Huqiang Qin <huqiang.qin@amlogic.com>
Subject: [PATCH] dts: meson: Add the included meson-s4-gpio.h in the meson-s4.dtsi
Date:   Thu, 25 Aug 2022 16:40:00 +0800
Message-ID: <20220825084000.3402908-1-huqiang.qin@amlogic.com>
X-Mailer: git-send-email 2.37.1
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [10.28.8.43]
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

When the meson-s4-gpio.h is missing, the properties in the node cannot
refer to the gpio number

Signed-off-by: Huqiang Qin <huqiang.qin@amlogic.com>
---
 arch/arm64/boot/dts/amlogic/meson-s4.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-s4.dtsi b/arch/arm64/boot/dts/amlogic/meson-s4.dtsi
index ad50cba42d19..44cce8b0fcef 100644
--- a/arch/arm64/boot/dts/amlogic/meson-s4.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-s4.dtsi
@@ -6,6 +6,7 @@
 #include <dt-bindings/interrupt-controller/irq.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/gpio/meson-s4-gpio.h>
 
 / {
 	cpus {
-- 
2.37.1

