Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 91E5E70D46C
	for <lists+devicetree@lfdr.de>; Tue, 23 May 2023 08:58:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235297AbjEWG6e (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 May 2023 02:58:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48486 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235226AbjEWG6X (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 May 2023 02:58:23 -0400
Received: from muru.com (muru.com [72.249.23.125])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 4C2CD188
        for <devicetree@vger.kernel.org>; Mon, 22 May 2023 23:58:20 -0700 (PDT)
Received: from hillo.muru.com (localhost [127.0.0.1])
        by muru.com (Postfix) with ESMTP id F34A180B5;
        Tue, 23 May 2023 06:58:18 +0000 (UTC)
From:   Tony Lindgren <tony@atomide.com>
To:     Dinh Nguyen <dinguyen@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     devicetree@vger.kernel.org
Subject: [PATCH] arm64: dts: Unify pinctrl-single pin group nodes for altera
Date:   Tue, 23 May 2023 09:58:07 +0300
Message-Id: <20230523065808.15417-1-tony@atomide.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

We want to unify the pinctrl-single pin group nodes to use naming "pins".
Otherwise non-standad pin group names will add make dtbs checks errors
when the pinctrl-single yaml binding gets merged.

Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dts b/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dts
--- a/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dts
+++ b/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dts
@@ -66,14 +66,14 @@ sdmmca-ecc@ff8c8c00 {
 };
 
 &pinctrl0 {
-	i2c1_pmx_func: i2c1-pmx-func {
+	i2c1_pmx_func: i2c1-pins {
 		pinctrl-single,pins = <
 			0x78   0x4   /* I2C1_SDA (IO6-B) PIN30SEL) */
 			0x7c   0x4   /* I2C1_SCL (IO7-B) PIN31SEL */
 		>;
 	};
 
-	i2c1_pmx_func_gpio: i2c1-pmx-func-gpio {
+	i2c1_pmx_func_gpio: i2c1-gpio-pins {
 		pinctrl-single,pins = <
 			0x78   0x8   /* I2C1_SDA (IO6-B) PIN30SEL) */
 			0x7c   0x8   /* I2C1_SCL (IO7-B) PIN31SEL */
-- 
2.40.1
