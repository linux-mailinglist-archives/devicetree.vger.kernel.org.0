Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 828996AAF2D
	for <lists+devicetree@lfdr.de>; Sun,  5 Mar 2023 11:50:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229455AbjCEKuM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 5 Mar 2023 05:50:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51234 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229539AbjCEKuL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 5 Mar 2023 05:50:11 -0500
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7F7F093F0
        for <devicetree@vger.kernel.org>; Sun,  5 Mar 2023 02:50:05 -0800 (PST)
From:   Dan Johansen <strit@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
        t=1678013403;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding;
        bh=5DJskEL05NR4ieEa7hFABiq66V9dMrQQrA+FqflsJs0=;
        b=qZGBzKPimGcXv9WtygwRAhOLG019nAdipIx6VwEmKjRjWkjd0qvKgbOqJN95URybAdsoh9
        gEcIjw08S3lZBEGSfmax9yBm/CcWmOZHksHwpfjh/YkaKQx+d90FI/jiHpJOZtBYrP5sJI
        2Q0h3eZGr2jNfp8vAZ9HWtjwMTPrpR/NKqoaX4/jUmzDD+7ycc8UItHEKDbpBnW+w0sYyY
        LKMIr7bghQjB9OrO80jHVzmEkpeMBNu5AS4QoNLpIzCw/Xh3+ux06uigHsOrqiU9rSlNZQ
        O/PnUGESHuig5sD3BBJMqNWADnIhIHStjzd1YA+Xukkgnsd1ej88BZ9nwbXXFA==
To:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        heiko@sntech.de
Cc:     devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        Dan Johansen <strit@manjaro.org>,
        Dragan Simic <dragan.simic@gmail.com>,
        JR Gonzalez <jrg@scientiam.org>
Subject: [PATCH v2] arm64: dts: rockchip: Lower SD card speed on 
Date:   Sun,  5 Mar 2023 11:47:31 +0100
Message-Id: <20230305104730.15849-1-strit@manjaro.org>
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

Co-developed-by: Dragan Simic <dragan.simic@gmail.com>
Signed-off-by: Dragan Simic <dragan.simic@gmail.com>
Tested-by: JR Gonzalez <jrg@scientiam.org>
Signed-off-by: Dan Johansen <strit@manjaro.org>
---
Changes since v1:
  Use correct Co-developed-by and add missing Signed-off-by.

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

