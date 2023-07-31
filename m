Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AAF5F76A207
	for <lists+devicetree@lfdr.de>; Mon, 31 Jul 2023 22:36:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230103AbjGaUg2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jul 2023 16:36:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55448 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230190AbjGaUg1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jul 2023 16:36:27 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 47F941BD3
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 13:36:24 -0700 (PDT)
Received: from fabio-Precision-3551.. (unknown [IPv6:2804:14c:485:4b61:fb3f:fd5:45fe:5e7a])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: festevam@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 413F4868F1;
        Mon, 31 Jul 2023 22:36:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1690835781;
        bh=ScbSiDCyVusg2CAWcManmJOXUSd8wOFhA8yhiRuk+f0=;
        h=From:To:Cc:Subject:Date:From;
        b=lETGGMlJpNyPH+yYo9asAYGkzrnzsYBGtIg7viZyZ4foyfTpgEhqirudELDM9bivj
         isiAUF1D3kJDVLYrJIahf6HzMK+UJpwm1C8EX0J+IJLEFrTBhyekitEhUbX11zE2NK
         LS5m0JIFB36ZYwEN1nZQRoY+rqFGQfC2wkTwqghzZO+CmCQF53uL283X5EO7UjE0cq
         orp9WneyCX+X+dxE18TmMdUywgi6teWk85yuKCtoYjXcksozbrYyAaE9OdEIIQSYsT
         nuoUSbdHLAsD3fnDw/fPrDPcqZU7B3IZrdwKvf9BLPj16X7WlrMw3Ruqe2jPn7qnh7
         T3+fgzSkYSrWg==
From:   Fabio Estevam <festevam@denx.de>
To:     shawnguo@kernel.org
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, Fabio Estevam <festevam@denx.de>
Subject: [PATCH] ARM: dts: imx6q-prti6q: Fix the SDIO wifi node
Date:   Mon, 31 Jul 2023 17:36:10 -0300
Message-Id: <20230731203610.1600482-1-festevam@denx.de>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

#address-cells, #size-cells and unit address are missing for the WL1271
Wifi chip description, which causes the following schema warning:

imx6q-prti6q.dtb: mmc@2194000: Unevaluated properties are not allowed ('wifi' was unexpected)

Pass the missing items to fix it.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm/boot/dts/nxp/imx/imx6q-prti6q.dts | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6q-prti6q.dts b/arch/arm/boot/dts/nxp/imx/imx6q-prti6q.dts
index d8fa83effd63..3508a2cd928a 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6q-prti6q.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx6q-prti6q.dts
@@ -359,8 +359,11 @@ &usdhc2 {
 	keep-power-in-suspend;
 	status = "okay";
 
-	wifi {
+	#address-cells = <1>;
+	#size-cells = <0>;
+	wifi@2 {
 		compatible = "ti,wl1271";
+		reg = <2>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_wifi>;
 		interrupts-extended = <&gpio1 30 IRQ_TYPE_LEVEL_HIGH>;
-- 
2.34.1

