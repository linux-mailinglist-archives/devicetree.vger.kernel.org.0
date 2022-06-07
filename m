Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 68489542455
	for <lists+devicetree@lfdr.de>; Wed,  8 Jun 2022 08:52:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242832AbiFHAr4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Jun 2022 20:47:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59090 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1455452AbiFGXSl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Jun 2022 19:18:41 -0400
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com [IPv6:2607:f8b0:4864:20::102e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CC3FC21C613
        for <devicetree@vger.kernel.org>; Tue,  7 Jun 2022 14:15:48 -0700 (PDT)
Received: by mail-pj1-x102e.google.com with SMTP id e9so6210112pju.5
        for <devicetree@vger.kernel.org>; Tue, 07 Jun 2022 14:15:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=jT8DLfbyhUAC8YupnNkx7/WPeiPnBTRo6q4n9p3S9IY=;
        b=VlUgXcU9owX1EBIje6hBA2fwQ9kjFpI9bPxIwfz3BBF+P0QwC14EOuzXoFF8wDys4m
         LvFexAAmIgm9t44ySB3iZn4tl5NRcrd+xFuGu0qVyxf3w/br+VLAlQmjgGoWKBREO2gT
         mBi4xnNl9LeVoaIH1Mm5CLnk7Jt6LFoQ9GNFo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=jT8DLfbyhUAC8YupnNkx7/WPeiPnBTRo6q4n9p3S9IY=;
        b=wUBsYYVDNjLHquwI9DC+YnENoeBqS08DvTmW+oBdYZ5tffWdQSV6+mz020punJKR8Z
         Fk4qXDQhifTsKHxtD0qo3fgCQyFqgKHaXYbrCSo6la5HoTVl2jtgimEwgCI0sBWdN9oe
         Jl8X5TSIPZFgqGktYBiwrRt9vjw9Pkb6N0SVHlj71Ibhh6Ms9X0IRHWm0UChBwZx01G4
         OvP1X1Xx1O1dvobG8BFy7xpjMxYFe0/1jJIN3CXRfwsD/+Ke3GNQCYk0kKrug+i/An8S
         SK4jwnXT3yWQNii2J2/uvrS5oXtkviqxIqMjsubrtmVjnJ1DR6Zo7Iuig7DJGqQK0LWf
         21rA==
X-Gm-Message-State: AOAM531LkTSuSd7RR96Hd2zF4rKE/mkTD7YuwUvQxL/Wvj45wa6O1Xkc
        IxnzcybFA6bdrcpvKy0y4rHOSg==
X-Google-Smtp-Source: ABdhPJxhFzWqzH75FBiSKGcGqopAKv26dB/QVu2+AEpLNrGFVc0gxO7a4bpodDrd1FVbJmDNPWR2Tg==
X-Received: by 2002:a17:903:110e:b0:167:8847:5d9d with SMTP id n14-20020a170903110e00b0016788475d9dmr8945619plh.3.1654636548284;
        Tue, 07 Jun 2022 14:15:48 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:b689:cc5b:e6ad:930e])
        by smtp.gmail.com with UTF8SMTPSA id g7-20020a636b07000000b003fd3a3db089sm8589907pgc.11.2022.06.07.14.15.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Jun 2022 14:15:47 -0700 (PDT)
From:   Brian Norris <briannorris@chromium.org>
To:     Heiko Stuebner <heiko@sntech.de>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org,
        Hans Verkuil <hverkuil-cisco@xs4all.nl>,
        Nicolas Dufresne <nicolas.dufresne@collabora.com>,
        Sebastian Fricke <sebastian.fricke@collabora.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
        Brian Norris <briannorris@chromium.org>, stable@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: Assign RK3399 VDU clock rate
Date:   Tue,  7 Jun 2022 14:15:36 -0700
Message-Id: <20220607141535.1.Idafe043ffc94756a69426ec68872db0645c5d6e2@changeid>
X-Mailer: git-send-email 2.36.1.255.ge46751e96f-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Before commit 9998943f6dfc ("media: rkvdec: Stop overclocking the
decoder"), the rkvdec driver was forcing the VDU clock rate. After that
commit, we rely on the default clock rate. That rate works OK on many
boards, with the default PLL settings (CPLL is 800MHz, VDU dividers
leave it at 400MHz); but some boards change PLL settings.

Assign the expected default clock rate explicitly, so that the rate is
consistent, regardless of PLL configuration.

This was particularly broken on RK3399 Gru Scarlet systems, where the
rk3399-gru-scarlet.dtsi assigns PLL_CPLL to 1.6 GHz, and so the VDU
clock ends up at 800 MHz (twice the expected rate), and causes video
artifacts and other issues.

Note: I assign the clock rate in the clock controller instead of the
vdec node, because there are multiple nodes that use this clock, and per
the clock.yaml specification:

  Configuring a clock's parent and rate through the device node that
  consumes the clock can be done only for clocks that have a single
  user. Specifying conflicting parent or rate configuration in multiple
  consumer nodes for a shared clock is forbidden.

  Configuration of common clocks, which affect multiple consumer devices
  can be similarly specified in the clock provider node.

Fixes: 9998943f6dfc ("media: rkvdec: Stop overclocking the decoder")
Cc: <stable@vger.kernel.org>
Signed-off-by: Brian Norris <briannorris@chromium.org>
---
This is a candidate for 5.19 IMO, since commit 9998943f6dfc landed in
5.19-rc1 and is being queued up for -stable as we speak.

 arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi | 4 +++-
 arch/arm64/boot/dts/rockchip/rk3399.dtsi             | 6 ++++--
 2 files changed, 7 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi
index 913d845eb51a..1977103a5ef4 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi
@@ -376,7 +376,8 @@ &cru {
 		<&cru ACLK_VIO>,
 		<&cru ACLK_GIC_PRE>,
 		<&cru PCLK_DDR>,
-		<&cru ACLK_HDCP>;
+		<&cru ACLK_HDCP>,
+		<&cru ACLK_VDU>;
 	assigned-clock-rates =
 		<600000000>, <1600000000>,
 		<1000000000>,
@@ -388,6 +389,7 @@ &cru {
 		<400000000>,
 		<200000000>,
 		<200000000>,
+		<400000000>,
 		<400000000>;
 };
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index fbd0346624e6..9d5b0e8c9cca 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -1462,7 +1462,8 @@ cru: clock-controller@ff760000 {
 			<&cru HCLK_PERILP1>, <&cru PCLK_PERILP1>,
 			<&cru ACLK_VIO>, <&cru ACLK_HDCP>,
 			<&cru ACLK_GIC_PRE>,
-			<&cru PCLK_DDR>;
+			<&cru PCLK_DDR>,
+			<&cru ACLK_VDU>;
 		assigned-clock-rates =
 			 <594000000>,  <800000000>,
 			<1000000000>,
@@ -1473,7 +1474,8 @@ cru: clock-controller@ff760000 {
 			 <100000000>,   <50000000>,
 			 <400000000>, <400000000>,
 			 <200000000>,
-			 <200000000>;
+			 <200000000>,
+			 <400000000>;
 	};
 
 	grf: syscon@ff770000 {
-- 
2.36.1.255.ge46751e96f-goog

