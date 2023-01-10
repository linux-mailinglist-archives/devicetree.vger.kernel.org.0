Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AAB60664F3D
	for <lists+devicetree@lfdr.de>; Tue, 10 Jan 2023 23:59:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233103AbjAJW6D (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Jan 2023 17:58:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32904 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234473AbjAJW5b (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Jan 2023 17:57:31 -0500
X-Greylist: delayed 99 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Tue, 10 Jan 2023 14:57:29 PST
Received: from xtrwkvxq.outbound-mail.sendgrid.net (xtrwkvxq.outbound-mail.sendgrid.net [167.89.24.164])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 762E7FD1
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 14:57:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
        h=from:subject:in-reply-to:references:mime-version:to:cc:
        content-transfer-encoding:content-type:cc:content-type:from:subject:to;
        s=s1; bh=nL5XyQsYGoRBUTGQZVcx0re09e/L9yxuOq9liZaew+4=;
        b=hZ9HMTVO2DRCW1EkWFn1bp5LOWCWqrmygRtKr0bIlgFCkSSDp0ivD7h1LiBHpzL0mhyI
        xq1OprKFj+f6WKnhRbJ2eDNwRWOTKJ8FJMnpeSQQuRuC1bT2FYoQalBxhSPTbV5HoH6/7e
        m4YCEiG84FDCXlSzdTn8t1/HmQtC0BQG0P10QWwegsvEqe1pVoJ5Rq6v4YlT3cKpzyFIBc
        1++PanXXyyAe3+7Rc8P84A1rvnFkXygOBfmB0/5bmMl7GTicOQsrBB/47hvXVYsEPDO02c
        1qZ8IZ/kybr7hFWGns5GiIjmUw36XGrV6NCI+zxZDd1D9rdAPExaDjRJGEsjf0XQ==
Received: by filterdrecv-69c5db5cf4-rhmnr with SMTP id filterdrecv-69c5db5cf4-rhmnr-1-63BDECF6-10
        2023-01-10 22:55:50.420439465 +0000 UTC m=+908337.208210986
Received: from bionic.localdomain (unknown)
        by geopod-ismtpd-6-0 (SG)
        with ESMTP
        id 1VaIgpvDSGSndX56pXOKVg
        Tue, 10 Jan 2023 22:55:50.229 +0000 (UTC)
From:   Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH 1/2] arm64: dts: rockchip: assign rate to clk_rtc_32k on
 rk356x
Date:   Tue, 10 Jan 2023 22:55:50 +0000 (UTC)
Message-Id: <20230110225547.1563119-2-jonas@kwiboo.se>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230110225547.1563119-1-jonas@kwiboo.se>
References: <20230110225547.1563119-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-SG-EID: =?us-ascii?Q?TdbjyGynYnRZWhH+7lKUQJL+ZxmxpowvO2O9SQF5CwCVrYgcwUXgU5DKUU3QxA?=
 =?us-ascii?Q?fZekEeQsTe+RrMu3cja6a0h7VQTI+bPssuBeGGi?=
 =?us-ascii?Q?uNeJ01fKv0v28c8muMmlezyo+tQ8xf=2FS2DIK4=2Fm?=
 =?us-ascii?Q?Wzj2PEofWLDopIfah=2FAj9kGt2VqzGgGWQKHIXqx?=
 =?us-ascii?Q?EZwyz4bAsVPVOn7o4cbcidosIc8F1PkW4wd0cN2?=
 =?us-ascii?Q?fbQqXWDi+5FgKA1s4QzCBoyRjOkOzHR6P3NKAq?=
To:     Heiko Stuebner <heiko@sntech.de>,
        linux-rockchip@lists.infradead.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Chukun Pan <amadeus@jmu.edu.cn>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Jonas Karlman <jonas@kwiboo.se>
X-Entity-ID: P7KYpSJvGCELWjBME/J5tg==
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset=us-ascii
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

clk_rtc_32k and its child clock clk_hdmi_cec detauls to a rate of 24 MHz
and not to 32 kHz on RK356x.

Fix this by assigning clk_rtc_32k a rate of 32768, also assign the parent
to clk_rtc32k_frac.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index 5706c3e24f0a..e319699f5e39 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -422,8 +422,9 @@ cru: clock-controller@fdd20000 {
 		clock-names = "xin24m";
 		#clock-cells = <1>;
 		#reset-cells = <1>;
-		assigned-clocks = <&cru PLL_GPLL>, <&pmucru PLL_PPLL>;
-		assigned-clock-rates = <1200000000>, <200000000>;
+		assigned-clocks = <&pmucru CLK_RTC_32K>, <&cru PLL_GPLL>, <&pmucru PLL_PPLL>;
+		assigned-clock-rates = <32768>, <1200000000>, <200000000>;
+		assigned-clock-parents = <&pmucru CLK_RTC32K_FRAC>;
 		rockchip,grf = <&grf>;
 	};
 
-- 
2.39.0

