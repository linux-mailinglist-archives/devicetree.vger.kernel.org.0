Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7345267F78F
	for <lists+devicetree@lfdr.de>; Sat, 28 Jan 2023 12:30:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230110AbjA1LaL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 28 Jan 2023 06:30:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35946 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232477AbjA1LaL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 28 Jan 2023 06:30:11 -0500
X-Greylist: delayed 326 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sat, 28 Jan 2023 03:30:09 PST
Received: from mail.manjaro.org (mail.manjaro.org [IPv6:2a01:4f8:c0c:51f3::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 18CAC4F362
        for <devicetree@vger.kernel.org>; Sat, 28 Jan 2023 03:30:08 -0800 (PST)
From:   Dan Johansen <strit@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
        t=1674905078;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding;
        bh=Cbv25kWnQcuHZxxSDi6fiv0hGyE8BN7RyAJmaVQP+Vk=;
        b=dvrXmY/iqHp3zZ86zdiiH42IcXOH+om8qnTpxFRub14DUczealFBsB0x2BED5CTdlvFUwD
        tjI9BYCAedvrCSIo/ga7dMxWxFbWppmt+kZzadVSKSSEB+lKY6S6LIvtnRw01vHJgq1rMt
        jquozzWiHh+9L04BGJZSBDi/30GGnclaWUuwJxn5Fol6iCq1qKpmcnwHvqcjj7RXTLIt+i
        CzUG6xnr9wHssF/V1hzTDF1Yg2iaUQRfgHNpYMYz0G+cWuBD/t6Tc2LDSAObMm8zgu/jHL
        Cc7pZxUg3FbtA7RPeO4mGe5Ht6s7M8f60vABl0gAa4aPbx7FUll3al/tNJqREg==
To:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        heiko@sntech.de
Cc:     devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        Dan Johansen <strit@manjaro.org>
Subject: [PATCH] arm64: dts: rockchip: set sdmmc0 speed to sd-uhs-sdr50
Date:   Sat, 28 Jan 2023 12:24:32 +0100
Message-Id: <20230128112432.132302-1-strit@manjaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Authentication-Results: ORIGINATING;
        auth=pass smtp.auth=strit@manjaro.org smtp.mailfrom=strit@manjaro.org
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

As other rk336x based devices, the Rock 3 Model A has issues with high
speed SD cards, so lower the speed to 50 instead of 104 in the same
manor has the Quartz64 Model B has.

Fixes: 22a442e6 ("arm64: dts: rockchip: add basic dts for the radxa
rock3 model a")

Signed-off-by: Dan Johansen <strit@manjaro.org>
---
 arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
index a1c5fdf7d68f..e2e159371a9e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
@@ -730,7 +730,7 @@ &sdmmc0 {
 	disable-wp;
 	pinctrl-names = "default";
 	pinctrl-0 = <&sdmmc0_bus4 &sdmmc0_clk &sdmmc0_cmd &sdmmc0_det>;
-	sd-uhs-sdr104;
+	sd-uhs-sdr50;
 	vmmc-supply = <&vcc3v3_sd>;
 	vqmmc-supply = <&vccio_sd>;
 	status = "okay";
-- 
2.39.1

