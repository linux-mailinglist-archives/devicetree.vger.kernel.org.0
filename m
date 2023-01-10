Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 53D55664F3C
	for <lists+devicetree@lfdr.de>; Tue, 10 Jan 2023 23:59:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233452AbjAJW6C (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Jan 2023 17:58:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32934 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234505AbjAJW5d (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Jan 2023 17:57:33 -0500
Received: from xtrwkkxd.outbound-mail.sendgrid.net (xtrwkkxd.outbound-mail.sendgrid.net [167.89.17.173])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1F5507653
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 14:57:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
        h=from:subject:in-reply-to:references:mime-version:to:cc:
        content-transfer-encoding:content-type:cc:content-type:from:subject:to;
        s=s1; bh=iu9XeEHXs85wlWI08zrM0heL4rRQNr148D7eobXqpVM=;
        b=JeTLAGCio3p04KCfTFic9sY6ZRzSgfXUaXVuRqvp0yjrWGWiw335WBWqdZUfCDxpAqRS
        bdADo1gQ73+wl00ukc4phuI76MuLwKTWaPL9/I2sVLCSK7fLFsIWKMmvzhfPuPSsgRAqOK
        uOZdgQcCKQ/H+ENK0y/acbZiRUi+faqK7z/gN8Y152Bv/j/KDH+9nTaCkEnXqjinEQlWaO
        Km/9ZivgpCa0tjqVxi1uy2HggPvh5yqmM4CRxkENpOk0D2oTvqKTo6wVSyod8IF/wvRj9C
        mWSD8juLBI8YbfU5euy2jpLHY0qaQKmmpHpZGJ10bcclmhQ2xSoUIuRiveFs8Xzw==
Received: by filterdrecv-69c5db5cf4-xtwpv with SMTP id filterdrecv-69c5db5cf4-xtwpv-1-63BDECFE-2D
        2023-01-10 22:55:58.84405825 +0000 UTC m=+3665522.168729091
Received: from bionic.localdomain (unknown)
        by geopod-ismtpd-6-0 (SG)
        with ESMTP
        id Mr120nyQRqec91sAAXlt_g
        Tue, 10 Jan 2023 22:55:50.525 +0000 (UTC)
From:   Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH 2/2] arm64: dts: rockchip: fix hdmi cec on rock-3a
Date:   Tue, 10 Jan 2023 22:55:59 +0000 (UTC)
Message-Id: <20230110225547.1563119-3-jonas@kwiboo.se>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230110225547.1563119-1-jonas@kwiboo.se>
References: <20230110225547.1563119-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-SG-EID: =?us-ascii?Q?TdbjyGynYnRZWhH+7lKUQJL+ZxmxpowvO2O9SQF5CwCVrYgcwUXgU5DKUU3QxA?=
 =?us-ascii?Q?fZekEeQsTe+RrMu3cja6a0h+QgBffmXDJfQEHAq?=
 =?us-ascii?Q?s25=2Fe17FJ3dKFHD6gTSEYSLMW01yEpPM+m=2FOyv5?=
 =?us-ascii?Q?C1+Y3KIlUfqNYvjwqYjVLxEzgDfHKDpSL2CnCes?=
 =?us-ascii?Q?WAylhCHwfRm0YBA6v728w8vKQGEZKfaFtnFsnWr?=
 =?us-ascii?Q?go2kV23dRdIv3UmYOgx1ube3ILpt3sj8SYPB24?=
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

HDMI CEC is configured to select HDMITX_CEC_M0 function of GPIO0_C7 by
default in rk356x.dtsi. On Radxa ROCK 3 Model A it is routed to
HDMITX_CEC_M1 according to board schematic [1].

Fix HDMI CEC by overriding pinctrl in hdmi node to select HDMITX_CEC_M1.

[1] https://dl.radxa.com/rock3/docs/hw/3a/ROCK-3A-V1.3-SCH.pdf

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
index a1c5fdf7d68f..c9cded3d2f1b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
@@ -279,6 +279,7 @@ &gpu {
 &hdmi {
 	avdd-0v9-supply = <&vdda0v9_image>;
 	avdd-1v8-supply = <&vcca1v8_image>;
+	pinctrl-0 = <&hdmitx_scl &hdmitx_sda &hdmitxm1_cec>;
 	status = "okay";
 };
 
-- 
2.39.0

