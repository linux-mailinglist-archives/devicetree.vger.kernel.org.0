Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3EBDD6AAB97
	for <lists+devicetree@lfdr.de>; Sat,  4 Mar 2023 18:28:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229447AbjCDR2t (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 4 Mar 2023 12:28:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41240 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229445AbjCDR2s (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 4 Mar 2023 12:28:48 -0500
Received: from mail.manjaro.org (mail.manjaro.org [IPv6:2a01:4f8:c0c:51f3::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C006412588
        for <devicetree@vger.kernel.org>; Sat,  4 Mar 2023 09:28:47 -0800 (PST)
From:   Dan Johansen <strit@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
        t=1677950925;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding;
        bh=x87z+vjCvrBlBBbKs7GWBh8GXGMnyIrhP7gvLq53N5c=;
        b=dx/PzP5n1HrHOJJqYqhuWpAzTF4mehyP1CzjU7+1S05mBIs6Q3dw7YLOk6KvLm9WFYI3es
        eU5Mneg8PKsvyKylox8dSspKfG83XR8Xw8gBBM6np6ddLwAgEx7E7wcq4iuA+nPercdpgM
        2C30Y4sUooHYwRqa+lWIZ2WQN/obkpYWdVeZ1QW+CzrA44pEWjZFTz+m0cs6Kxeg4bN73A
        ddEXdjTzKkumgYUy6uEHlmaZRPrvcdPhTo7Z18VfoCTLahbPz1U7TRYVAbG3QOwChgBfzc
        ooOCXH9N8YPFbzXbARNy94t+gmSh5hkeV83Q15y5XpOeEgh7M/YJrrF6rrtawg==
To:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        heiko@sntech.de
Cc:     devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        Dan Johansen <strit@manjaro.org>,
        Dragan Simic <dragan.simic@gmail.com>,
        JR Gonzalez <jrg@scientiam.org>
Subject: [PATCH] arm64: dts: rockchip: Lower SD card speed on Pinebook Pro
Date:   Sat,  4 Mar 2023 18:28:38 +0100
Message-Id: <20230304172838.38059-1-strit@manjaro.org>
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

MicroSD card slot in the Pinebook Pro is located on a separate
daughterboard that's connected to the mainboard using a rather
long flat cable.  The resulting signal degradation causes many
perfectly fine microSD cards not to work in the Pinebook Pro,
which is a common source of frustration among the owners.

Changing the mode and lowering the speed reportedly fixes this
issue and makes many microSD cards work as expected.

Co-authored-by: Dragan Simic <dragan.simic@gmail.com>
Tested-by: JR Gonzalez <jrg@scientiam.org>
Signed-off-by: Dan Johansen <strit@manjaro.org>
---
 arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
index 194e48c755f6..54bb0398128f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
@@ -943,7 +943,7 @@ &sdmmc {
 	disable-wp;
 	pinctrl-names = "default";
 	pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_bus4>;
-	sd-uhs-sdr104;
+	sd-uhs-sdr50;
 	vmmc-supply = <&vcc3v0_sd>;
 	vqmmc-supply = <&vcc_sdio>;
 	status = "okay";
-- 
2.39.2

