Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D41B36AAB2E
	for <lists+devicetree@lfdr.de>; Sat,  4 Mar 2023 17:42:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229566AbjCDQmB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 4 Mar 2023 11:42:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38374 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229506AbjCDQmA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 4 Mar 2023 11:42:00 -0500
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7C4271D933
        for <devicetree@vger.kernel.org>; Sat,  4 Mar 2023 08:41:54 -0800 (PST)
From:   Dan Johansen <strit@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
        t=1677948112;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding;
        bh=nCt+QIc9MNau1NmsRIbyQqcwYHXUBS41L6l58VlrIDs=;
        b=bpBy4XfR864bE3MoO9fXYFb7HlHi5lySc/furIKmIEWMZyQGUoNP7CFzeNptUe9WmI4jtY
        5fQCa9/ewcfdXR5iW7PBQJ/YpbtsK8MzuAWHhb5OnuJqf9xV46IQWsjxqiR/1IbliRH9uA
        DK3aS0L1fqRmistzy/kVEanob7UHkbGDb8IQ/TLknWUTxnMvyYSC14IBKGlPkrQENAsrlr
        PZFLYT0V7NS67HWiCDjtB4s9O46lcoUrp/PL2WkKc6FV0rVB9koH5WsC9n+v81b7/nl+aF
        dE2bzSMu52EmUUD/LZ59t4Ci4z8sd8q6s18AP3UbXUJIU1vppscZ41JnrG3t9w==
To:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        heiko@sntech.de
Cc:     devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        Dan Johansen <strit@manjaro.org>
Subject: [PATCH] arm64: dts: rockchip: Lower sd speed on soquartz
Date:   Sat,  4 Mar 2023 17:41:35 +0100
Message-Id: <20230304164135.28430-1-strit@manjaro.org>
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

Just like the Quartz64 Model B the previously stated speed of sdr-104
in soquartz is too high for the hardware to reliably communicate with
some fast SD cards.
Especially on some carrierboards.

Lower this to sd-uhs-sdr50 to fix this.

Fixes: 5859b5a9c3ac ("arm64: dts: rockchip: add SoQuartz CM4IO dts")

Signed-off-by: Dan Johansen <strit@manjaro.org>
---
 arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
index ce7165d7f1a1..102e448bc026 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
@@ -598,7 +598,7 @@ &sdmmc1 {
 	non-removable;
 	pinctrl-names = "default";
 	pinctrl-0 = <&sdmmc1_bus4 &sdmmc1_cmd &sdmmc1_clk>;
-	sd-uhs-sdr104;
+	sd-uhs-sdr50;
 	vmmc-supply = <&vcc3v3_sys>;
 	vqmmc-supply = <&vcc_1v8>;
 	status = "okay";
-- 
2.39.2

